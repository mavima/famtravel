import "bootstrap";
import { checkboxSelect } from "../functions/category_checkboxes.js"
import "../functions/slideout.js"

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
// import { initMapbox2 } from '../plugins/init_mapbox';

import {jsTabs } from '../functions/js_tabs'

initMapbox();
// initMapbox2();
jsTabs();
checkboxSelect();
