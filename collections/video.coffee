@Video = new Meteor.Collection 'video'

VideoSchema =

	vid_id:
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

Video.attachSchema VideoSchema