# Download the VNDBA Vietnam attack incident dataset

Downloads and caches the Vietnam Database of Attacks (VNDBA) covering
enemy-initiated incidents against allied and civilian targets in South
Vietnam from 1963 to 1969. VNDBA was part of the OPSANAL system and is
one of the four source files combined in
[`get_comb_inc_dta`](https://gl-smith.github.io/VietnamWarData/reference/get_comb_inc_dta.md).

## Usage

``` r
get_vndba(cache = TRUE, force = FALSE)
```

## Format

A data frame with 365,015 rows and 108 variables. Key variables include:

- sitrep_number:

  Situation report number.

- initiating_side:

  Side that initiated the incident.

- corp:

  Corps tactical zone.

- corp_zone_division:

  Corps zone or division area.

- arvn_divisional_area:

  ARVN divisional area.

## Source

U.S. National Archives and Records Administration (NARA), College Park,
MD. Electronic records collected by the U.S. Military Assistance
Command, Vietnam (MACV). Source file: Vietnam Database of Attacks
(VNDBA), OPSANAL system. See Smith (2025) and its Online Appendix for
full archival accession details.

## Arguments

- cache:

  Logical. If `TRUE` (default), the downloaded file is saved locally and
  reused on subsequent calls without re-downloading.

- force:

  Logical. If `TRUE`, re-downloads the file even if a cached copy
  already exists. Default is `FALSE`.

## Value

A data frame with 365,015 rows and 108 variables.

## Details

Each row is a discrete incident report.

## References

Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
data." *Conflict Management and Peace Science*.
[doi:10.1177/07388942251391081](https://doi.org/10.1177/07388942251391081)

## See also

[`get_comb_inc_dta`](https://gl-smith.github.io/VietnamWarData/reference/get_comb_inc_dta.md)

## Examples

``` r
if (FALSE) { # \dontrun{
  vndba <- get_vndba()
  head(vndba)
} # }
```
