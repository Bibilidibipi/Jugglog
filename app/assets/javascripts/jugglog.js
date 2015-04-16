window.Jugglog = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var $rootEl = $('div#all');
    if(currentUserId !== -1) {
      $('body').css('background-image', "url('assets/main_page_background.png')");
      var patterns = new Jugglog.Collections.Patterns();
      patterns.fetch();
      var users = Jugglog.users = new Jugglog.Collections.Users();
      users.fetch();
      Jugglog.currentUser = new Jugglog.Models.CurrentUser({ id: currentUserId });
      Jugglog.currentUser.fetch();
      new Jugglog.Routers.MainRouter({
        $rootEl: $main,
        users: users,
        patterns: patterns
      });
      new Jugglog.Routers.SidebarTopRouter({
        $rootEl: $sidebarTop,
        users: users,
        patterns: patterns
      });
      new Jugglog.Routers.SidebarBottomRouter({
        $rootEl: $sidebarBottom,
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
