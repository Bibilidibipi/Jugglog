Jugglog.Collections.Users = Backbone.Collection.extend({
  url: '/users',
  model: Jugglog.Models.User,

  initialize: function (users, options) {

  },

  getOrFetch: function (id) {
    var that = this;
    var user = this.get(id);

    if(user === undefined) {
      user = new Jugglog.Models.User({ id: id });
      user.fetch({ success: function () {
        that.add(user);
      }})
    } else {
      user.fetch();
    }

    return user;
  }
});
