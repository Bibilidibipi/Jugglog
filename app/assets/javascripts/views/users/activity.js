Jugglog.Views.UserActivity = Backbone.View.extend({
  template: JST['users/activity'],

  intialize: function () {
    $('.active').removeClass('active');
    $('.activity').addClass('active');
  },

  render: function () {
    this.$el.html(this.template({ user: this.model }));
    return this;
  }
});
