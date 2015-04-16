Jugglog.Views.LearnedPatterns = Backbone.CompositeView.extend({
  template: JST['patterns/learned'],
  className: 'show-learned-patterns',

  initialize: function (options) {
    this.listenTo(this.model, 'sync', this.render);

    this.model.learnedPatterns().each(this.addLearnedPatternIndexItem.bind(this));
    this.listenTo(this.model.learnedPatterns(), 'add', this.addLearnedPatternIndexItem);
  },

  render: function () {
    this.$el.html(this.template({ user: this.model }));
    this.attachSubviews();

    return this;
  },

  addLearnedPatternIndexItem: function (pattern) {
    var indexItemView = new Jugglog.Views.PatternIndexItem({ model: pattern });
    this.addSubview('.learned-patterns', indexItemView);
  },
});
