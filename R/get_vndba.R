#' Download the VNDBA Vietnam attack incident dataset
#'
#' Downloads and caches the Vietnam Database of Attacks (VNDBA) covering
#' enemy-initiated incidents against allied and civilian targets in South
#' Vietnam from 1963 to 1969. VNDBA was part of the OPSANAL system and is one
#' of the four source files combined in \code{\link{get_comb_inc_dta}}.
#'
#' Each row is a discrete incident report.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @format A data frame with 365,015 rows and 108 variables. Key variables
#'   include:
#' \describe{
#'   \item{sitrep_number}{Situation report number.}
#'   \item{initiating_side}{Side that initiated the incident.}
#'   \item{corp}{Corps tactical zone.}
#'   \item{corp_zone_division}{Corps zone or division area.}
#'   \item{arvn_divisional_area}{ARVN divisional area.}
#' }
#'
#' @return A data frame with 365,015 rows and 108 variables.
#'
#' @source U.S. National Archives and Records Administration (NARA), College
#'   Park, MD. Electronic records collected by the U.S. Military Assistance
#'   Command, Vietnam (MACV). Source file: Vietnam Database of Attacks (VNDBA),
#'   OPSANAL system. See Smith (2025) and its Online Appendix for full archival
#'   accession details.
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
#'   vndba <- get_vndba()
#'   head(vndba)
#' }
get_vndba <- function(cache = TRUE, force = FALSE) {
  download_vw_file("vietwar_vndba.rds", cache = cache, force = force)
}
