#' Download the PSYOPS sortie dataset
#'
#' Downloads and caches the PSYOPS Sortie-A dataset recording individual aerial
#' psychological operations aircraft sorties from 1970 to 1973. For
#' district-level aggregated PSYOPS data, see \code{\link{get_psyops}}.
#'
#' Each row is a single sortie record.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @format A data frame with 41,199 rows and 18 variables. Key variables
#'   include:
#' \describe{
#'   \item{district_id}{District identifier.}
#'   \item{prov_name}{Province name.}
#'   \item{dist_name}{District name.}
#'   \item{date_of_sortie}{Date of the sortie.}
#'   \item{conducting_agency}{Agency conducting the sortie.}
#'   \item{unit}{Unit.}
#'   \item{aircraft_type}{Aircraft type.}
#'   \item{unique_record_identifier}{Unique record identifier.}
#' }
#'
#' @return A data frame with 41,199 rows and 18 variables.
#'
#' @source U.S. National Archives and Records Administration (NARA), College
#'   Park, MD. Electronic records collected by the U.S. Military Assistance
#'   Command, Vietnam (MACV). Source file: Psychological Operations Information
#'   System, aerial sorties (SORTIE-A). See Smith (2025) and its Online
#'   Appendix for full archival accession details.
#'
#' @references
#' Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
#' data." \emph{Conflict Management and Peace Science}.
#' \doi{10.1177/07388942251391081}
#'
#' @seealso \code{\link{get_psyops}}
#' @export
#'
#' @examples
#' \dontrun{
#'   sortie <- get_sortie()
#'   head(sortie)
#' }
get_sortie <- function(cache = TRUE, force = FALSE) {
  download_vw_file("vietwar_sortie.rds", cache = cache, force = force)
}
