# Converts all clean source files to consistently-named RDS release assets.
# Run this script once before uploading to GitHub Releases.
# Output files land in data-raw/release-assets/ and are excluded from the
# installed package via .Rbuildignore.

library(readr)

NARA_ROOT <- "~/Dropbox/nara-vietnam-master/1-nara-clean-r-projects"
COMBAT_ROOT <- "~/Dropbox/nara-vietnam-master/4-outdated-scripts-and-files/vietnam-ground-combat-project/1-data"
OUT_DIR <- here::here("data-raw/release-assets")

dir.create(OUT_DIR, recursive = TRUE, showWarnings = FALSE)

save_asset <- function(df, name) {
  path <- file.path(OUT_DIR, paste0(name, ".rds"))
  saveRDS(df, path, compress = "xz")
  size_mb <- round(file.size(path) / 1e6, 1)
  message(sprintf("  Wrote %s.rds  (%s MB)", name, size_mb))
}

message("--- Master ground combat dataset ---")
save_asset(
  readRDS(file.path(COMBAT_ROOT,
    "combined-vndba-sitra-tirsa-vciia-vietnam-ground-combat-events-1963-1973.rds")),
  "vietwar_ground_combat"
)

message("--- CONGA ---")
save_asset(
  readRDS(file.path(NARA_ROOT, "10-conga-clean/0.5-clean-files/clean-conga-data-1966-1973.rds")),
  "vietwar_conga"
)

message("--- DCAS ---")
save_asset(
  readRDS(file.path(NARA_ROOT, "8-dcas-clean/0.5-clean-files/tidy-vietnam-war-dcas-data.rds")),
  "vietwar_dcas"
)

message("--- NASVA ---")
save_asset(
  readRDS(file.path(NARA_ROOT, "9-nasva-clean/0.5-clean-files/clean-nasva-data-1966-1972.rds")),
  "vietwar_nasva"
)

message("--- BASFA ---")
save_asset(
  readRDS(file.path(NARA_ROOT, "5-basfa-clean/0.5-clean-files/clean-basfa-data-1967-1971.rds")),
  "vietwar_basfa"
)

message("--- VNDBA ---")
save_asset(
  readRDS(file.path(NARA_ROOT, "4-vndba-fixed-clean/0.5-clean-files/clean-vndba-data-1963-1969.rds")),
  "vietwar_vndba"
)

message("--- HES-HAMLA ---")
save_asset(
  readRDS(file.path(NARA_ROOT, "11-hes-clean/0.5-clean-files/clean-hamla-files-1967-1969.rds")),
  "vietwar_hes_hamla"
)

message("--- HES-70/71 ---")
save_asset(
  readRDS(file.path(NARA_ROOT, "11-hes-clean/0.5-clean-files/clean-hes70-and-hes71-files-1969-1974.rds")),
  "vietwar_hes70"
)

message("--- PSYOPS-A ---")
save_asset(
  readRDS(file.path(NARA_ROOT, "7.1-psyopsis-psyops-a-clean/0.5-clean-files/clean-psyops-a-combined-70-73-data.rds")),
  "vietwar_psyops"
)

message("--- SORTIE-A ---")
save_asset(
  readRDS(file.path(NARA_ROOT, "7.2-psyopsis-sortie-a-clean/0.5-clean-files/clean-sortie-a-combined-70-73-data.rds")),
  "vietwar_sortie"
)

# --- CSV sources: read and convert ---

message("--- SITRA (CSV -> RDS) ---")
save_asset(
  read_csv(
    file.path(NARA_ROOT, "3-sitra-clean/0.5-clean-files/clean-sitra-data-1966-1973.csv"),
    col_types = cols(.default = "c"),
    show_col_types = FALSE
  ),
  "vietwar_sitra"
)

message("--- VCIIA (CSV -> RDS) ---")
save_asset(
  read_csv(
    file.path(NARA_ROOT, "4-vciia-clean/0.5-clean-files/clean-vciia-data-1965-1968.csv"),
    col_types = cols(.default = "c"),
    show_col_types = FALSE
  ),
  "vietwar_vciia"
)

message("--- TIRSA (CSV -> RDS) ---")
save_asset(
  read_csv(
    file.path(NARA_ROOT, "2-tirsa-clean/0.4-clean-files/clean-tirsa-data-1966-1973.csv"),
    col_types = cols(.default = "c"),
    show_col_types = FALSE
  ),
  "vietwar_tirsa"
)

message("--- SEAFA (CSV -> RDS) ---")
save_asset(
  read_csv(
    file.path(NARA_ROOT, "6-seafa-clean/0.4-clean-files/clean-seafa-data-1966-1972.csv"),
    col_types = cols(.default = "c"),
    show_col_types = FALSE
  ),
  "vietwar_seafa"
)

message("\nAll assets written to: ", OUT_DIR)
message("File sizes:")
files <- list.files(OUT_DIR, pattern = "\\.rds$", full.names = TRUE)
sizes <- file.size(files) / 1e6
data.frame(file = basename(files), size_mb = round(sizes, 1))[order(-sizes), ]
