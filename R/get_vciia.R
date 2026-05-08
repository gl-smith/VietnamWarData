#' Download the VCIIA Viet Cong incident dataset
#'
#' Downloads and caches the Viet Cong Incident in Area (VCIIA) dataset covering
#' enemy-initiated incidents in South Vietnam from 1965 to 1968.
#'
#' Each row is a discrete enemy incident. Key variables include
#' \code{sitrep_number}, \code{quarter_of_year}, \code{province_code},
#' \code{vc_military_region}, \code{corp_zone_division}, and
#' \code{utm_coordinates}.
#'
#' VCIIA is one of the source files combined in \code{\link{get_ground_combat}}.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @return A data frame with 29 variables. Row count varies by version.
#' @export
#'
#' @examples
#' \dontrun{
#'   vciia <- get_vciia()
#'   head(vciia)
#' }
get_vciia <- function(cache = TRUE, force = FALSE) {
  download_vw_file("vietwar_vciia.rds", cache = cache, force = force)
}
