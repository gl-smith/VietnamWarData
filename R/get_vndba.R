#' Download the VNDBA Vietnam attack incident dataset
#'
#' Downloads and caches the Vietnam Database of Attacks (VNDBA) covering
#' enemy-initiated incidents against allied and civilian targets in South
#' Vietnam from 1963 to 1969.
#'
#' Each row is a discrete incident report. Key variables include
#' \code{sitrep_number}, \code{initiating_side}, \code{corp},
#' \code{corp_zone_division}, and \code{arvn_divisional_area}.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @return A data frame with 365,015 rows and 108 variables.
#' @export
#'
#' @examples
#' \dontrun{
#'   vndba <- get_vndba()
#'   head(vndba)
#' }
get_vndba <- function(cache = TRUE, force = FALSE) {
  download_vw_file("vietwar_vndba.rds", cache = cache, force = force)
}
