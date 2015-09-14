Template.calendar.helpers

  firstdayevents: ->
    Events.find({day: "1"}, {sort: {id: 1}})
