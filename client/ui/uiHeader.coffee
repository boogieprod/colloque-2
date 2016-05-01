Template.uiHeader.helpers
	'header_text': ->
		TextDB.findOne(name: "header_text").text_content