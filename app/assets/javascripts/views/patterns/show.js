Jugglog.Views.PatternShow = Backbone.CompositeView.extend({
  template: JST['patterns/show'],

  events: {
    'click .pattern-tree': 'treeShow',
    'click .post-comment': 'postComment',
    'click .switch-learned': 'switchLearned',
    'click .log-practice.enabled': 'findLearningAndLogPractice',

    'transitionend .log-practice': 'removeTransitionText'
  },

  initialize: function () {
    $('.active').removeClass('active');
    $('.patterns').addClass('active');

    this.model.parents().each(this.addParentSubview.bind(this));
    this.model.children().each(this.addChildSubview.bind(this));
    this.model.comments().each(this.addCommentIndexItem.bind(this));

    this.listenTo(this.model.parents(), 'add', this.addParentSubview);
    this.listenTo(this.model.children(), 'add', this.addChildSubview);
    this.listenTo(this.model.comments(), 'add', this.addCommentIndexItem);

    this.listenTo(this.model.comments(), 'destroy', this.removeCommentIndexItem);

    this.listenTo(this.model, 'sync', this.render);
  },

  render: function () {
    this.$el.html(this.template({ pattern: this.model }));
    this.attachSubviews();
    document.getElementById('o-loader').style.display = 'none';

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

  addCommentIndexItem: function (comment) {
    var indexItemView = new Jugglog.Views.CommentIndexItem({ model: comment });
    this.addSubview('.comments', indexItemView);
  },

  removeCommentIndexItem: function (comment) {
    _(this.subviews('.comments')).each(function (subview) {
      if(subview.model == comment) {
        this.removeSubview('.comments', subview);
      }
    }.bind(this));
  },

  postComment: function (event) {
    var that = this;
    event.preventDefault();
    var content = $(event.currentTarget).parent().serializeJSON();
    var comment = new Jugglog.Models.Comment(content.comment);
    comment.save({ commentable_id: this.model.id, commentable_type: 'Pattern' }, { success: function () {
      that.model.comments().add(comment);
      Backbone.history.navigate('#/pattern/' + that.model.id, { trigger: true });
    }});
  },

  treeShow: function (event) {
    var numJugglers = this.model.get('num_jugglers');
    Backbone.history.navigate('patterns/' + numJugglers, { trigger: true });
  },

  switchLearned: function (event) {
    if(this.model.get('learned') === true) {
      this.unlearn(this.model);
    } else {
      this.learn(this.model);
    }
  },

  unlearn: function (pattern) {
    var learning = Jugglog.currentUser.learnings().findWhere({ pattern_id: pattern.id, user_id: Jugglog.currentUser.id });
    learning.save({ status: 'unlearned' }, { success: function () {
      Jugglog.currentUser.fetch({ success: function () {
        Jugglog.router.patternShow(this.model.id);
      }.bind(this)});
      this.render();
    }.bind(this)})
  },

  learn: function (pattern) {
    var learning = Jugglog.currentUser.learnings().findWhere({
        pattern_id: pattern.id, user_id: Jugglog.currentUser.id
      }) ||
      new Jugglog.Models.Learning({
        pattern_id: this.model.id
      });

    learning.save({ status: 'learned' }, { success: function () {
      Jugglog.currentUser.fetch({ success: function () {
        Jugglog.router.patternShow(this.model.id);
      }.bind(this)});
      this.render();
    }.bind(this)});
  },

  findLearningAndLogPractice: function (event) {
    var learning = Jugglog.currentUser.learnings().findWhere({
      pattern_id: this.model.id, user_id: Jugglog.currentUser.id
    })
    if(learning) {
      this.logPractice(learning);
    } else {
      learning = new Jugglog.Models.Learning({
        user_id: Jugglog.currentUser.id, pattern_id: this.model.id
      });
      learning.save({ status: 'unlearned' }, { success: function () {
        this.logPractice(learning);
      }.bind(this)})
    }
  },

  logPractice: function (learning) {
    var practice = new Jugglog.Models.Practice({ learning_id: learning.id });
    practice.save({}, { success: function () {
      this.model.set({ practiced: true });
      $('.log-practice').removeClass('enabled');
      $('.buttons').addClass('logged-transition');
      Jugglog.currentUser.fetch({ success: function () {
        Jugglog.router.sidePatternShow(this.model.id);
      }.bind(this)});
    }.bind(this)});
  },

  removeTransitionText: function (event) {
    setTimeout(function () {
      $('.buttons').removeClass('logged-transition');
    }, 1000)
  }
});
