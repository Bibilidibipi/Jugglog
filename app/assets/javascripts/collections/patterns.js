Jugglog.Collections.Patterns = Backbone.Collection.extend({
  model: Jugglog.Models.Pattern,
  url: '/api/patterns',

  initialize: function (options) {

  },

  getOrFetch: function (id) {
    var that = this;
    var pattern = this.get(id);

    if(pattern === undefined) {
      pattern = new Jugglog.Models.Pattern({ id: id });
      pattern.fetch({ success: function () {
        that.add(pattern);
      }})
    } else {
      pattern.fetch();
    }

    return pattern;
  }
});
