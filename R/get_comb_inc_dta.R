#' Download the combined incident-level dataset
#'
#' Downloads and caches the master incident-level dataset that joins the VNDBA,
#' SITRA, TIRSA, and VCIIA source files into a single standardized table
#' covering ground combat events in South Vietnam from 1963 to 1973.
#'
#' Each row is a discrete combat incident. The combined dataset was constructed
#' by standardizing column names and actor labels across the four source files,
#' tagging each record with its source file, merging the records, removing
#' duplicate entries appearing in more than one source, and assigning a unique
#' incident identifier to each remaining observation. It does not replace the
#' individual source files, which retain additional variables not carried into
#' the combined table.
#'
#' @param cache Logical. If \code{TRUE} (default), the downloaded file is saved
#'   locally and reused on subsequent calls without re-downloading.
#' @param force Logical. If \code{TRUE}, re-downloads the file even if a cached
#'   copy already exists. Default is \code{FALSE}.
#'
#' @format A data frame with 638,760 rows and 43 variables. Key variables
#'   include:
#' \describe{
#'   \item{master_event_id}{Unique incident identifier.}
#'   \item{data_file_origin}{Source file (VNDBA, SITRA, TIRSA, or VCIIA).}
#'   \item{aggressor_side}{Initiating force (Allied or enemy).}
#'   \item{aggressor_sub_group}{Specific unit or group.}
#'   \item{general_action_category}{Broad action type.}
#'   \item{enemy_action_category}{Enemy action type (e.g., direct attack,
#'     harassment, terrorism, mining).}
#'   \item{initiation_date}{Date of the incident.}
#'   \item{initiation_time}{Time of the incident.}
#'   \item{n_friendly_kia}{Number of friendly killed in action.}
#'   \item{n_friendly_wia}{Number of friendly wounded in action.}
#'   \item{n_enemy_kia}{Number of enemy killed in action.}
#'   \item{n_enemy_wia}{Number of enemy wounded in action.}
#'   \item{prov_name}{Province name.}
#'   \item{corp}{Corps tactical zone.}
#'   \item{lat, lng}{Geographic coordinates.}
#' }
#'
#' @return A data frame with 638,760 rows and 43 variables.
#'
#' @source U.S. National Archives and Records Administration (NARA), College
#'   Park, MD. Derived from electronic records collected by the U.S. Military
#'   Assistance Command, Vietnam (MACV): the VNDBA, SITRA, TIRSA, and VCIIA
#'   source files. See Smith (2025) and its Online Appendix for full archival
#'   accession details and the construction procedure.
#'
#' @references
#' Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
#' data." \emph{Conflict Management and Peace Science}.
#' \doi{10.1177/07388942251391081}
#'
#' @seealso \code{\link{get_vndba}}, \code{\link{get_sitra}},
#'   \code{\link{get_tirsa}}, \code{\link{get_vciia}}
#' @export
#'
#' @examples
#' \dontrun{
#'   comb_inc <- get_comb_inc_dta()
#'   head(comb_inc)
#' }
get_comb_inc_dta <- function(cache = TRUE, force = FALSE) {
  download_vw_file("vietwar_ground_combat.rds", cache = cache, force = force)
}
