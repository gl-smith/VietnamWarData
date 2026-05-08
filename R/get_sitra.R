#' Download the SITRA ground combat incident dataset
#'
#' Downloads and caches the Situation Report Activity (SITRA) dataset covering
#' ground combat events reported through allied situation reports from 1966
#' to 1973.
#'
#' Each row is a discrete combat incident. Key variables include
#' \code{message_date}, \code{record_id}, \code{data_type},
#' \code{military_region}, \code{force_nationality}, and
#' \code{country_code}.
#'
#' SITRA is one of the source files combined in \code{\link{get_comb_inc_dta}}.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @return A data frame with 77 variables. Row count varies by version.
#' @export
#'
#' @examples
#' \dontrun{
#'   sitra <- get_sitra()
#'   head(sitra)
#' }
get_sitra <- function(cache = TRUE, force = FALSE) {
  download_vw_file("vietwar_sitra.rds", cache = cache, force = force)
}
