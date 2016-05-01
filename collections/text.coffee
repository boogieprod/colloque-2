@TextDB = new TAPi18n.Collection 'textDB'

TextDBSchema =

	name:
		type: String

	text_content:
		type: String

	"i18n.fr.text_content":
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

TextDB.attachSchema TextDBSchema