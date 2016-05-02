@Events = new TAPi18n.Collection 'events'

EventsSchema =

  id:
    type: Number

  name:
    type: String

  "i18n.fr.name":
    type: String

  time:
    type: String

  speaker:
    type: String
    optional: true

  "i18n.fr.speaker":
    type: String
    optional: true

  day:
    type: String

  createdAt:
    type: Date
    autoValue: ->
      if this.isInsert
        new Date()

  updatedAt:
    type: Date
    optional: true
    autoValue: ->
      if this.isUpdate
        new Date()

Events.attachSchema EventsSchema
