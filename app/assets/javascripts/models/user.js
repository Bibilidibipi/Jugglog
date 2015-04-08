Jugglog.Models.User = Backbone.Model.extend({
  urlRoot: '/users',

  initialize: function (options) {
    this.username = options.username;
  },

  parse: function (payload) {
    if(payload.followers) {
      this.followers().set(payload.followers, { parse: true });
      delete payload.followers;
    }
    if(payload.followees) {
      this.followees().set(payload.followees, { parse: true });
      delete payload.followees;
    }

    return payload;
  },

  followers: function () {
    this._followers = this._followers || new Jugglog.Collections.Users([], { followee: this });
    return this._followers;
  },

  followees: function () {
    this._followees = this._followees || new Jugglog.Collections.Users([], { follower: this });
    return this._followees;
  },

  isFollowing: function (otherUser) {
    return !!(this.followees().get(otherUser.id));
  },

  follow: function (otherUser) {
    var that = this;
    var following = new Jugglog.Models.Following({
      followee_id: otherUser.id,
      follower_id: this.id
    });
    following.save({}, { success: function () {
      that.followees().add(otherUser);
      otherUser.followers().add(that);
    }});
  },

  unfollow: function (otherUser) {
    var that = this;
    var following = new Jugglog.Models.Following({
      followee_id: otherUser.id,
      follower_id: this.id
    });
    following.destroy({success: function () {
      that.followees().remove(otherUser);
      otherUser.followers().remove(that);
    }});
  }
});
