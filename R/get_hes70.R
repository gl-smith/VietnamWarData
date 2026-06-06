#' Download the HES-70/71 hamlet evaluation dataset
#'
#' Downloads and caches the Hamlet Evaluation System data from the HES-70 and
#' HES-71 instruments, covering monthly hamlet-level security and development
#' assessments from 1969 to 1974. For the 1967-1969 HAMLA period, see
#' \code{\link{get_hes_hamla}}.
#'
#' Each row is a hamlet-month evaluation record.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @format A data frame with 693,862 rows and 160 variables. Key variables
#'   include:
#' \describe{
#'   \item{us_hamlet_id}{U.S. hamlet identifier.}
#'   \item{corps_region_code}{Corps region code.}
#'   \item{province_code}{Province code.}
#'   \item{district_code}{District code.}
#'   \item{village_code}{Village code.}
#'   \item{hamlet_code}{Hamlet code.}
#'   \item{rectp_record_type}{Record type.}
#'   \item{date}{Evaluation month.}
#' }
#'
#' @return A data frame with 693,862 rows and 160 variables.
#'
#' @source U.S. National Archives and Records Administration (NARA), College
#'   Park, MD (RG 472). Electronic records collected by the U.S. Military
#'   Assistance Command, Vietnam (MACV). Source files: Hamlet Evaluation System
#'   HES-70 and HES-71. See Smith (2025) and its Online Appendix for full
#'   archival accession details.
#'
#' @references
#' Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
#' data." \emph{Conflict Management and Peace Science}.
#' \doi{10.1177/07388942251391081}
#'
#' @seealso \code{\link{get_hes_hamla}}
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
