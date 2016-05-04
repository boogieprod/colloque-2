@TextDB = new TAPi18n.Collection 'textDB'

TextDBSchema =

	html_tag:
		type: String

	category:
		type: String

	name:
		type: String

	text_content:
		type: String
		optional: true

	"i18n.fr.text_content":
		type: String
		optional: true

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