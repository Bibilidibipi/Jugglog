Jugglog.Routers.Router = Backbone.Router.extend({
  routes: {
    '': 'redirect',
    'activity': 'activity',
    'patterns/:numJugglers': 'patternsIndex',
    'pattern/:id': 'patternShow',
    'users': 'usersIndex',
    'users/:id': 'userShow',
    'followees': 'followees',
    'followers': 'followers'
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
    this.$main.html(view.render().$el);
  },

  _swapSidebarTopView: function (view) {
    this._currentSidebarTopView && this._currentSidebarTopView.remove();
    this._currentSidebarTopView = view;
    this.$sidebarTop.html(view.render().$el);
  },

  _swapSidebrBottomView: function (view) {
    this._currentSidebarBottomView && this._currentSidebarBottomView.remove();
    this._currentSidebarBottomView = view;
    this.$sidebarBottom.html(view.render().$el);
  },

  patternsIndex: function (numJugglers) {
    var mainView = new Jugglog.Views.PatternsIndex({ collection: this.patterns, numJugglers: numJugglers });
    this._swapMainView(mainView);
  },

  patternShow: function (id) {
    var pattern = this.patterns.getOrFetch(id);
    var mainView = new Jugglog.Views.PatternShow({ model: pattern });
    this._swapMainView(mainView);
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
    var sidebarTopView = new Jugglog.Views.LearnedPatterns({ model: user });

    this._swapMainView(mainView);
    this._swapSidebarTopView(sidebarTopView);
  },

  redirect: function () {
    Backbone.history.navigate('patterns/1', { trigger: true });
  },

  activity: function () {
    var mainView = new Jugglog.Views.UserActivity({ model: Jugglog.currentUser });
    this._swapMainView(mainView);
  }
});
