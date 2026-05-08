#' Download the HES-HAMLA hamlet evaluation dataset
#'
#' Downloads and caches the Hamlet Evaluation System data collected under the
#' HAMLA (Hamlet Alliance) program, covering hamlet-level security and
#' development assessments from 1967 to 1969.
#'
#' Each row is a hamlet-month evaluation record. Key variables include
#' \code{us_hamlet_id}, \code{corps_region_code}, \code{province_code},
#' \code{district_code}, \code{village_code}, \code{hamlet_code},
#' \code{date}, and \code{record_type}.
#'
#' For the 1969-1974 period, see \code{\link{get_hes70}}.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @return A data frame with 389,505 rows and 76 variables.
#' @export
#'
#' @examples
#' \dontrun{
#'   hamla <- get_hes_hamla()
#'   head(hamla)
#' }
get_hes_hamla <- function(cache = TRUE, force = FALSE) {
  download_vw_file("vietwar_hes_hamla.rds", cache = cache, force = force)
}
