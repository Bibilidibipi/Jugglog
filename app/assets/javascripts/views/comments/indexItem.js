Jugglog.Views.CommentIndexItem = Backbone.View.extend({
  template: JST['comments/indexItem'],
  tagName: 'li',

  events: {
    'click .delete': 'destroyComment'
  },

  render: function () {
    this.$el.html(this.template({ comment: this.model }));

    return this;
  },

  destroyComment: function (event) {
    this.model.destroy();
  }
});
