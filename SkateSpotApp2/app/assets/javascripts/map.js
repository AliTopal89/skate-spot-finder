function initializeMap(){
	console.log("initializeMap")
	var map = new L.map('map').setView([38.90, -77.03], 12);

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
// so i see that you hard coded a marker to your map, any plans to diversify this? how might you implement this, even without knowing other lat longs and only knowing this one? Once you solve this piece of the puzzle, than all you need is a database with lat/longs


}
