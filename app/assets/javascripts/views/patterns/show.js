Jugglog.Views.PatternShow = Backbone.CompositeView.extend({
  template: JST['patterns/show'],

  events: {
    'click .pattern-tree': 'treeShow',
    'click .post-comment': 'postComment'
  },

  initialize: function () {
    $('.active').removeClass('active');
    $('.patterns').addClass('active');

    this.model.parents().each(this.addParentSubview.bind(this));
    this.model.children().each(this.addChildSubview.bind(this));
    this.model.comments().each(this.addCommentIndexItem.bind(this));

    this.listenTo(this.model.parents(), 'add', this.addParentSubview);
    this.listenTo(this.model.children(), 'add', this.addChildSubview);
    this.listenTo(this.model.comments(), 'add', this.addCommentIndexItem);

    this.listenTo(this.model.comments(), 'destroy', this.removeCommentIndexItem);

    this.listenTo(this.model, 'sync', this.render);
  },

  render: function () {
    this.$el.html(this.template({ pattern: this.model }));
    this.attachSubviews();
    // this.attachSubviews('.children');
    return this;
  },

  addParentSubview: function (parent) {
    var view = new Jugglog.Views.PatternIndexItem({ model: parent });
    this.addSubview('.parents', view);
  },

  addChildSubview: function (child) {
    var view = new Jugglog.Views.PatternIndexItem({ model: child });
    this.addSubview('.children', view);
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

  postComment: function (event) {
    var that = this;
    event.preventDefault();
    var content = $(event.currentTarget).parent().serializeJSON();
    var comment = new Jugglog.Models.Comment(content.comment);
    comment.save({ commentable_id: this.model.id, commentable_type: 'Pattern' }, { success: function () {
      that.model.comments().add(comment);
      Backbone.history.navigate('#/pattern/' + that.model.id, { trigger: true });
    }});
  },

  treeShow: function (event) {
    var numJugglers = this.model.get('num_jugglers');
    Backbone.history.navigate('patterns/' + numJugglers, { trigger: true });
  }
});
