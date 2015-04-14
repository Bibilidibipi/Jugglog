Jugglog.Views.CommentIndexItem = Backbone.View.extend({
  template: JST['comments/indexItem'],
  tagName: 'li',
  className: 'comment-list-item',

  events: {
    'click .delete': 'destroyComment'
  },

  initialize: function () {
    this.model.author().fetch();
    this.listenTo(this.model.author(), 'sync', this.render);
  },

  render: function () {
    this.$el.html(this.template({ comment: this.model }));

    return this;
  },

  destroyComment: function (event) {
    this.model.destroy();
  }
});
