#' Download the DCAS casualty dataset
#'
#' Downloads and caches the Defense Casualty Analysis System (DCAS) data for
#' U.S. military personnel killed in the Vietnam War.
#'
#' Each row is an individual service member casualty record. Key variables
#' include \code{member_name}, \code{member_service_code},
#' \code{member_service_name}, \code{member_rank_or_rate},
#' \code{person_type_name}, and \code{member_component_code}.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @return A data frame with 58,220 rows and 55 variables.
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
