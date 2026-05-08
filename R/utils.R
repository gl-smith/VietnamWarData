# Internal helpers for downloading and caching data files from GitHub Releases.

.vw_base_url <- "https://github.com/gl-smith/VietnamWarData/releases/download/v1.0.0"

vw_cache_dir <- function() {
  tools::R_user_dir("VietnamWarData", "cache")
}

#' @keywords internal
download_vw_file <- function(filename, cache = TRUE, force = FALSE) {
  cache_dir <- vw_cache_dir()
  local_path <- file.path(cache_dir, filename)

  if (!force && cache && file.exists(local_path)) {
    return(readRDS(local_path))
  }

  if (!dir.exists(cache_dir)) dir.create(cache_dir, recursive = TRUE)

  url <- paste0(.vw_base_url, "/", filename)
  message("Downloading ", filename, " ...")
  utils::download.file(url, local_path, mode = "wb", quiet = FALSE)
  readRDS(local_path)
}

#' Return the path to the local data cache
#'
#' Returns the directory where \code{VietnamWarData} stores downloaded files.
#' Useful for inspecting or manually managing cached data.
#'
#' @return A character string giving the cache directory path.
#' @export
#' @examples
#' vw_cache_path()
vw_cache_path <- function() {
  vw_cache_dir()
}

#' Delete all locally cached Vietnam War data files
#'
#' Removes every file in the \code{VietnamWarData} cache directory. The next
#' call to any \code{get_*()} function will re-download from GitHub.
#'
#' @return Called for its side effect. Returns \code{invisible(NULL)}.
#' @export
#' @examples
#' \dontrun{
#'   vw_clear_cache()
#' }
vw_clear_cache <- function() {
  cache <- vw_cache_dir()
  if (dir.exists(cache)) {
    unlink(cache, recursive = TRUE)
    message("Cache cleared: ", cache)
  } else {
    message("No cache found at: ", cache)
  }
  invisible(NULL)
}
