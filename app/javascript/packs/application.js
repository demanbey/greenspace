import "bootstrap";
import { initMapbox } from "../plugins/init_mapbox";
import 'mapbox-gl/dist/mapbox-gl.css';
// import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

initMapbox();

// const clicked = document.querySelector("#participate-btn")
// if (clicked !== null) {
//   clicked.addEventListener("click", (event) => {
//     clicked.innerHTML = "Booked!"
//   })
// }


// Wrap every letter in a span
$('.ml12').each(function(){
  $(this).html($(this).text().replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>"));
});

anime.timeline({loop: true})
  .add({
    targets: '.ml12 .letter',
    translateX: [40,0],
    translateZ: 0,
    opacity: [0,1],
    easing: "easeOutExpo",
    duration: 1200,
    delay: function(el, i) {
      return 500 + 30 * i;
    }
  }).add({
    targets: '.ml12 .letter',
    translateX: [0,-30],
    opacity: [1,0],
    easing: "easeInExpo",
    duration: 1100,
    delay: function(el, i) {
      return 100 + 30 * i;
    }
  });

// const clicked = document.querySelector("#participate-btn")
// if (clicked !== null) {
//   clicked.addEventListener("click", (event) => {
//     clicked.innerHTML = "Booked!"
//   })
// }
