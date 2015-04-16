Jugglog.Routers.SidebarBottomRouter = Backbone.Router.extend({
  routes: {
    // '': 'redirect',
    // 'activity': 'activity',
    // 'patterns/:numJugglers': 'patternsIndex',
    // 'pattern/:id': 'patternShow',
    // 'users': 'usersIndex',
    // 'users/:id': 'userShow',
    // 'followees': 'followees',
    // 'followers': 'followers'
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
  }
});
