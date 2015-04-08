Jugglog.Views.UsersIndex = Backbone.CompositeView.extend({
  template: JST['users/index'],

  events: {
    'input .search': 'handleInput'
  },

  initialize: function (options) {
    this.listenTo(this.collection, 'sync', this.render);
  },

  render: function (users) {
    if(users === undefined) { users = this.collection };
    var that = this;
    this.$el.html() || this.$el.html(this.template());

    this.subviews('.users').forEach(function (subview) {
      subview.remove();
    })
    users.each(function (user) {
      var indexItemView = new Jugglog.Views.UserIndexItem({ model: user });
      that.addSubview('.users', indexItemView);
    })

    return this;
  },

  handleInput: function (event) {
    var that = this;
    var string = $(event.currentTarget).val();

    if(string === '') {
      this.render(this.collection);
    } else {
      $.ajax({
        url: '/users/search',
        dataType: 'json',
        method: 'GET',
        data: { query: string },
        success: function(users) {
          var foundUsers = new Jugglog.Collections.Users(users);
          that.render(foundUsers);
        }
      });
    }
  }
});
