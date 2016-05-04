@Location = new Meteor.Collection 'location'

LocationSchema =

	id:
		type: String

	latitude:
		type: String

	longitude:
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

Location.attachSchema LocationSchema
