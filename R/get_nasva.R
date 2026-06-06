#' Download the NASVA naval surveillance dataset
#'
#' Downloads and caches the NASVA naval activity and surveillance dataset
#' covering coastal surveillance operations in Vietnam (including Operations
#' Market Time and Game Warden) from 1966 to 1972.
#'
#' Each row is a surveillance report record.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @format A data frame with 670,242 rows and 69 variables. Key variables
#'   include:
#' \describe{
#'   \item{reporting_date}{Date of the surveillance report.}
#'   \item{task_unit_code}{Task unit code.}
#'   \item{operation_code}{Operation code.}
#'   \item{area_designation_code_of_surveillance_area}{Surveillance area
#'     designation code.}
#' }
#'
#' @return A data frame with 670,242 rows and 69 variables.
#'
#' @source U.S. National Archives and Records Administration (NARA), College
#'   Park, MD. Electronic records collected by the U.S. Military Assistance
#'   Command, Vietnam (MACV). Source file: Naval Surveillance Activities
#'   (NASVA). See Smith (2025) and its Online Appendix for full archival
#'   accession details.
#'
#' @references
#' Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
#' data." \emph{Conflict Management and Peace Science}.
#' \doi{10.1177/07388942251391081}
#'
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
