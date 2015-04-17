Jugglog.Models.User = Backbone.Model.extend({
  urlRoot: '/users',

  parse: function (payload) {
    if(payload.comments) {
      this.comments().set(payload.comments);
      delete payload.comments;
    }
    if(payload.practices) {
      this.practices().set(payload.practices);
      delete payload.practices;
    }
    if(payload.recentlyLearnedPatterns) {
      this.recentlyLearnedPatterns().set(payload.recentlyLearnedPatterns);
      delete payload.recentlyLearnedPatterns;
    }
    if(payload.recentlyPracticedPatterns) {
      this.recentlyPracticedPatterns().set(payload.recentlyPracticedPatterns);
      delete payload.recentlyPracticedPatterns;
    }

    return payload;
  },

  comments: function () {
    this._comments = this._comments || new Jugglog.Collections.Comments();
    return this._comments;
  },

  practices: function () {
    this._practices = this._practices || new Jugglog.Collections.Practices();
    return this._practices;
  },

  recentlyLearnedPatterns: function () {
    this._recentlyLearnedPatterns = this._recentlyLearnedPatterns || new Jugglog.Collections.Patterns();
    return this._recentlyLearnedPatterns;
  },

  recentlyPracticedPatterns: function () {
    this._recentlyPracticedPatterns = this._recentlyPracticedPatterns || new Jugglog.Collections.Patterns();
    return this._recentlyPracticedPatterns;
  }
});
