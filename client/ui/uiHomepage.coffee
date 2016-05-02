Template.uiHomepage.helpers
	'homepage_header': ->
		TextDB.findOne(html_tag: "homepage_header").text_content

	'event_date': ->
		TextDB.findOne(html_tag: "event_date").text_content