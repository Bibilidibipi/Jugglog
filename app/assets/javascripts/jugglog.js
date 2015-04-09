window.Jugglog = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var $rootEl = $('div#main');
    if(currentUserId !== -1) {
      var users = new Jugglog.Collections.Users();
      Jugglog.currentUser = new Jugglog.Models.CurrentUser({ id: currentUserId });
      users.fetch();
      Jugglog.currentUser.fetch();
      new Jugglog.Routers.Router({ $rootEl: $rootEl, users: users });
      Backbone.history.start();
    }
  }
};

$(document).ready(function(){
  Jugglog.initialize();
});
