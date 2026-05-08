#' Download the HES-70/71 hamlet evaluation dataset
#'
#' Downloads and caches the Hamlet Evaluation System data from the HES-70 and
#' HES-71 instruments, covering hamlet-level security and development
#' assessments from 1969 to 1974.
#'
#' Each row is a hamlet-month evaluation record. Key variables include
#' \code{us_hamlet_id}, \code{corps_region_code}, \code{province_code},
#' \code{district_code}, \code{village_code}, \code{hamlet_code},
#' \code{rectp_record_type}, and \code{date}.
#'
#' For the 1967-1969 HAMLA period, see \code{\link{get_hes_hamla}}.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @return A data frame with 693,862 rows and 160 variables.
#' @export
#'
#' @examples
#' \dontrun{
#'   hes70 <- get_hes70()
#'   head(hes70)
#' }
get_hes70 <- function(cache = TRUE, force = FALSE) {
  download_vw_file("vietwar_hes70.rds", cache = cache, force = force)
}
