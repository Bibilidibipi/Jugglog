Jugglog.Views.PatternIndexItem = Backbone.View.extend({
  template: JST['patterns/indexItem'],
  tagName: 'li',

  events: {
    'click .pattern-show': 'patternShow'
  },

  render: function () {
    this.$el.html(this.template({ pattern: this.model }));
    return this;
  },

  patternShow: function (event) {
    event.preventDefault();
    Backbone.history.navigate('/pattern/' + this.model.id, { trigger: true });
  }
});
