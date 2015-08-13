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


$(document).ready(function(){
  $('.nav li').on('click', function(){
    $(".navbar-toggle").click() //bootstrap 3.x by Richard
});
  console.log("foo")
  var weatherUndergroundUrl = "https://api.wunderground.com/api/a006be1136f587ee/conditions/q/DC/Washington.json"
  $.ajax({
    url: weatherUndergroundUrl,
    type: "GET",
    dataType: "json"
  }).done(function(response){
    // console.log(response.current_observation.temp_f) // for testing 
    // console.log(response.current_observation.temp_c) // for testing 
    $("#temperature_c").append("   " + response.current_observation.temp_c + " Celsius")

    $("#temperature_f").append("   " + response.current_observation.temp_f + " Fahreneit")
	})
});
 