Jugglog.Views.UserIndexItem = Backbone.View.extend({
  template: JST['users/indexItem'],

  render: function () {
    this.$el.html(this.template({ user: this.model }));
    return this;
  }
});
