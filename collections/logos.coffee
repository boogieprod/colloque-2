@Logos = new TAPi18n.Collection 'logos'

LogosSchema =

	name:
		type: String

	url:
		type: String

	tooltip:
		type: String

	"i18n.fr.tooltip":
		type: String

	logo:
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

Logos.attachSchema LogosSchema