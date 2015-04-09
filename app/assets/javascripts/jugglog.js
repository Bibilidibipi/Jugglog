window.Jugglog = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var $rootEl = $('div#main');
    if(currentUserId !== -1) {
      var patterns = new Jugglog.Collections.Patterns();
      patterns.fetch();
      var users = new Jugglog.Collections.Users();
      users.fetch();
      Jugglog.currentUser = new Jugglog.Models.CurrentUser({ id: currentUserId });
      Jugglog.currentUser.fetch();
      new Jugglog.Routers.Router({
        $rootEl: $rootEl,
        users: users,
        patterns: patterns
      });
      Backbone.history.start();
    }
  }
};

$(document).ready(function(){
  Jugglog.initialize();
});
