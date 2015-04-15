Jugglog.Views.CommentIndexItem = Backbone.View.extend({
  template: JST['comments/indexItem'],
  tagName: 'li',
  className: 'comment-list-item',

  events: {
    'click .delete': 'destroyComment',
    'click .author-avatar': 'authorShow',
    'click .author': 'authorShow'
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
  },

  authorShow: function (event) {
    Backbone.history.navigate('users/' + this.model.get('author_id'), { trigger: true });
  }
});
