Jugglog.Routers.Router = Backbone.Router.extend({
  routes: {
    '': 'usersIndex',
    'users/:id': 'userShow'
  },

  initialize: function (options) {
    this.$rootEl = options.$rootEl;
    this.users = options.users;
  },

  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  },

  usersIndex: function () {
    var view = new Jugglog.Views.UsersIndex({ collection: this.users });
    this._swapView(view);
  },

  userShow: function (id) {
    var user = this.users.getOrFetch(id);
    var view = new Jugglog.Views.UserShow({ model: user });
    this._swapView(view);
  }
});
