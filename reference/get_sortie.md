# Download the PSYOPS sortie dataset

Downloads and caches the PSYOPS Sortie-A dataset recording individual
aerial psychological operations aircraft sorties from 1970 to 1973. For
district-level aggregated PSYOPS data, see
[`get_psyops`](https://gl-smith.github.io/VietnamWarData/reference/get_psyops.md).

## Usage

``` r
get_sortie(cache = TRUE, force = FALSE)
```

## Format

A data frame with 41,199 rows and 18 variables. Key variables include:

- district_id:

  District identifier.

- prov_name:

  Province name.

- dist_name:

  District name.

- date_of_sortie:

  Date of the sortie.

- conducting_agency:

  Agency conducting the sortie.

- unit:

  Unit.

- aircraft_type:

  Aircraft type.

- unique_record_identifier:

  Unique record identifier.

## Source

U.S. National Archives and Records Administration (NARA), College Park,
MD. Electronic records collected by the U.S. Military Assistance
Command, Vietnam (MACV). Source file: Psychological Operations
Information System, aerial sorties (SORTIE-A). See Smith (2025) and its
Online Appendix for full archival accession details.

## Arguments

- cache:

  Logical. If `TRUE` (default), the downloaded file is saved locally and
  reused on subsequent calls without re-downloading.

- force:

  Logical. If `TRUE`, re-downloads the file even if a cached copy
  already exists. Default is `FALSE`.

## Value

A data frame with 41,199 rows and 18 variables.

## Details

Each row is a single sortie record.

## References

Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
data." *Conflict Management and Peace Science*.
[doi:10.1177/07388942251391081](https://doi.org/10.1177/07388942251391081)

## See also

[`get_psyops`](https://gl-smith.github.io/VietnamWarData/reference/get_psyops.md)

## Examples

``` r
if (FALSE) { # \dontrun{
  sortie <- get_sortie()
  head(sortie)
} # }
```
