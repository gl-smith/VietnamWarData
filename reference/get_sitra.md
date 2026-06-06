# Download the SITRA ground combat incident dataset

Downloads and caches the Situation Report Activity (SITRA) dataset
covering ground combat events reported through allied situation reports
from 1966 to 1973. SITRA is one of the source files combined in
[`get_comb_inc_dta`](https://gl-smith.github.io/VietnamWarData/reference/get_comb_inc_dta.md).

## Usage

``` r
get_sitra(cache = TRUE, force = FALSE)
```

## Format

A data frame with 77 variables (row count varies by version). Key
variables include:

- message_date:

  Date of the situation report message.

- record_id:

  Record identifier.

- data_type:

  Type of record.

- military_region:

  Military region.

- force_nationality:

  Nationality of the reporting force.

- country_code:

  Country code.

## Source

U.S. National Archives and Records Administration (NARA), College Park,
MD. Electronic records collected by the U.S. Military Assistance
Command, Vietnam (MACV). Source file: Situation Report Activity (SITRA).
See Smith (2025) and its Online Appendix for full archival accession
details.

## Arguments

- cache:

  Logical. If `TRUE` (default), the downloaded file is saved locally and
  reused on subsequent calls without re-downloading.

- force:

  Logical. If `TRUE`, re-downloads the file even if a cached copy
  already exists. Default is `FALSE`.

## Value

A data frame with 77 variables. Row count varies by version.

## Details

Each row is a discrete combat incident.

## References

Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
data." *Conflict Management and Peace Science*.
[doi:10.1177/07388942251391081](https://doi.org/10.1177/07388942251391081)

## See also

[`get_comb_inc_dta`](https://gl-smith.github.io/VietnamWarData/reference/get_comb_inc_dta.md)

## Examples

``` r
if (FALSE) { # \dontrun{
  sitra <- get_sitra()
  head(sitra)
} # }
```
