import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import "../plugins/flatpickr"

initMapbox();

$(document).ready(function(){
  $(".team-name").click(function (){
    $(this).toggleClass("active");
    });
});

