/* global LeafletWidget, L */

LeafletWidget.methods.addCanvasMarkers = function(lat, lng) {
  (
    function() {
      L.CanvasIconLayer(
        [lat, lng]
      ).addTo(this);
    }
  ).call(this);
};
