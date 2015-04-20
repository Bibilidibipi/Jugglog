Jugglog.Views.UserActivity = Backbone.View.extend({
  template: JST['users/activity'],

  initialize: function () {
    $('.active').removeClass('active');
    $('.activity').addClass('active');
    this.model.fetch();
    this.listenTo(this.model, 'sync', this.render);
  },

  render: function () {
    this.$el.html(this.template({ user: this.model }));
    this.calculateHistory();
    document.getElementById('o-loader').style.display='none';

    return this;
  },

  calculateHistory: function () {
    for(var i = 0; i < 7; i++) {
      var numPractices = _.filter(this.model.practices().models, function (practice) {
        var time = practice.get('created_at');
        return moment(time).isBetween(
          moment().subtract(i, 'days').startOf('day'),
          moment().subtract(i - 1, 'days').startOf('day')
        );
      }).length;
      for(var j = 0; j < numPractices; j++) {
        $('.' + i + '-ago .practice-blocks').prepend('<div>');
      }

      var numLearnings = _.filter(this.model.learnings().models, function (learning) {
        var time = learning.get('updated_at');
        if(learning.get('status') == 'unlearned') { return false };
        return moment(time).isBetween(
          moment().subtract(i, 'days').startOf('day'),
          moment().subtract(i - 1, 'days').startOf('day')
        );
      }).length;
      for(var j = 0; j < numLearnings; j++) {
        $('.' + i + '-ago .learning-blocks').prepend('<div>');
      }

      if(numLearnings < numPractices) {
        $('.' + i + '-ago .learning-blocks').addClass('lesser');
      } else {
        $('.' + i + '-ago .practice-blocks').addClass('lesser');
      }
    }
  }
});
