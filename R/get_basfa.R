#' Download the BASFA base area status dataset
#'
#' Downloads and caches the Base Area Status File (BASFA) dataset covering
#' Viet Cong base area assessments from 1967 to 1971.
#'
#' Each row is a monthly base area record. Key variables include
#' \code{base_area_id}, \code{year}, \code{month}, \code{province},
#' \code{vc_military_region}, and \code{current_status}.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @return A data frame with 8,784 rows and 36 variables.
#' @export
#'
#' @examples
#' \dontrun{
#'   basfa <- get_basfa()
#'   head(basfa)
#' }
get_basfa <- function(cache = TRUE, force = FALSE) {
  download_vw_file("vietwar_basfa.rds", cache = cache, force = force)
}
