Template.missionVid.onRendered ->
	console.log "template ready"
	yt = new YTPlayer("ytplayer", {rel: 0, playsinline: 1})
	Tracker.autorun ->
		yt_id = Video.findOne().vid_id
		if yt.ready() 
			yt.player.loadVideoById yt_id
			return

Template.ourMission.helpers 
	
	'mission_dialog1': ->
		TextDB.findOne(html_tag: "mission_dialog1").text_content

	'mission_dialog2': ->
		TextDB.findOne(html_tag: "mission_dialog2").text_content