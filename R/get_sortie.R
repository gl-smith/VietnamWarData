#' Download the PSYOPS sortie dataset
#'
#' Downloads and caches the PSYOPS Sortie-A dataset recording individual
#' psychological operations aircraft sorties from 1970 to 1973.
#'
#' Each row is a single sortie record. Key variables include
#' \code{district_id}, \code{prov_name}, \code{dist_name},
#' \code{date_of_sortie}, \code{conducting_agency}, \code{unit},
#' \code{aircraft_type}, and \code{unique_record_identifier}.
#'
#' For district-level aggregated PSYOPS data, see \code{\link{get_psyops}}.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @return A data frame with 41,199 rows and 18 variables.
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
