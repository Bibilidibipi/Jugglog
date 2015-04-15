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
    if(payload.learnedPatterns) {
      this.learnedPatterns().set(payload.learnedPatterns);
      delete payload.learnedPatterns;
    }
    if(payload.practicedPatterns) {
      this.practicedPatterns().set(payload.practicedPatterns);
      delete payload.practicedPatterns;
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

  learnedPatterns: function () {
    this._learnedPatterns = this._learnedPatterns || new Jugglog.Collections.Patterns();
    return this._learnedPatterns;
  },

  practicedPatterns: function () {
    this._practicedPatterns = this._practicedPatterns || new Jugglog.Collections.Patterns();
    return this._practicedPatterns;
  }
});
