const addressInput = document.getElementById('autocomplete');
if (addressInput) {
  const places = require('places.js');
  places({ container: addressInput });
};
