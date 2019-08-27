import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import "../plugins/flatpickr";
import "../plugins/init_autocomplete";
import "../plugins/option_picker";
import { initSelect2 } from "../plugins/init_select2";

initMapbox();
initSelect2();

