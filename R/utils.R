# Internal helpers for downloading and caching data files from GitHub Releases.

.vw_repo    <- "gl-smith/VietnamWarData"
.vw_release <- "v1.0.0"
.vw_api_url <- paste0(
  "https://api.github.com/repos/", .vw_repo,
  "/releases/tags/", .vw_release
)

vw_cache_dir <- function() {
  tools::R_user_dir("VietnamWarData", "cache")
}

vw_get_token <- function() {
  token <- Sys.getenv("GITHUB_PAT", unset = "")
  if (nchar(token) > 0) return(token)

  token <- Sys.getenv("GITHUB_TOKEN", unset = "")
  if (nchar(token) > 0) return(token)

  if (requireNamespace("gitcreds", quietly = TRUE)) {
    creds <- tryCatch(gitcreds::gitcreds_get(), error = function(e) NULL)
    if (!is.null(creds)) return(creds$password)
  }

  stop(
    "No GitHub token found. Provide one with:\n",
    "  vw_auth('your_token')\n",
    "or set it permanently in ~/.Renviron:\n",
    "  GITHUB_PAT=your_token\n",
    "(run usethis::edit_r_environ() to open that file)"
  )
}

# Fetches the list of release assets and returns the API download URL for
# `filename`. Results are cached in .vw_asset_cache for the session so
# only one API call is made regardless of how many datasets are downloaded.
.vw_asset_cache <- NULL

vw_asset_url <- function(filename, token) {
  if (is.null(.vw_asset_cache)) {
    resp <- httr::GET(
      .vw_api_url,
      httr::add_headers(
        Authorization = paste("token", token),
        Accept        = "application/vnd.github.v3+json"
      )
    )
    httr::stop_for_status(resp)
    assets <- httr::content(resp)$assets
    cache  <- stats::setNames(
      vapply(assets, function(a) a$url, character(1)),
      vapply(assets, function(a) a$name, character(1))
    )
    assign(".vw_asset_cache", cache, envir = parent.env(environment()))
  }

  url <- .vw_asset_cache[[filename]]
  if (is.null(url)) {
    stop("'", filename, "' not found in release ", .vw_release, ". ",
         "Check that the data files were uploaded to GitHub.")
  }
  url
}

#' @keywords internal
download_vw_file <- function(filename, cache = TRUE, force = FALSE) {
  cache_dir  <- vw_cache_dir()
  local_path <- file.path(cache_dir, filename)

  if (!force && cache && file.exists(local_path)) {
    return(readRDS(local_path))
  }

  if (!dir.exists(cache_dir)) dir.create(cache_dir, recursive = TRUE)

  token <- vw_get_token()
  url   <- vw_asset_url(filename, token)

  message("Downloading ", filename, " ...")
  # httr follows the GitHub -> S3 redirect automatically. The Authorization
  # header is not forwarded to S3 (different domain) so it does not conflict
  # with S3's signed-URL auth.
  resp <- httr::GET(
    url,
    httr::add_headers(
      Authorization = paste("token", token),
      Accept        = "application/octet-stream"
    ),
    httr::write_disk(local_path, overwrite = TRUE),
    httr::progress()
  )
  httr::stop_for_status(resp)

  readRDS(local_path)
}

#' Set a GitHub token for downloading data from the private repository
#'
#' Stores your Personal Access Token for the current R session. To avoid
#' calling this every session, add \code{GITHUB_PAT=your_token} to your
#' \code{~/.Renviron} file (run \code{usethis::edit_r_environ()} to open it).
#'
#' @param token A GitHub Personal Access Token with \code{repo} scope.
#' @return Called for its side effect. Returns \code{invisible(NULL)}.
#' @export
#' @examples
#' \dontrun{
#'   vw_auth("ghp_xxxxxxxxxxxx")
#' }
vw_auth <- function(token) {
  Sys.setenv(GITHUB_PAT = token)
  message("GitHub token set for this session.")
  invisible(NULL)
}

#' Return the path to the local data cache
#'
#' Returns the directory where \code{VietnamWarData} stores downloaded files.
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
