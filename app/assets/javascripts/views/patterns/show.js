Jugglog.Views.PatternShow = Backbone.CompositeView.extend({
  template: JST['patterns/show'],

  events: {
    'click .pattern-tree': 'treeShow'
  },

  initialize: function () {
    $('.active').removeClass('active');
    $('.patterns').addClass('active');
    this.model.parents().each(this.addParentSubview.bind(this));
    this.model.children().each(this.addChildSubview.bind(this));
    this.listenTo(this.model, 'sync', this.render);
    this.listenTo(this.model.parents(), 'add', this.addParentSubview);
    this.listenTo(this.model.children(), 'add', this.addChildSubview);
  },

  render: function () {
    this.$el.html(this.template({ pattern: this.model }));
    this.attachSubviews('.parents');
    this.attachSubviews('.children');
    return this;
  },

  addParentSubview: function (parent) {
    var view = new Jugglog.Views.PatternIndexItem({ model: parent });
    this.addSubview('.parents', view);
  },

  addChildSubview: function (child) {
    var view = new Jugglog.Views.PatternIndexItem({ model: child });
    this.addSubview('.children', view);
  },

  treeShow: function (event) {
    var numJugglers = this.model.get('num_jugglers');
    // var view = new Jugglog.Views.PatternsIndex();
    // view.showPatternsFromNum(numJugglers);
    Backbone.history.navigate('patterns', { trigger: true });
  }
});
