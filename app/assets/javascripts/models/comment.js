Jugglog.Models.Comment = Backbone.Model.extend({
  urlRoot: '/api/comments',

  author: function () {
    this._author = this._author || new Jugglog.Models.User({ id: this.get('author_id') });
    return this._author;
  }
});
