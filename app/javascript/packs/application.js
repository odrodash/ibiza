import "bootstrap";
import "../plugins/flatpickr"
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initSearch } from "../plugins/init_search";
import { initAutocomplete } from "../plugins/init_autocomplete";
import { initMapbox } from "../plugins/init_mapbox";

initSearch();
initAutocomplete();
initMapbox();

