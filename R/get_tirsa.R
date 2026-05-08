#' Download the TIRSA tactical incident dataset
#'
#' Downloads and caches the Tactical Incident Report Activity (TIRSA) dataset
#' covering ground combat incidents reported through tactical situation reports
#' from 1966 to 1973.
#'
#' Each row is a discrete combat incident. Key variables include
#' \code{incident_id}, \code{message_year}, \code{message_month},
#' \code{message_week}, \code{date}, and \code{hamlet_id}.
#'
#' TIRSA is one of the source files combined in \code{\link{get_ground_combat}}.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @return A data frame with 37 variables. Row count varies by version.
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
