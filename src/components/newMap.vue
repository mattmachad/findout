<template>
    <div id="map">
      <div id="mapContainer" style="height:600px;width:100%" ref="hereMap"></div>
    </div>
  </template>
  
  <script>
  export default {
    name: "HereMap",
    props: {
      center: Object
    },
    data() {
      return {
        platform: null,
        apikey: "eGEbMqmjPEdw473hAUUXR5t_22Ys36iC6n4NfKGCu8Q"
      };
    },
    async mounted() {
      const platform = new window.H.service.Platform({
        apikey: this.apikey
      });
      this.platform = platform;
      this.initializeHereMap();
    },
    methods: {
        initializeHereMap() { 
  const mapContainer = this.$refs.hereMap;
  const H = window.H;
  const maptypes = this.platform.createDefaultLayers();
  
  const unimarCoordinates = {
    lat: -22.23513460978872,
    lng: -49.96971069370079           
  };

  const map = new H.Map(mapContainer, maptypes.vector.normal.map, {
    zoom: 16,
    center: unimarCoordinates
  });

  const icon = new H.map.Icon('https://cdn-icons-png.flaticon.com/512/5817/5817087.png', {
    size: { w: 50, h: 50 }
  });

  const marker = new H.map.Marker(unimarCoordinates, { icon: icon });
  map.addObject(marker);

  const label = new H.map.DomIcon(`<div style="color: blue;">Unimar</div>`);
  const labelMarker = new H.map.DomMarker(unimarCoordinates, { icon: label });
  map.addObject(labelMarker);

  addEventListener("resize", () => map.getViewPort().resize());

  new H.mapevents.Behavior(new H.mapevents.MapEvents(map));

  H.ui.UI.createDefault(map, maptypes);
}

    }
  };
  </script>
  