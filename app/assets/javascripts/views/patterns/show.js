Jugglog.Views.PatternShow = Backbone.View.extend({
  template: JST['patterns/show'],

  render: function () {
    this.$el.html(this.template({ pattern: this.model }));
    return this;
  }
});
