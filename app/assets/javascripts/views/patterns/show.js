Jugglog.Views.PatternShow = Backbone.View.extend({
  template: JST['patterns/show'],

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
  },

  render: function () {
    this.$el.html(this.template({ pattern: this.model }));
    return this;
  }
});
