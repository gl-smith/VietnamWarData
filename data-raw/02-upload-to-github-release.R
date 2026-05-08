# Publishes the package to GitHub and uploads data release assets.
# Run this once after 01-convert-to-rds.R has finished.
# Requires: usethis, gitcreds, piggyback

# Install required packages if needed
install.packages(c("usethis", "gitcreds", "piggyback"))

# ---- Step 1: GitHub Personal Access Token ----
# Opens a browser to generate a token with the correct scopes.
# Copy the token when shown — you only see it once.
usethis::create_github_token()

# Paste the token when prompted:
gitcreds::gitcreds_set()

# ---- Step 2: Initialize git and create the GitHub repo ----
# Initializes a local git repo, commits all files, creates the
# gl-smith/VietnamWarData repo on GitHub, and pushes.
usethis::use_git()
usethis::use_github(organisation = NULL, private = TRUE)

# ---- Step 3: Create the v1.0.0 release ----
piggyback::pb_new_release(repo = "gl-smith/VietnamWarData", tag = "v1.0.0")

# ---- Step 4: Upload all data assets ----
assets <- list.files(
  "data-raw/release-assets",
  pattern = "[.]rds$",
  full.names = TRUE
)

piggyback::pb_upload(
  file = assets,
  repo = "gl-smith/VietnamWarData",
  tag  = "v1.0.0"
)

message("Done. View at: https://github.com/gl-smith/VietnamWarData/releases/tag/v1.0.0")
