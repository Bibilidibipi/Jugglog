Jugglog.Views.Info = Backbone.View.extend({
  template: JST['info'],

  initialize: function () {
    $('.active').removeClass('active');
    $('.info').addClass('active');
  },

  render: function () {
    this.$el.html(this.template);
    document.getElementById('o-loader').style.display = 'none';

    return this;
  }
});
