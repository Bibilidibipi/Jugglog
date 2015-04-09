Jugglog.Models.CurrentUser = Jugglog.Models.User.extend({
  parse: function (payload) {
    if(payload.followees) {
      this.followees().set(payload.followees, { parse: true });
      delete payload.followees;
    }
    if(payload.isFollowerFollowings) {
      this.isFollowerFollowings().set(payload.isFollowerFollowings);
      delete payload.isFollowerFollowings;
    }

    return payload;
  },

  followees: function () {
    this._followees = this._followees || new Jugglog.Collections.Users();
    return this._followees;
  },

  isFollowerFollowings: function () {
    this._isFollowerFollowings = this._isFollowerFollowings || new Jugglog.Collections.Followings();
    return this._isFollowerFollowings;
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
      that.isFollowerFollowings().add(following);
      that.followees().add(otherUser);
    }});
  },

  unfollow: function (otherUser) {
    var that = this;
    var following = this.isFollowerFollowings().findWhere({ followee_id: otherUser.id });
    following.destroy({ success: function (following) {
      that.isFollowerFollowings().remove(following);
      that.followees().remove(otherUser);
    }});
  }
});
