Template.uiHeader.helpers
	'header_text': ->
		TextDB.findOne(html_tag: "subtitle").text_content