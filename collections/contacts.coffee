@Contacts = new TAPi18n.Collection 'contacts'

ContactsSchema =

	category:
		type: String

	name:
		type: String

	role:
		type: String

	email:
		type: SimpleSchema.RegEx.Email

	phone:
		type: String

	"i18n.fr.role":
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

Contacts.attachSchema ContactsSchema