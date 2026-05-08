#' Download the SEAFA unit location dataset
#'
#' Downloads and caches the Southeast Asia Forces Activity (SEAFA) dataset
#' recording allied unit locations in South Vietnam from 1966 to 1972.
#'
#' Each row is a unit location record. Key variables include
#' \code{unit_number}, \code{record_date}, \code{unit_name},
#' \code{province}, \code{lat}, \code{lng}, and
#' \code{vc_military_region}.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @return A data frame with 15 variables. Row count varies by version.
#' @export
#'
#' @examples
#' \dontrun{
#'   seafa <- get_seafa()
#'   head(seafa)
#' }
get_seafa <- function(cache = TRUE, force = FALSE) {
  download_vw_file("vietwar_seafa.rds", cache = cache, force = force)
}
