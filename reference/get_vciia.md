# Download the VCIIA Viet Cong incident dataset

Downloads and caches the Viet Cong Incident in Area (VCIIA) dataset
covering enemy-initiated incidents in South Vietnam from 1965 to 1968.
VCIIA is one of the source files combined in
[`get_comb_inc_dta`](https://gl-smith.github.io/VietnamWarData/reference/get_comb_inc_dta.md).

## Usage

``` r
get_vciia(cache = TRUE, force = FALSE)
```

## Format

A data frame with 29 variables (row count varies by version). Key
variables include:

- sitrep_number:

  Situation report number.

- quarter_of_year:

  Calendar quarter of the incident.

- province_code:

  Province code.

- vc_military_region:

  Viet Cong military region.

- corp_zone_division:

  Corps zone or division area.

- utm_coordinates:

  UTM grid coordinates.

## Source

U.S. National Archives and Records Administration (NARA), College Park,
MD. Electronic records collected by the U.S. Military Assistance
Command, Vietnam (MACV). Source file: Viet Cong Incident in Area
(VCIIA). See Smith (2025) and its Online Appendix for full archival
accession details.

## Arguments

- cache:

  Logical. If `TRUE` (default), the downloaded file is saved locally and
  reused on subsequent calls without re-downloading.

- force:

  Logical. If `TRUE`, re-downloads the file even if a cached copy
  already exists. Default is `FALSE`.

## Value

A data frame with 29 variables. Row count varies by version.

## Details

Each row is a discrete enemy incident.

## References

Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
data." *Conflict Management and Peace Science*.
[doi:10.1177/07388942251391081](https://doi.org/10.1177/07388942251391081)

## See also

[`get_comb_inc_dta`](https://gl-smith.github.io/VietnamWarData/reference/get_comb_inc_dta.md)

## Examples

``` r
if (FALSE) { # \dontrun{
  vciia <- get_vciia()
  head(vciia)
} # }
```
