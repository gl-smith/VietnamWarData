# Download the SEAFA unit location dataset

Downloads and caches the Southeast Asia Forces Activity (SEAFA) dataset
recording monthly locations of American, South Vietnamese, and Allied
maneuver battalions in Southeast Asia from 1966 to 1972.

## Usage

``` r
get_seafa(cache = TRUE, force = FALSE)
```

## Format

A data frame with 15 variables (row count varies by version). Key
variables include:

- unit_number:

  Unit number.

- record_date:

  Date of the location record.

- unit_name:

  Unit name.

- province:

  Province.

- lat, lng:

  Geographic coordinates.

- vc_military_region:

  Viet Cong military region.

## Source

U.S. National Archives and Records Administration (NARA), College Park,
MD. Electronic records collected by the U.S. Military Assistance
Command, Vietnam (MACV). Source file: Southeast Asia Forces Activity
(SEAFA). See Smith (2025) and its Online Appendix for full archival
accession details.

## Arguments

- cache:

  Logical. If `TRUE` (default), the downloaded file is saved locally and
  reused on subsequent calls without re-downloading.

- force:

  Logical. If `TRUE`, re-downloads the file even if a cached copy
  already exists. Default is `FALSE`.

## Value

A data frame with 15 variables. Row count varies by version.

## Details

Each row is a unit location record.

## References

Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
data." *Conflict Management and Peace Science*.
[doi:10.1177/07388942251391081](https://doi.org/10.1177/07388942251391081)

## Examples

``` r
if (FALSE) { # \dontrun{
  seafa <- get_seafa()
  head(seafa)
} # }
```
