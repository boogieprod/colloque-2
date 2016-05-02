if Meteor.isClient
	Meteor.startup ->
    GoogleMaps.load()
    return

Template.map.helpers
  mapOptions: ->
    if GoogleMaps.loaded()
      return {
        center: new (google.maps.LatLng)((parseFloat(TextDB.findOne(html_tag: "event_lat_long").lat)), (parseFloat(TextDB.findOne(html_tag: "event_lat_long").long)))
        zoom: 15
      }
    return

  "map_title": ->
    TextDB.findOne(html_tag: "map_title").text_content

  "event_location": ->
    TextDB.findOne(html_tag: "event_location").text_content

  "event_address": ->
    TextDB.findOne(html_tag: "event_address").text_content

Template.map.onCreated ->
  GoogleMaps.ready 'map', (map) ->
    marker = new (google.maps.Marker)(position: map.options.center, map: map.instance)
    return
  return
