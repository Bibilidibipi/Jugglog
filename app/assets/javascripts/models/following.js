Jugglog.Models.Following = Backbone.Model.extend({
  url: '/api/followings',

  initialize: function (options) {
    this.follower_id = options.follower_id;
    this.followee_id = options.followee_id;
  }
});
