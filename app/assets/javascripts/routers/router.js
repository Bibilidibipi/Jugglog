Jugglog.Routers.Router = Backbone.Router.extend({
  routes: {
    '': 'usersIndex'
  },

  initialize: function (options) {
    this.$rootEl = options.$rootEl;
    this.users = new Jugglog.Collections.Users();
    this.users.fetch();
  },

  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  },

  usersIndex: function () {
    var view = new Jugglog.Views.UsersIndex({ collection: this.users });
    this._swapView(view);
  }
});
