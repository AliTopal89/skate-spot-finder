// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
// $(document).ready(function(){
// 	var map = L.map('map').setView([38.9040, -77.065], 13);
// 	L.tileLayer( 'http://{s}.mqcdn.com/tiles/1.0.0/map/{z}/{x}/{y}.png', {
//     	attribution: '&copy; <a href="http://osm.org/copyright" title="OpenStreetMap" target="_blank">OpenStreetMap</a> contributors | Tiles Courtesy of <a href="http://www.mapquest.com/" title="MapQuest" target="_blank">MapQuest</a> <img src="http://developer.mapquest.com/content/osm/mq_logo.png" width="16" height="16">',
//     	subdomains: ['otile1','otile2','otile3','otile4']
// 	}).addTo( map );
// 	var marker = L.marker([38.9040, -77.065]).addTo(map);

//	map.addControl( new L.Control.Search({layer: searchLayer}) );
    // since layers load asynchronously through AJAX, use the
    // `.on` function to listen for them to be loaded before
    // calling `getTileJSON()`
    // .on('ready', function() {
    //     // get TileJSON data from the loaded layer
    //     var TileJSON = layer.getTileJSON();
    // });
// })
window.onload = function () {
		var map = L.map('map').setView([38.90, -77.03], 12);
 	
		L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
			attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
		}).addTo(map);

		var countryStyle = {
			'color': "#000",
			'weight': 2,
			'opacity': 0.6
		};
	
		function popup(feature, layer) {
			if (feature.properties && feature.properties.name) {
				layer.bindPopup(feature.properties.name);
			}
		}
		var marker = L.marker([38.90, -77.03]).addTo(map);


	};

