#' Download the NASVA naval surveillance dataset
#'
#' Downloads and caches the NASVA naval activity and surveillance dataset
#' covering operations in Vietnam from 1966 to 1972.
#'
#' Each row is a surveillance report record. Key variables include
#' \code{reporting_date}, \code{task_unit_code}, \code{operation_code}, and
#' \code{area_designation_code_of_surveillance_area}.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @return A data frame with 670,242 rows and 69 variables.
#' @export
#'
#' @examples
#' \dontrun{
#'   nasva <- get_nasva()
#'   head(nasva)
#' }
get_nasva <- function(cache = TRUE, force = FALSE) {
  download_vw_file("vietwar_nasva.rds", cache = cache, force = force)
}
