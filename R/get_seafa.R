#' Download the SEAFA unit location dataset
#'
#' Downloads and caches the Southeast Asia Forces Activity (SEAFA) dataset
#' recording monthly locations of American, South Vietnamese, and Allied
#' maneuver battalions in Southeast Asia from 1966 to 1972.
#'
#' Each row is a unit location record.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @format A data frame with 15 variables (row count varies by version). Key
#'   variables include:
#' \describe{
#'   \item{unit_number}{Unit number.}
#'   \item{record_date}{Date of the location record.}
#'   \item{unit_name}{Unit name.}
#'   \item{province}{Province.}
#'   \item{lat, lng}{Geographic coordinates.}
#'   \item{vc_military_region}{Viet Cong military region.}
#' }
#'
#' @return A data frame with 15 variables. Row count varies by version.
#'
#' @source U.S. National Archives and Records Administration (NARA), College
#'   Park, MD. Electronic records collected by the U.S. Military Assistance
#'   Command, Vietnam (MACV). Source file: Southeast Asia Forces Activity
#'   (SEAFA). See Smith (2025) and its Online Appendix for full archival
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
#'   seafa <- get_seafa()
#'   head(seafa)
#' }
get_seafa <- function(cache = TRUE, force = FALSE) {
  download_vw_file("vietwar_seafa.rds", cache = cache, force = force)
}
