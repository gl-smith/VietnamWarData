# Download the PSYOPS-A psychological operations dataset

Downloads and caches the Psychological Operations (PSYOPS-A) dataset
covering district-level surface psychological operations activity from
1970 to 1973. For associated aerial sortie records, see
[`get_sortie`](https://gl-smith.github.io/VietnamWarData/reference/get_sortie.md).

## Usage

``` r
get_psyops(cache = TRUE, force = FALSE)
```

## Format

A data frame with 6,957 rows and 45 variables. Key variables include:

- district_id:

  District identifier.

- prov_name:

  Province name.

- dist_name:

  District name.

- dist_population:

  District population.

- num_gvn_loyal_population:

  Population loyal to the Government of Vietnam (GVN).

- num_hoi_chanh_ralliers:

  Number of Hoi Chanh ralliers (Chieu Hoi program).

## Source

U.S. National Archives and Records Administration (NARA), College Park,
MD. Electronic records collected by the U.S. Military Assistance
Command, Vietnam (MACV). Source file: Psychological Operations
Information System, surface operations (PSYOPS-A). See Smith (2025) and
its Online Appendix for full archival accession details.

## Arguments

- cache:

  Logical. If `TRUE` (default), the downloaded file is saved locally and
  reused on subsequent calls without re-downloading.

- force:

  Logical. If `TRUE`, re-downloads the file even if a cached copy
  already exists. Default is `FALSE`.

## Value

A data frame with 6,957 rows and 45 variables.

## Details

Each row is a district-period record.

## References

Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
data." *Conflict Management and Peace Science*.
[doi:10.1177/07388942251391081](https://doi.org/10.1177/07388942251391081)

## See also

[`get_sortie`](https://gl-smith.github.io/VietnamWarData/reference/get_sortie.md)

## Examples

``` r
if (FALSE) { # \dontrun{
  psyops <- get_psyops()
  head(psyops)
} # }
```
