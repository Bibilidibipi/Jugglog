Jugglog.Views.PatternsIndex = Backbone.View.extend({
  template: JST['patterns/index'],

  initialize: function () {
    this.listenTo(this.collection, 'sync', this.render);
  },

  render: function () {
    this.$el.html(this.template({ patterns: this.collection }));
    return this;
  }
});
