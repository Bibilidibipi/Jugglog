Jugglog.Views.UserIndexItem = Backbone.View.extend({
  className: 'user-list-item',
  template: JST['users/indexItem'],

  events: {
    'click .username': 'showUser'
  },

  render: function () {
    this.$el.html(this.template({ user: this.model }));
    return this;
  },

  showUser: function (event) {
    event.preventDefault();
    Backbone.history.navigate('/users/' + this.model.id, { trigger: true });
  }
});
