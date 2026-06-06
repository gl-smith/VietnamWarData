# Download the TIRSA tactical incident dataset

Downloads and caches the Tactical Incident Report Activity (TIRSA)
dataset covering ground combat incidents reported through tactical
situation reports from 1966 to 1973. TIRSA is one of the source files
combined in
[`get_comb_inc_dta`](https://gl-smith.github.io/VietnamWarData/reference/get_comb_inc_dta.md).

## Usage

``` r
get_tirsa(cache = TRUE, force = FALSE)
```

## Format

A data frame with 37 variables (row count varies by version). Key
variables include:

- incident_id:

  Unique incident identifier.

- message_year:

  Year of the report message.

- message_month:

  Month of the report message.

- message_week:

  Week of the report message.

- date:

  Date of the incident.

- hamlet_id:

  Hamlet identifier.

## Source

U.S. National Archives and Records Administration (NARA), College Park,
MD. Electronic records collected by the U.S. Military Assistance
Command, Vietnam (MACV). Source file: Tactical Incident Report Activity
(TIRSA), OPSANAL system. See Smith (2025) and its Online Appendix for
full archival accession details.

## Arguments

- cache:

  Logical. If `TRUE` (default), the downloaded file is saved locally and
  reused on subsequent calls without re-downloading.

- force:

  Logical. If `TRUE`, re-downloads the file even if a cached copy
  already exists. Default is `FALSE`.

## Value

A data frame with 37 variables. Row count varies by version.

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
  tirsa <- get_tirsa()
  head(tirsa)
} # }
```
