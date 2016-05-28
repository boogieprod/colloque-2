@Video = new TAPi18n.Collection 'video'

VideoSchema =

	name:
		type: String

	vid_id:
		type: String

	"i18n.fr.vid_id":
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