# Source: https://github.com/fpirotti/Leaflet.Canvas-Markers
canvasMarkerDependency <- function() {
  list(
    # // "leaflet.BounceMarker": "github:fpirotti/Leaflet.Canvas-Markers#v1.1",
    # bounce bindings
    html_dep_prod("lfx-canvasmarker", "1.1.0", has_binding = TRUE)
  )

}

#' Add Canvas Markers to map
#' @param map map object created by [leaflet::leaflet]
#' @param lat numeric latitude
#' @param lng numeric longitude
#' @param duration integer scalar: The duration of the animation in milliseconds.
#' @param height integer scalar: Height at which the marker is dropped.
#' @md
#' @author Markus Dumke
#' @export
#' @seealso [GitHub: leaflet.bouncemarker](https://github.com/maximeh/leaflet.bouncemarker)
#' @examples
#' leaflet() %>%
#'   addTiles() %>%
#'   addCanvasMarkers(49, 11)
addCanvasMarkers = function(map, lat, lng) {
  map$dependencies <- c(map$dependencies, canvasMarkerDependency())
  invokeMethod(map, getMapData(map), 'addCanvasMarkers', lat, lng)
}
