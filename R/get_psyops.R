#' Download the PSYOPS-A psychological operations dataset
#'
#' Downloads and caches the Psychological Operations (PSYOPS-A) dataset covering
#' district-level surface psychological operations activity from 1970 to 1973.
#' For associated aerial sortie records, see \code{\link{get_sortie}}.
#'
#' Each row is a district-period record.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @format A data frame with 6,957 rows and 45 variables. Key variables
#'   include:
#' \describe{
#'   \item{district_id}{District identifier.}
#'   \item{prov_name}{Province name.}
#'   \item{dist_name}{District name.}
#'   \item{dist_population}{District population.}
#'   \item{num_gvn_loyal_population}{Population loyal to the Government of
#'     Vietnam (GVN).}
#'   \item{num_hoi_chanh_ralliers}{Number of Hoi Chanh ralliers (Chieu Hoi
#'     program).}
#' }
#'
#' @return A data frame with 6,957 rows and 45 variables.
#'
#' @source U.S. National Archives and Records Administration (NARA), College
#'   Park, MD. Electronic records collected by the U.S. Military Assistance
#'   Command, Vietnam (MACV). Source file: Psychological Operations Information
#'   System, surface operations (PSYOPS-A). See Smith (2025) and its Online
#'   Appendix for full archival accession details.
#'
#' @references
#' Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
#' data." \emph{Conflict Management and Peace Science}.
#' \doi{10.1177/07388942251391081}
#'
#' @seealso \code{\link{get_sortie}}
#' @export
#'
#' @examples
#' \dontrun{
#'   psyops <- get_psyops()
#'   head(psyops)
#' }
get_psyops <- function(cache = TRUE, force = FALSE) {
  download_vw_file("vietwar_psyops.rds", cache = cache, force = force)
}
