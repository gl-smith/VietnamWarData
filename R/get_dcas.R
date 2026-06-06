#' Download the DCAS casualty dataset
#'
#' Downloads and caches the Defense Casualty Analysis System (DCAS) Vietnam
#' Conflict Extract Data File, recording U.S. military personnel killed in the
#' Vietnam War (records span 1956 to 2006).
#'
#' Each row is an individual service member casualty record.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @format A data frame with 58,220 rows and 55 variables. Key variables
#'   include:
#' \describe{
#'   \item{member_name}{Name of the service member.}
#'   \item{member_service_code}{Service branch code.}
#'   \item{member_service_name}{Service branch.}
#'   \item{member_rank_or_rate}{Rank or rate.}
#'   \item{person_type_name}{Personnel category.}
#'   \item{member_component_code}{Service component code.}
#' }
#'
#' @return A data frame with 58,220 rows and 55 variables.
#'
#' @source U.S. National Archives and Records Administration (NARA), College
#'   Park, MD. Defense Casualty Analysis System (DCAS) Vietnam Conflict Extract
#'   Data File. See Smith (2025) and its Online Appendix for full archival
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
#'   dcas <- get_dcas()
#'   head(dcas)
#' }
get_dcas <- function(cache = TRUE, force = FALSE) {
  download_vw_file("vietwar_dcas.rds", cache = cache, force = force)
}
