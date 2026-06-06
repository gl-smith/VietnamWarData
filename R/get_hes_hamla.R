#' Download the HES-HAMLA hamlet evaluation dataset
#'
#' Downloads and caches the Hamlet Evaluation System data collected under the
#' HAMLA instrument, covering monthly hamlet-level security, political, and
#' socioeconomic assessments from 1967 to 1969. For the 1969-1974 period, see
#' \code{\link{get_hes70}}.
#'
#' Each row is a hamlet-month evaluation record.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @format A data frame with 389,505 rows and 76 variables. Key variables
#'   include:
#' \describe{
#'   \item{us_hamlet_id}{U.S. hamlet identifier.}
#'   \item{corps_region_code}{Corps region code.}
#'   \item{province_code}{Province code.}
#'   \item{district_code}{District code.}
#'   \item{village_code}{Village code.}
#'   \item{hamlet_code}{Hamlet code.}
#'   \item{date}{Evaluation month.}
#'   \item{record_type}{Record type.}
#' }
#'
#' @return A data frame with 389,505 rows and 76 variables.
#'
#' @source U.S. National Archives and Records Administration (NARA), College
#'   Park, MD (RG 472). Electronic records collected by the U.S. Military
#'   Assistance Command, Vietnam (MACV). Source file: Hamlet Evaluation System
#'   (HAMLA). See Smith (2025) and its Online Appendix for full archival
#'   accession details.
#'
#' @references
#' Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
#' data." \emph{Conflict Management and Peace Science}.
#' \doi{10.1177/07388942251391081}
#'
#' @seealso \code{\link{get_hes70}}
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
