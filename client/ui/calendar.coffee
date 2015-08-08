Template.calendar.helpers

  firstdayevents: ->
    Events.find({day: "1"}, {sort: {id: 1}})

  seconddayevents: ->
    Events.find({day: "2"}, {sort: {id: 1}})
