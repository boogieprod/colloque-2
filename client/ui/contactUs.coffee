Template.contactUs.helpers

	"business_contacts": ->
		Contacts.find(category: "business")

	"student_contacts": ->
		Contacts.find(category: "student")

	"professional_contacts": ->
		Contacts.find(category: "professional")