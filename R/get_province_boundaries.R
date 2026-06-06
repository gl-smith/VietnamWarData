#' Load 1966 South Vietnam province boundaries
#'
#' Returns an \code{sf} polygon layer of the 45 provinces of South Vietnam as
#' configured in 1966, together with their corps tactical zone. The layer ships
#' with the package (no download required) and is intended for mapping the
#' incident- and hamlet-level datasets, whose \code{prov_name} field uses the
#' same province names.
#'
#' @details
#' The boundaries are stored in WGS 84 (EPSG:4326). The \code{prov_name} column
#' joins directly to the \code{prov_name} variable in
#' \code{\link{get_comb_inc_dta}} and other province-coded datasets; the
#' \code{corp} column gives the corps tactical zone (I, II, III, or IV Corps).
#'
#' @return An \code{sf} data frame with 45 rows and the columns
#'   \code{prov_name}, \code{corp}, and \code{geometry}
#'   (\code{sfc_MULTIPOLYGON} / \code{sfc_POLYGON}).
#'
#' @source Province boundaries digitized for South Vietnam circa 1966, based on
#'   the Empirical Studies of Conflict (ESOC) Southeast Asia province layer.
#'   Distributed with this package in \code{inst/extdata}.
#'
#' @references
#' Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
#' data." \emph{Conflict Management and Peace Science}.
#' \doi{10.1177/07388942251391081}
#'
#' @seealso \code{\link{get_comb_inc_dta}}
#' @export
#'
#' @examples
#' \dontrun{
#'   provinces <- get_province_boundaries()
#'   plot(provinces["corp"])
#' }
get_province_boundaries <- function() {
  path <- system.file(
    "extdata", "south_vietnam_1966_provinces.rds",
    package = "VietnamWarData"
  )
  if (!nzchar(path)) {
    stop(
      "Province boundary file not found. Reinstall VietnamWarData.",
      call. = FALSE
    )
  }
  readRDS(path)
}
