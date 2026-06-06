# Download the BASFA base area status dataset

Downloads and caches the Base Area Status File (BASFA) dataset covering
assessments of enemy base areas in South Vietnam, North Vietnam, and
Cambodia from 1967 to 1971.

## Usage

``` r
get_basfa(cache = TRUE, force = FALSE)
```

## Format

An `sf` data frame with 8,784 rows and 36 variables (geometry type
`POLYGON`). Key variables include:

- base_area_id:

  Base area identifier.

- year:

  Year of assessment.

- month:

  Month of assessment.

- province:

  Province.

- vc_military_region:

  Viet Cong military region.

- current_status:

  Current status of the base area.

- geometry:

  Polygon boundary of the base area (`sfc_POLYGON`).

## Source

U.S. National Archives and Records Administration (NARA), College Park,
MD. Electronic records collected by the U.S. Military Assistance
Command, Vietnam (MACV). Source file: Base Area Status File (BASFA). See
Smith (2025) and its Online Appendix for full archival accession
details.

## Arguments

- cache:

  Logical. If `TRUE` (default), the downloaded file is saved locally and
  reused on subsequent calls without re-downloading.

- force:

  Logical. If `TRUE`, re-downloads the file even if a cached copy
  already exists. Default is `FALSE`.

## Value

An `sf` data frame with 8,784 rows and 36 variables (geometry type
`POLYGON`).

## Details

Each row is a monthly base area record. The dataset carries spatial
geometry for the boundaries of 139 enemy base areas, and is returned as
an `sf` object (geometry type `POLYGON`) ready for `geom_sf()` and other
`sf` operations.

## References

Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
data." *Conflict Management and Peace Science*.
[doi:10.1177/07388942251391081](https://doi.org/10.1177/07388942251391081)

## Examples

``` r
if (FALSE) { # \dontrun{
  basfa <- get_basfa()
  head(basfa)
} # }
```
