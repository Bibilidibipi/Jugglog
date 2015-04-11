Jugglog.Routers.Router = Backbone.Router.extend({
  routes: {
    '': 'redirect',
    'activity': 'activity',
    'patterns': 'patternsIndex',
    'patterns/:id': 'patternShow',
    'users': 'usersIndex',
    'users/:id': 'userShow',
    'profile': 'profile'
  },

  initialize: function (options) {
    this.$rootEl = options.$rootEl;
    this.users = options.users;
    this.patterns = options.patterns;
  },

  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  },

  patternsIndex: function () {
    var view = new Jugglog.Views.PatternsIndex({ collection: this.patterns });
    this._swapView(view);
  },

  patternShow: function (id) {
    var pattern = this.patterns.getOrFetch(id);
    var view = new Jugglog.Views.PatternShow({ model: pattern });
    this._swapView(view);
  },

  usersIndex: function () {
    var view = new Jugglog.Views.UsersIndex({ collection: this.users });
    this._swapView(view);
  },

  userShow: function (id) {
    var user = this.users.getOrFetch(id);
    var view = new Jugglog.Views.UserShow({ model: user });
    this._swapView(view);
  },

  redirect: function () {
    Backbone.history.navigate('patterns', { trigger: true });
  },

  profile: function () {
    Jugglog.currentUser;
  },

  activity: function () {
    Backbone.history.navigate('users', { trigger: true });
  },

});
