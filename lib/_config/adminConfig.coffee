@AdminConfig =
	name: Config.name
	collections :
	##	Posts: {
	##		color: 'red'
	##		icon: 'pencil'
	##		auxCollections: ['Attachments']
	##		tableColumns: [
    ##          {label: 'Title',name:'title'}
    ##          {label:'User',name:'owner',collection:'Users'}
    ##        ]
	##	}
	##	Comments: {
	##		color: 'red'
	##		icon: 'comments'
	##		auxCollections: ['Posts']
	##		tableColumns: [
      ##        {label: 'Content';name:'content'}
    ##          {label:'Post';name:'doc',collection: 'Posts',collection_property:'title'}
    ##          {label:'User',name:'owner',collection:'Users'}
    ##        ]
	##	}
		Events: {
			color: 'green'
			icon: 'check-square-o'
			tableColumns: [
				{label: "Order", name: 'id'}
				{label: "Day", name: "day"}
				{label: "Name", name: 'name'}
				{label: "Time", name: 'time'}
				{label: "Speaker", name: "speaker"}
				{label: "Last Update", name: 'updatedAt'}
			]
		}
		Contacts: {
			color: 'green'
			icon: 'users'
			tableColumns: [
				{label: "Category", name: "category"}
				{label: "Name", name: "name"}
				{label: "Last Update", name: "updatedAt"}
			]
		}
		Video: {
			color: 'green'
			icon: 'video-camera'
			tableColumns: [
				{label: "Name", name: "name"}
				{label: "Video ID", name: "vid_id"}
			]
		}
		TextDB: {
			color: 'green'
			icon: 'file-text-o'
			tableColumns: [
				{label: "Tag Location", name: 'category'}
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
