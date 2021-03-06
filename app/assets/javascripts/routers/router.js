Jugglog.Routers.Router = Backbone.Router.extend({
  routes: {
    '': 'redirect',
    'activity': 'activity',
    'patterns/:numJugglers': 'patternsIndex',
    'pattern/:id': 'patternShow',
    'users': 'usersIndex',
    'users/:id': 'userShow',
    'followees': 'followees',
    'followers': 'followers',
    'info': 'info'
  },

  initialize: function (options) {
    this.$main = options.$main;
    this.$sidebarTop = options.$sidebarTop;
    this.$sidebarBottom = options.$sidebarBottom;

    this.users = options.users;
    this.patterns = options.patterns;
  },

  _swapMainView: function (view) {
    this._currentMainView && this._currentMainView.remove();
    this._currentMainView = view;
    this.$main.html(view.$el);
    view.render();
  },

  _swapSidebarTopView: function (view) {
    this._currentSidebarTopView && this._currentSidebarTopView.remove();
    this._currentSidebarTopView = view;
    this.$sidebarTop.html(view.$el);
    view.render();
  },

  _swapSidebarBottomView: function (view) {
    this._currentSidebarBottomView && this._currentSidebarBottomView.remove();
    this._currentSidebarBottomView = view;
    this.$sidebarBottom.html(view.$el);
    view.render();
  },

  patternsIndex: function (numJugglers) {
    var mainView = new Jugglog.Views.PatternsIndex({ collection: this.patterns, numJugglers: numJugglers });
    var sidebarTopView = new Jugglog.Views.LearnedAndPracticedPatterns({ model: Jugglog.currentUser });

    this._swapMainView(mainView);
    this._swapSidebarTopView(sidebarTopView);
  },

  patternShow: function (id) {
    var pattern = this.patterns.getOrFetch(id);
    var mainView = new Jugglog.Views.PatternShow({ model: pattern });
    var sidebarTopView = new Jugglog.Views.LearnedAndPracticedPatterns({ model: Jugglog.currentUser });

    this._swapMainView(mainView);
    this._swapSidebarTopView(sidebarTopView);
  },

  sidePatternShow: function (id) {
    var pattern = this.patterns.getOrFetch(id);
    var sidebarTopView = new Jugglog.Views.LearnedAndPracticedPatterns({ model: Jugglog.currentUser });
    this._swapSidebarTopView(sidebarTopView);
  },

  usersIndex: function () {
    this.users.fetch();
    var mainView = new Jugglog.Views.UsersIndex({ collection: this.users });
    this._swapMainView(mainView);
  },

  followees: function () {
    var mainView = new Jugglog.Views.UsersIndex({ collection: Jugglog.currentUser.followees() });
    this._swapMainView(mainView);
  },

  followers: function () {
    var mainView = new Jugglog.Views.UsersIndex({ collection: Jugglog.currentUser.followers() });
    this._swapMainView(mainView);
  },

  userShow: function (id) {
    var user = this.users.getOrFetch(id);

    var mainView = new Jugglog.Views.UserShow({ model: user });
    var sidebarTopView = new Jugglog.Views.LearnedAndPracticedPatterns({ model: user });

    this._swapMainView(mainView);
    this._swapSidebarTopView(sidebarTopView);
  },

  redirect: function () {
    Backbone.history.navigate('patterns/1', { trigger: true });
  },

  activity: function () {
    var mainView = new Jugglog.Views.UserActivity({ model: Jugglog.currentUser });
    var sidebarTopView = new Jugglog.Views.LearnedAndPracticedPatterns({ model: Jugglog.currentUser });

    this._swapMainView(mainView);
    this._swapSidebarTopView(sidebarTopView);
  },

  info: function () {
    var mainView = new Jugglog.Views.Info();
    var sidebarTopView = new Jugglog.Views.LearnedAndPracticedPatterns({ model: Jugglog.currentUser });
    
    this._swapMainView(mainView);
    this._swapSidebarTopView(sidebarTopView);
  }
});
