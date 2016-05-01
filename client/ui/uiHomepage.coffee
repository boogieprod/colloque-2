Template.uiHomepage.helpers
	'homepage_header': ->
		TextDB.findOne(name: "homepage_header").text_content

	'event_date': ->
		TextDB.findOne(name: "event_date").text_content