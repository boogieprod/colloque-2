Template.calendar.helpers

  firstdayevents: ->
    Events.find({day: "1"}, {sort: {id: 1}})

  "calendar_title": ->
  	TextDB.findOne(html_tag: "calendar_title").text_content

  "day_1": ->
  	TextDB.findOne(html_tag: "day_1").text_content