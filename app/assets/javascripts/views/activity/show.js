Jugglog.Views.Activity = Backbone.View.extend({
  template: JST['activity/show'],

  render: function () {
    this.$el.html(this.template);
    return this;
  }
});
