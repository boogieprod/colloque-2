Template.calendar.helpers

  firstDayEvents: ->
    Events.find({day: "1"}, {sort:{id: 1}})

  secondDayEvents: ->
    Events.find {day: "2"}, {sort:{id: 1}}
