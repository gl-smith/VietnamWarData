# Download the CONGA naval gunfire mission dataset

Downloads and caches the Combined Naval Gunfire Activity (CONGA) dataset
covering U.S. Navy ship gunfire support missions in the Vietnam War from
1966 to 1973.

## Usage

``` r
get_conga(cache = TRUE, force = FALSE)
```

## Format

A data frame with 161,283 rows and 46 variables. Key variables include:

- mission_firing_date:

  Date of the gunfire mission.

- mission_start_time:

  Start time of the mission.

- ship_name:

  Name of the firing ship.

- ship_type_code:

  Ship type code.

## Source

U.S. National Archives and Records Administration (NARA), College Park,
MD. Electronic records collected by the U.S. Military Assistance
Command, Vietnam (MACV). Source file: Combined Naval Gunfire Activity
(CONGA). See Smith (2025) and its Online Appendix for full archival
accession details.

## Arguments

- cache:

  Logical. If `TRUE` (default), the downloaded file is saved locally and
  reused on subsequent calls without re-downloading.

- force:

  Logical. If `TRUE`, re-downloads the file even if a cached copy
  already exists. Default is `FALSE`.

## Value

A data frame with 161,283 rows and 46 variables.

## Details

Each row is a discrete gunfire mission.

## References

Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
data." *Conflict Management and Peace Science*.
[doi:10.1177/07388942251391081](https://doi.org/10.1177/07388942251391081)

## Examples

``` r
if (FALSE) { # \dontrun{
  conga <- get_conga()
  head(conga)
} # }
```
