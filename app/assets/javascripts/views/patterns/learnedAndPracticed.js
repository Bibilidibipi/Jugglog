Jugglog.Views.LearnedAndPracticedPatterns = Backbone.CompositeView.extend({
  template: JST['patterns/learnedAndPracticed'],
  className: 'show-patterns',

  initialize: function (options) {
    this.listenTo(this.model, 'sync', this.render);

    this.model.learnedPatterns().each(this.addLearnedPatternIndexItem.bind(this));
    this.listenTo(this.model.learnedPatterns(), 'add', this.addLearnedPatternIndexItem);
    this.model.practicedPatterns().each(this.addPracticedPatternIndexItem.bind(this));
    this.listenTo(this.model.practicedPatterns(), 'add', this.addPracticedPatternIndexItem);
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

  addPracticedPatternIndexItem: function (pattern) {
    var indexItemView = new Jugglog.Views.PatternIndexItem({ model: pattern });
    this.addSubview('.practiced-patterns', indexItemView);
  }
});
