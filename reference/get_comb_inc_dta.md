# Download the combined incident-level dataset

Downloads and caches the master incident-level dataset that joins the
VNDBA, SITRA, TIRSA, and VCIIA source files into a single standardized
table covering ground combat events in South Vietnam from 1963 to 1973.

## Usage

``` r
get_comb_inc_dta(cache = TRUE, force = FALSE)
```

## Format

A data frame with 638,760 rows and 43 variables. Key variables include:

- master_event_id:

  Unique incident identifier.

- data_file_origin:

  Source file (VNDBA, SITRA, TIRSA, or VCIIA).

- aggressor_side:

  Initiating force (Allied or enemy).

- aggressor_sub_group:

  Specific unit or group.

- general_action_category:

  Broad action type.

- enemy_action_category:

  Enemy action type (e.g., direct attack, harassment, terrorism,
  mining).

- initiation_date:

  Date of the incident.

- initiation_time:

  Time of the incident.

- n_friendly_kia:

  Number of friendly killed in action.

- n_friendly_wia:

  Number of friendly wounded in action.

- n_enemy_kia:

  Number of enemy killed in action.

- n_enemy_wia:

  Number of enemy wounded in action.

- prov_name:

  Province name.

- corp:

  Corps tactical zone.

- lat, lng:

  Geographic coordinates.

## Source

U.S. National Archives and Records Administration (NARA), College Park,
MD. Derived from electronic records collected by the U.S. Military
Assistance Command, Vietnam (MACV): the VNDBA, SITRA, TIRSA, and VCIIA
source files. See Smith (2025) and its Online Appendix for full archival
accession details and the construction procedure.

## Arguments

- cache:

  Logical. If `TRUE` (default), the downloaded file is saved locally and
  reused on subsequent calls without re-downloading.

- force:

  Logical. If `TRUE`, re-downloads the file even if a cached copy
  already exists. Default is `FALSE`.

## Value

A data frame with 638,760 rows and 43 variables.

## Details

Each row is a discrete combat incident. The combined dataset was
constructed by standardizing column names and actor labels across the
four source files, tagging each record with its source file, merging the
records, removing duplicate entries appearing in more than one source,
and assigning a unique incident identifier to each remaining
observation. It does not replace the individual source files, which
retain additional variables not carried into the combined table.

## References

Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
data." *Conflict Management and Peace Science*.
[doi:10.1177/07388942251391081](https://doi.org/10.1177/07388942251391081)

## See also

[`get_vndba`](https://gl-smith.github.io/VietnamWarData/reference/get_vndba.md),
[`get_sitra`](https://gl-smith.github.io/VietnamWarData/reference/get_sitra.md),
[`get_tirsa`](https://gl-smith.github.io/VietnamWarData/reference/get_tirsa.md),
[`get_vciia`](https://gl-smith.github.io/VietnamWarData/reference/get_vciia.md)

## Examples

``` r
if (FALSE) { # \dontrun{
  comb_inc <- get_comb_inc_dta()
  head(comb_inc)
} # }
```
