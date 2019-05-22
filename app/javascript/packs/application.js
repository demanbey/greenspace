import "bootstrap";
import { initMapbox } from "../plugins/init_mapbox";
import 'mapbox-gl/dist/mapbox-gl.css';
// import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

initMapbox();

const clicked = document.querySelector("#participate-btn")
if (clicked !== null) {
  clicked.addEventListener("click", (event) => {
    clicked.innerHTML = "Booked!"
  })
}
