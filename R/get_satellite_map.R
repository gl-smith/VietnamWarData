#' Fetch a Google satellite basemap for a preset area
#'
#' Convenience wrapper around \code{ggmap::get_map()} that retrieves a Google
#' Maps satellite basemap for one of the preset areas used in Smith (2025). It
#' returns a \pkg{ggmap} raster object suitable as the first layer of a plot via
#' \code{ggmap::ggmap()}.
#'
#' @details
#' This function **downloads imagery from the Google Maps Static API at call
#' time** — it does not ship or cache any Google imagery with the package.
#' Google's Maps Platform Terms do not permit redistributing their map imagery,
#' so you must supply your own (free) API key first:
#'
#' \preformatted{
#'   ggmap::register_google(key = "YOUR_GOOGLE_MAPS_API_KEY")
#'   m <- get_satellite_map("hue")
#'   ggmap::ggmap(m)
#' }
#'
#' The preset areas reproduce the basemaps used in the package's mapping
#' articles: \code{"se_asia"} (mainland Southeast Asia), \code{"saigon"}, and
#' \code{"hue"}.
#'
#' @param area Which basemap to fetch. One of \code{"se_asia"}, \code{"saigon"},
#'   or \code{"hue"}.
#'
#' @return A \code{ggmap}/\code{raster} object.
#'
#' @note Requires the \pkg{ggmap} package and a registered Google Maps API key.
#'   If you use these basemaps, please cite ggmap: Kahle, D. and Wickham, H.
#'   (2013). "ggmap: Spatial Visualization with ggplot2." \emph{The R Journal},
#'   5(1), 144--161. Map imagery \eqn{\copyright} Google.
#'
#' @seealso \code{\link{get_comb_inc_dta}}, \code{\link{get_province_boundaries}}
#' @export
#'
#' @examples
#' \dontrun{
#'   ggmap::register_google(key = "YOUR_GOOGLE_MAPS_API_KEY")
#'   ggmap::ggmap(get_satellite_map("se_asia"))
#' }
get_satellite_map <- function(area = c("se_asia", "saigon", "hue")) {
  area <- match.arg(area)
  if (!requireNamespace("ggmap", quietly = TRUE)) {
    stop("Package 'ggmap' is required. Install it with install.packages('ggmap').",
         call. = FALSE)
  }
  switch(
    area,
    se_asia = ggmap::get_map(
      location = c(left = 100, bottom = 4.5, right = 112, top = 25),
      maptype = "satellite", color = "bw", extent = "device"
    ),
    saigon = ggmap::get_map(
      location = c(lon = 106.6297, lat = 10.8231),
      zoom = 11, maptype = "satellite", color = "bw"
    ),
    hue = ggmap::get_map(
      location = c(lon = 107.590866, lat = 16.463713),
      zoom = 12, maptype = "satellite", color = "bw"
    )
  )
}
