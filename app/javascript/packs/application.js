import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

initMapbox();

// import flatpicker from 'flatpicker';
// import 'flatpicker/dist/flatpicker.min.css'
import "../plugins/flatpickr"


import { initStarRating } from '../plugins/init_star_rating';

initStarRating();
