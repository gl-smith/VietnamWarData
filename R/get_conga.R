#' Download the CONGA naval gunfire mission dataset
#'
#' Downloads and caches the Combined Naval Gunfire Activity (CONGA) dataset
#' covering U.S. Navy ship gunfire support missions in the Vietnam War from
#' 1966 to 1973.
#'
#' Each row is a discrete gunfire mission. Key variables include
#' \code{mission_firing_date}, \code{mission_start_time},
#' \code{ship_name}, and \code{ship_type_code}.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @return A data frame with 161,283 rows and 46 variables.
#' @export
#'
#' @examples
#' \dontrun{
#'   conga <- get_conga()
#'   head(conga)
#' }
get_conga <- function(cache = TRUE, force = FALSE) {
  download_vw_file("vietwar_conga.rds", cache = cache, force = force)
}
