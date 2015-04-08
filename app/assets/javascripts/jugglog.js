window.Jugglog = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var $rootEl = $('div#main');
    var users = new Jugglog.Collections.Users();
    users.fetch();
    if(currentUserId !== -1) {
      Jugglog.currentUser = new Jugglog.Models.User({ id: currentUserId });
      Jugglog.currentUser.fetch();
    }
    new Jugglog.Routers.Router({ $rootEl: $rootEl, users: users });
    Backbone.history.start();
  }
};

$(document).ready(function(){
  Jugglog.initialize();
});
