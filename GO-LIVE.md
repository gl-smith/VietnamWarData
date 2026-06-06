# VietnamWarData pkgdown site — status & resume checklist

*Last updated: 2026-06-05. This file is `.Rbuildignore`d (won’t ship in
the package).*

## Where things live

- **Working copy (canonical for the site):**
  `~/Dropbox/r-packages/VietnamWarData-site/` — all site work happens
  here. Shares git remote `gl-smith/VietnamWarData` (branch `master`).
- **Original package (frozen, read-only):**
  `~/Dropbox/r-packages/VietnamWarData/` — untouched reference.
- **NARA cleaning code (read-only source):**
  `~/Dropbox/nara-vietnam-master/`
- **CMPS replication code (read-only source):**
  `~/Desktop/glsmith-beyond-body-counts-publication-materials/3-...-replication-files/`

## How to build / preview the site

``` sh
cd ~/Dropbox/r-packages/VietnamWarData-site
export RSTUDIO_PANDOC="/Applications/Positron.app/Contents/Resources/app/quarto/bin/tools/aarch64"
Rscript -e 'pkgdown::build_site(preview = FALSE)'      # full build
# or a single article: Rscript -e 'pkgdown::build_article("explore")'
open docs/index.html
```

Toolchain notes: R 4.6.0; pandoc is **not** on PATH — point at
Positron’s bundled copy via `RSTUDIO_PANDOC` (above). Installed for this
work: pkgdown, ggmap, plotly, htmlwidgets, hexSticker, + tidyverse pkgs.
Data for pre-rendering lives in `data-raw/release-assets/`
(git-ignored).

------------------------------------------------------------------------

## ✅ Done

- Config: `NEWS.md`, `inst/CITATION` (CMPS DOI), `_pkgdown.yml`,
  `DESCRIPTION` bumped to 1.0.0.
- Reference index: 7 groups; enriched roxygen
  (`@format`/`@source`/`@references`) on all 14 getters.
- New exported helpers:
  [`get_province_boundaries()`](https://gl-smith.github.io/VietnamWarData/reference/get_province_boundaries.md),
  [`get_satellite_map()`](https://gl-smith.github.io/VietnamWarData/reference/get_satellite_map.md)
  (API wrapper — ships no imagery).
- Fixed `get_vciia` broken cross-ref + corrected `get_basfa` docs
  (returns tibble w/ `geometry` sfc).
- Documentation menu: 13 NARA guide PDFs (`pkgdown/assets/guides/`).
- **Vignettes** tab (6): province choropleth, satellite maps, BASFA base
  areas, HES hamlet security (combines HAMLA + HES-70/71 on the hamlet
  category), SEAFA unit locations (incl. 1/11 ACR track), incident
  counts.
- **Explore** tab: interactive plotly page (animated density heatmap +
  counts), bundled pre-aggregated data.
- **Articles** tab: CMPS preprint PDF + ISQ 2026 placeholder. PDF links
  open in new tab (all 14).
- Hex logo (`man/figures/logo.png`); Vignettes index heading override;
  “Sabotage” label fix; Title Case headers.
- **Google Maps TOS resolved (Option B):** no imagery bundled;
  [`get_satellite_map()`](https://gl-smith.github.io/VietnamWarData/reference/get_satellite_map.md)
  fetches via user’s API key; attributed static PNGs kept;
  `*_satellite_map.RData` git-ignored + `.Rbuildignore`d.
- **`R CMD check` passes clean (Status: OK)** — fixed the `sf`-Imports
  NOTE by having
  [`get_basfa()`](https://gl-smith.github.io/VietnamWarData/reference/get_basfa.md)
  return a proper `sf` object
  ([`sf::st_as_sf()`](https://r-spatial.github.io/sf/reference/st_as_sf.html));
  BASFA vignette updated accordingly.
- **`Config/Needs/website`** added to DESCRIPTION (CI installs site
  deps); **`docs/` git-ignored** (CI builds/deploys it).

------------------------------------------------------------------------

## ⏳ RESUME HERE — outstanding before go-live

### Manual cleanup (rm is blocked in the agent env — do in Finder/Positron)

Delete the 3 stale tile files (already ignored, so optional/tidiness):

- `inst/extdata/hue_satellite_map.RData`
- `inst/extdata/saigon_satellite_map.RData`
- `inst/extdata/southeast_asia_satellite_map.RData`

### Blockers for deploy

**\#1 docs/ duplication + deploy mechanism.** Resolved: `docs/` is now
git-ignored; the Actions workflow builds & deploys it. (Source assets in
`pkgdown/assets/` are the only committed copies.)

**\#5 CI deps.** `Config/Needs/website` added to DESCRIPTION.

**\#2 Commit** — committed as `7d48801` (“Add pkgdown documentation
website”).

**\#3 Merge/push** — pushed to `gl-smith/VietnamWarData` master (no
divergence; this is the merge). TODO: retire the frozen original folder
`~/Dropbox/r-packages/VietnamWarData/` so there’s one working copy.

**\#4 GitHub Pages — LIVE.** Site published and verified at
<https://gl-smith.github.io/VietnamWarData/> (home, navbar, Explore
plotly page, and hosted CMPS PDF all confirmed; auto-HTTPS on).

### Post-launch / optional

Retire the frozen original folder `~/Dropbox/r-packages/VietnamWarData/`
(it’s now stale vs. origin/master).

Custom domain (optional): `vietnamwardata.org` is NOT registered. To use
it, register it, add GitHub Pages A records (185.199.108-111.153) + AAAA
(2606:50c0:8000-8003::153), set it in Settings \> Pages, then I’ll add a
CNAME file to pkgdown/assets/ + update url:/URL:. Until then, the
github.io URL is canonical.

\#9 confirm Explore density animation in-browser; \#10 finalize Explore
wording (TODO in explore.Rmd).

Note: GO-LIVE.md has uncommitted edits; commit on the next push if you
want it tracked.

### Quality / correctness

**\#8 `R CMD check`** — passes clean (**Status: OK**, 0
errors/warnings/notes).

**\#9 Confirm the Explore density animation** actually animates
in-browser (the `redraw=TRUE` fix). *(needs your eyes)*

**\#10 Finalize Explore wording** — see the `TODO` in
`vignettes/explore.Rmd` setup chunk (page title, tab/section headings,
intro copy are working placeholders). *(needs your wording)*

### Resolved (for reference)

**\#6 Google Maps imagery** — resolved via Option B (see Done).

**\#7 CMPS preprint copyright** — cleared; it’s the author preprint
(green-OA OK), not the SAGE typeset copy.

------------------------------------------------------------------------

## 🟢 Optional polish (can ship without)

README: add logo + site URL (`gl-smith.github.io/VietnamWarData`).

Favicons (pkgdown can generate from the logo).

Roadmap / contributor vignette.

Cleaning-code repo link (commented placeholder in `_pkgdown.yml`).

Swap ISQ 2026 placeholder for a real PDF link when available
(`pkgdown/assets/papers/` + `_pkgdown.yml`).

`get_vciia` bug fix for the ORIGINAL repo (queued as a spawn-task chip).

Residual note: the satellite figures are attributed Google PNGs
(published-figure use). If you want zero residual TOS risk, re-render
those 2 vignettes’ figures on Sentinel-2 Cloudless (CC BY) or the
province outline.

## Possible future vignettes (identified, not built)

Cache lifecycle · cross-dataset linking (HES/DCAS + incidents) ·
temporal trends · DCAS casualties · points→provinces spatial join.
