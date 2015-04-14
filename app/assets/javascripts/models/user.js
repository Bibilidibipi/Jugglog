Jugglog.Models.User = Backbone.Model.extend({
  urlRoot: '/users',

  parse: function (payload) {
    if(payload.comments) {
      this.comments().set(payload.comments);
      delete payload.comments;
    }

    return payload;
  },

  comments: function () {
    this._comments = this._comments || new Jugglog.Collections.Comments();
    return this._comments;
  }
});
