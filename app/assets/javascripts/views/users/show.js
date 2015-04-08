Jugglog.Views.UserShow = Backbone.View.extend({
  template: JST['users/show'],

  events: {
    'click .switch-follow': 'switchFollow'
  },

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
    this.listenTo(this.model.followers(), 'add remove', this.render);
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
  }
});
