Router.map ->
  @route "home",
    path: "/home"
    layoutTemplate: "homeLayout"

  @route "dashboard",
    path: "/dashboard"
    waitOn: ->
      [
        subs.subscribe 'posts'
        subs.subscribe 'comments'
        subs.subscribe 'attachments'
      ]
    data: ->
      posts: Posts.find({},{sort: {createdAt: -1}}).fetch()

  @route 'explorerSucks',
    path: "/explorerSucks"
    layoutTemplate: 'explorerLayout'

  @route "uiHomepage",
    path: "/"
    waitOn: ->
      TAPi18n.subscribe 'textDB'

  @route "calendar",
    path: "/calendar"
    waitOn: ->
      TAPi18n.subscribe 'events'
      TAPi18n.subscribe 'textDB'

  @route "ourMission",
    path: "/our-mission"
    waitOn: ->
      TAPi18n.subscribe 'textDB'
      Meteor.subscribe 'video'

  @route "map",
    path: "/how-to-get-there"
    waitOn: ->
      TAPi18n.subscribe 'textDB'
      Meteor.subscribe 'location'

  @route "contactUs",
    path: "/contact-us"
    waitOn: ->
      TAPi18n.subscribe 'textDB'
      TAPi18n.subscribe 'contacts'
