Jugglog.Views.UserShow = Backbone.View.extend({
  template: JST['users/show'],

  events: {
    'click .switch-follow': 'switchFollow',
    'click .all-users': 'usersIndex'
  },

  initialize: function () {
    $('.active').removeClass('active');
    $('.friends').addClass('active');
    this.listenTo(this.model, 'sync', this.render);
    this.listenTo(Jugglog.currentUser.followees(), 'add remove', this.render);
  },

  render: function () {
    this.$el.html(this.template({ user: this.model }));
    return this;
  },

  switchFollow: function (event) {
    if(Jugglog.currentUser.isFollowing(this.model)) {
      Jugglog.currentUser.unfollow(this.model);
    } else {
      Jugglog.currentUser.follow(this.model);
    }
  },

  usersIndex: function (event) {
    Backbone.history.navigate('users', { trigger: true });
  }
});
