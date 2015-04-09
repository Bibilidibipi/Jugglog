Jugglog.Views.PatternsIndex = Backbone.CompositeView.extend({
  template: JST['patterns/index'],

  initialize: function () {
    this.collection.each(this.addPatternIndexItem.bind(this));
    this.listenTo(this.collection, 'add', this.addPatternIndexItem);
    this.listenTo(this.collection, 'remove', this.removePatternIndexItem);
  },

  render: function () {
    this.$el.html(this.template());
    this.attachSubviews();

    return this;
  },

  addPatternIndexItem: function (pattern) {
    var view = new Jugglog.Views.PatternIndexItem({ model: pattern });
    this.addSubview('.patterns', view);
  },

  removePatternIndexItem: function (pattern) {
    var that = this;
    this.subviews('.patterns').each(function (view) {
      if(view.model === pattern) {
        that.removeSubview('.patterns', view);
      }
    });
  }
});
