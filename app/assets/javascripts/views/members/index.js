FriendsApp.Views.MembersIndex = Backbone.View.extend({
  events: {
  },

  initialize: function(options) {
    this.members = options.members;
  },

  render: function() {
    var view = this;
    this.$el.html();

    //append each member
    _.each( this.members, function(member) {
      var showView = new FriendsApp.Views.MemberShow({
        model: member
      });
      view.$el.append(showView.render().$el);
    });
    return this;
  }

});

