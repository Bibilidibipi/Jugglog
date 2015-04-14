Jugglog.Views.UserShow = Backbone.CompositeView.extend({
  template: JST['users/show'],

  events: {
    'click .switch-follow': 'switchFollow',
    'click .all-users': 'usersIndex',
    'click .post-comment': 'postComment'
  },

  initialize: function () {
    $('.active').removeClass('active');
    $('.friends').addClass('active');
    this.listenTo(this.model, 'sync', this.render);
    this.listenTo(Jugglog.currentUser.followees(), 'add remove', this.render);

    this.listenTo(this.model.comments(), 'add', this.addCommentIndexItem);
    this.listenTo(this.model.comments(), 'destroy', this.removeCommentIndexItem);
    this.model.comments().each(this.addCommentIndexItem.bind(this));
  },

  render: function () {
    this.$el.html(this.template({ user: this.model }));
    this.attachSubviews();

    return this;
  },

  addCommentIndexItem: function (comment) {
    var indexItemView = new Jugglog.Views.CommentIndexItem({ model: comment });
    this.addSubview('.comments', indexItemView);
  },

  removeCommentIndexItem: function (comment) {
    _(this.subviews('.comments')).each(function (subview) {
      if(subview.model == comment) {
        this.removeSubview('.comments', subview);
      }
    }.bind(this));
  },

  switchFollow: function (event) {
    if(Jugglog.currentUser.isFollowing(this.model)) {
      Jugglog.currentUser.unfollow(this.model);
    } else {
      Jugglog.currentUser.follow(this.model);
    }
  },

  postComment: function (event) {
    var that = this;
    event.preventDefault();
    var content = $(event.currentTarget).parent().serializeJSON();
    var comment = new Jugglog.Models.Comment(content.comment);
    comment.save({ commentable_id: this.model.id, commentable_type: 'User' }, { success: function () {
      that.model.comments().add(comment);
      Backbone.history.navigate('#/users/' + that.model.id, { trigger: true });
    }});
  },

  usersIndex: function (event) {
    Backbone.history.navigate('users', { trigger: true });
  }
});
