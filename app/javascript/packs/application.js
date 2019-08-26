import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import "../plugins/flatpickr";
import "../plugins/init_autocomplete"
import "../plugins/option_picker"
import Swal from 'sweetalert2';

const new_employee = document.querySelector(".new-employee");
if (new_employee) {
 new_employee.addEventListener("click", (event) => {
   Swal.fire({
     type: 'success',
     title: '<span style="color:#1fe3cf"> NEW EMPLOYEE ADDED!<span>',
     width: 600,
     html: '<span style="color: white">The onboarding email has been sent<span>',
     background: '#4f81c7',
     confirmButtonText:'Go to my dashboard'
     }).then(function() {
        window.location.href = "/hr_managers/users";
        console.log('The Ok Button was clicked.');
        });
 });
}


initMapbox();
