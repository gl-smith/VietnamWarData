#' Download the SITRA ground combat incident dataset
#'
#' Downloads and caches the Situation Report Activity (SITRA) dataset covering
#' ground combat events reported through allied situation reports from 1966
#' to 1973. SITRA is one of the source files combined in
#' \code{\link{get_comb_inc_dta}}.
#'
#' Each row is a discrete combat incident.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @format A data frame with 77 variables (row count varies by version). Key
#'   variables include:
#' \describe{
#'   \item{message_date}{Date of the situation report message.}
#'   \item{record_id}{Record identifier.}
#'   \item{data_type}{Type of record.}
#'   \item{military_region}{Military region.}
#'   \item{force_nationality}{Nationality of the reporting force.}
#'   \item{country_code}{Country code.}
#' }
#'
#' @return A data frame with 77 variables. Row count varies by version.
#'
#' @source U.S. National Archives and Records Administration (NARA), College
#'   Park, MD. Electronic records collected by the U.S. Military Assistance
#'   Command, Vietnam (MACV). Source file: Situation Report Activity (SITRA).
#'   See Smith (2025) and its Online Appendix for full archival accession
#'   details.
#'
#' @references
#' Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
#' data." \emph{Conflict Management and Peace Science}.
#' \doi{10.1177/07388942251391081}
#'
#' @seealso \code{\link{get_comb_inc_dta}}
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
