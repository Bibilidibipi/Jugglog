Jugglog.Models.User = Backbone.Model.extend({
  urlRoot: 'users',

  initialize: function (options) {
    this.username = options.username;
  }
});
