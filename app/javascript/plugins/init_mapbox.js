  import mapboxgl from 'mapbox-gl';
  import 'mapbox-gl/dist/mapbox-gl.css';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 1000 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '75px';
      element.style.height = '75px';
      new mapboxgl.Marker(element)
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);
    });
    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };

// const fitMapToMarkers2 = (maps, markers) => {
//   const bounds = new mapboxgl.LngLatBounds();
//   markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
//   maps.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 1000 });
// };

// const initMapbox2 = () => {
//   const mapsElement = document.getElementById('maps');

//   if (mapsElement) { // only build a map if there's a div#map to inject into
//     mapboxgl.accessToken = mapsElement.dataset.mapboxApiKey;
//     const maps = new mapboxgl.Map({
//       container: 'maps',
//       style: 'mapbox://styles/mapbox/streets-v10'
//     });

//     const markers = JSON.parse(mapsElement.dataset.markers);
//     markers.forEach((marker) => {
//       const element = document.createElement('div');
//       element.className = 'marker';
//       element.style.backgroundImage = `url('${marker.image_url}')`;
//       element.style.backgroundSize = 'contain';
//       element.style.width = '75px';
//       element.style.height = '75px';
//       new mapboxgl.Marker(element)
//         .setLngLat([ marker.lng, marker.lat ])
//         .addTo(maps);
//     });
//     fitMapToMarkers2(maps, markers);
//   }
// };

// export { initMapbox2 };
