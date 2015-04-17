Jugglog.Views.UsersIndex = Backbone.CompositeView.extend({
  template: JST['users/index'],

  events: {
    'input .search': 'handleSearchInput',
    'click .see-followees': 'listFollowees',
    'click .see-followers': 'listFollowers'
  },

  initialize: function (options) {
    $('.active').removeClass('active');
    $('.friends').addClass('active');
    this.collection.each(this.addUserIndexItem.bind(this));
    this.listenTo(this.collection, 'add', this.addUserIndexItem);
    this.listenTo(this.collection, 'remove', this.removeUserIndexItem);
  },

  render: function () {
    this.$el.html(this.template());
    this.attachSubviews();
    document.getElementById('o-loader').style.display='none';

    return this;
  },

  addUserIndexItem: function (user) {
    user.fetch();
    var view = new Jugglog.Views.UserIndexItem({ model: user });
    this.addSubview('.users', view);
  },

  removeUserIndexItem: function (user) {
    var that = this;
    _(this.subviews('.users')).each( function (view) {
      if(view.model === user) {
        that.removeSubview('.users', view);
      }
    });
  },

  handleSearchInput: function (event) {
    var that = this;
    var string = $(event.currentTarget).val();

    if(string === '') {
      var allUsers = new Jugglog.Collections.Users();
      allUsers.fetch({ success: function () {
        while(that.subviews('.users').length > 0) {
          that.removeSubview('.users', that.subviews('.users')[0]);
        }
        allUsers.each(that.addUserIndexItem.bind(that));
      }});
    } else {
      $.ajax({
        url: '/users/search',
        dataType: 'json',
        method: 'GET',
        data: { query: string },
        success: function(users) {
          var foundUsers = new Jugglog.Collections.Users(users);
          that.removeSubviews('.users');
          foundUsers.each(that.addUserIndexItem.bind(that));
        }
      });
    }
  },

  listFollowees: function (event) {
    Backbone.history.navigate('followees', { trigger: true });
  },

  listFollowers: function (event) {
    Backbone.history.navigate('followers', { trigger: true });
  }
});
