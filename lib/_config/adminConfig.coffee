@AdminConfig =
	name: Config.name
	collections :
		Posts: {
			color: 'red'
			icon: 'pencil'
			auxCollections: ['Attachments']
			tableColumns: [
              {label: 'Title',name:'title'}
              {label:'User',name:'owner',collection:'Users'}
            ]
		}
		Comments: {
			color: 'green'
			icon: 'comments'
			auxCollections: ['Posts']
			tableColumns: [
              {label: 'Content';name:'content'}
              {label:'Post';name:'doc',collection: 'Posts',collection_property:'title'}
              {label:'User',name:'owner',collection:'Users'}
            ]
		}
		Events: {
			color: 'green'
			icon: 'binoculars'
			tableColumns: [
				{label: "Name", name: 'name'}
				{label: "Time", name: 'time'}
				{label: "Last Update", name: 'updatedAt'}
			]
		}
		TextDB: {
			title: 'Textual content'
			color: 'green'
			icon: 'binoculars'
			tableColumns: [
				{label: "Name", name: 'name'}
				{label: "Content", name: 'text_content'}
				{label: "Last Update", name: 'updatedAt'}
			]
		}

	dashboard:
		homeUrl: '/dashboard'
		# widgets: [
		# 	{
		# 		template: 'adminCollectionWidget'
		# 		data:
		# 			collection: 'Posts'
		# 			class: 'col-lg-3 col-xs-6'
		# 	}
		# 	{
		# 		template: 'adminUserWidget'
		# 		data:
		# 			class: 'col-lg-3 col-xs-6'
		# 	}
		# ]
	autoForm:
	        omitFields: ['createdAt', 'updatedAt']
