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

  @route "calendar",
    path: "/calendar"
    waitOn: ->
      TAPi18n.subscribe 'events'

  @route "ourMission",
    path: "/our-mission"

  @route "map",
    path: "/how-to-get-there"

  @route "contactUs",
    path: "/contact-us"
