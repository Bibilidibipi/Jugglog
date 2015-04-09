Jugglog.Models.Pattern = Backbone.Model.extend({
  urlRoot: '/api/patterns',

  parse: function (payload) {
    if(payload.parents) {
      this.parents().set(payload.parents);
      delete payload.parents;
    }
    if(payload.children) {
      this.children().set(payload.children);
      delete payload.children;
    }

    return payload;
  },

  parents: function () {
    this._parents = this._parents || new Jugglog.Collections.Patterns();
    return this._parents;
  },

  children: function () {
    this._children = this._children || new Jugglog.Collections.Patterns();
    return this._children;
  },
});
