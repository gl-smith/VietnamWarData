#' Download the TIRSA tactical incident dataset
#'
#' Downloads and caches the Tactical Incident Report Activity (TIRSA) dataset
#' covering ground combat incidents reported through tactical situation reports
#' from 1966 to 1973. TIRSA is one of the source files combined in
#' \code{\link{get_comb_inc_dta}}.
#'
#' Each row is a discrete combat incident.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @format A data frame with 37 variables (row count varies by version). Key
#'   variables include:
#' \describe{
#'   \item{incident_id}{Unique incident identifier.}
#'   \item{message_year}{Year of the report message.}
#'   \item{message_month}{Month of the report message.}
#'   \item{message_week}{Week of the report message.}
#'   \item{date}{Date of the incident.}
#'   \item{hamlet_id}{Hamlet identifier.}
#' }
#'
#' @return A data frame with 37 variables. Row count varies by version.
#'
#' @source U.S. National Archives and Records Administration (NARA), College
#'   Park, MD. Electronic records collected by the U.S. Military Assistance
#'   Command, Vietnam (MACV). Source file: Tactical Incident Report Activity
#'   (TIRSA), OPSANAL system. See Smith (2025) and its Online Appendix for full
#'   archival accession details.
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
#'   tirsa <- get_tirsa()
#'   head(tirsa)
#' }
get_tirsa <- function(cache = TRUE, force = FALSE) {
  download_vw_file("vietwar_tirsa.rds", cache = cache, force = force)
}
