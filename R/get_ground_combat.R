#' Download the combined ground combat incident dataset
#'
#' Downloads and caches the master incident-level dataset that joins the VNDBA,
#' SITRA, TIRSA, and VCIIA source files into a single standardized table
#' covering ground combat events in South Vietnam from 1963 to 1973.
#'
#' Each row is a discrete combat incident. Key variables include
#' \code{master_event_id}, \code{aggressor_side}, \code{initiation_date},
#' casualty counts (\code{n_friendly_kia}, \code{n_enemy_kia}, etc.),
#' \code{prov_name}, \code{corp}, and geographic coordinates
#' (\code{lat}, \code{lng}).
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @return A data frame with 638,760 rows and 43 variables.
#' @export
#'
#' @examples
#' \dontrun{
#'   gc <- get_ground_combat()
#'   head(gc)
#' }
get_ground_combat <- function(cache = TRUE, force = FALSE) {
  download_vw_file("vietwar_ground_combat.rds", cache = cache, force = force)
}
