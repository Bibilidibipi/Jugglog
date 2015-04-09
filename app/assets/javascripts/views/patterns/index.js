Jugglog.Views.PatternsIndex = Backbone.CompositeView.extend({
  template: JST['patterns/index'],

  events: {
    'click button': 'showPatterns'
  },

  initialize: function (options) {
    // this.listenTo(this.patterns, 'add', this.addPatternIndexItem);
    // this.listenTo(this.patterns, 'remove', this.removePatternIndexItem);
  },

  render: function () {
    this.$el.html(this.template());
    this.setTemplateTiers();
    this.attachSubviews();

    return this;
  },

  setTemplateTiers: function() {
    for(var i = 1; i <= this.highTier; i++) {
      var elString = "<ul class='tier-" + i + "'></ul>"
      this.$el.append(elString);
    };
  },

  addPatternIndexItem: function (pattern) {
    var view = new Jugglog.Views.PatternIndexItem({ model: pattern });
    this.addSubview('.tier-' + pattern.tier, view);
  },

  // removePatternIndexItem: function (pattern) {
  //   var that = this;
  //   this.subviews('.patterns').each(function (view) {
  //     if(view.model === pattern) {
  //       that.removeSubview('.patterns', view);
  //     }
  //   });
  // },

  assignTiers: function () {
    var that = this;
    this.highTier = 0;
    function assignTier(pattern, tier) {
      pattern = that.patterns.get(pattern.id);
      pattern.tier = tier;
      if(tier > that.highTier) { that.highTier = tier; }
      pattern.children().each(function (child) {
        if(child.tier === undefined) {
          assignTier(child, tier + 1);
        }
      });
    }

    this.patterns.each(function (pattern) {
      if(pattern.parents().length === 0) {
        assignTier(pattern, 1);
      }
    });
  },

  showPatterns: function (event) {
    var numJugglers = parseInt($(event.currentTarget).attr('class'));
    this.patterns = new Jugglog.Collections.Patterns(this.collection.where({ num_jugglers: numJugglers }));

    this.assignTiers();
    for(var i = 1; i <= this.highTier; i++) {
      this.removeSubviews('.tier-' + i);
    }
    this.patterns.each(this.addPatternIndexItem.bind(this));
    this.render();
  }
});
