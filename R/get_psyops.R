#' Download the PSYOPS-A psychological operations dataset
#'
#' Downloads and caches the Psychological Operations (PSYOPS-A) dataset
#' covering district-level psychological operations activity from 1970 to 1973.
#'
#' Each row is a district-period record. Key variables include
#' \code{district_id}, \code{prov_name}, \code{dist_name},
#' \code{dist_population}, \code{num_gvn_loyal_population}, and
#' \code{num_hoi_chanh_ralliers}.
#'
#' For associated sortie records, see \code{\link{get_sortie}}.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @return A data frame with 6,957 rows and 45 variables.
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
