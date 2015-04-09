Jugglog.Models.Following = Backbone.Model.extend({
  urlRoot: '/api/followings',

  initialize: function (options) {
    this.follower_id = options.follower_id;
    this.followee_id = options.followee_id;
  }
});
