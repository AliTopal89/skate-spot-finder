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

