import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import "../plugins/flatpickr";
import "../plugins/init_autocomplete"
import "../plugins/option_picker"
import Swal from 'sweetalert2';

const new_employee = document.querySelector("#new-employee");
if (new_employee) {
 apply.addEventListener("click", (event) => {
   Swal.fire({
     type: 'success',
     title: '<span style="color:#FFFFFF; text-shadow: 1.5px 1.5px #ff487e"> CONGRATS!<span>',
     width: 600,
     html: '<span style="color:#FFFFFF">Your application has been sent!<span>',
     background: '#1800FF',
     showConfirmButton: false,
     timer: 2200
   });
 });
}

initMapbox();

