window.Jugglog = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var $rootEl = $('div#main');
    new Jugglog.Routers.Router({ $rootEl: $rootEl });
    Backbone.history.start();
  }
};

$(document).ready(function(){
  Jugglog.initialize();
});
