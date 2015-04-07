Jugglog.Views.UsersIndex = Backbone.CompositeView.extend({
  template: JST['users/index'],

  initialize: function (options) {
    this.listenTo(this.collection, 'sync', this.render);
  },

  render: function () {
    var that = this;
    this.$el.html(this.template());

    this.subviews('.users').forEach(function (subview) {
      subview.remove();
    })
    this.collection.each(function (user) {
      var indexItemView = new Jugglog.Views.UserIndexItem({ model: user });
      that.addSubview('.users', indexItemView);
    })

    return this;
  }
});
