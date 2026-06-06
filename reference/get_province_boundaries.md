# Load 1966 South Vietnam province boundaries

Returns an `sf` polygon layer of the 45 provinces of South Vietnam as
configured in 1966, together with their corps tactical zone. The layer
ships with the package (no download required) and is intended for
mapping the incident- and hamlet-level datasets, whose `prov_name` field
uses the same province names.

## Usage

``` r
get_province_boundaries()
```

## Source

Province boundaries digitized for South Vietnam circa 1966, based on the
Empirical Studies of Conflict (ESOC) Southeast Asia province layer.
Distributed with this package in `inst/extdata`.

## Value

An `sf` data frame with 45 rows and the columns `prov_name`, `corp`, and
`geometry` (`sfc_MULTIPOLYGON` / `sfc_POLYGON`).

## Details

The boundaries are stored in WGS 84 (EPSG:4326). The `prov_name` column
joins directly to the `prov_name` variable in
[`get_comb_inc_dta`](https://gl-smith.github.io/VietnamWarData/reference/get_comb_inc_dta.md)
and other province-coded datasets; the `corp` column gives the corps
tactical zone (I, II, III, or IV Corps).

## References

Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
data." *Conflict Management and Peace Science*.
[doi:10.1177/07388942251391081](https://doi.org/10.1177/07388942251391081)

## See also

[`get_comb_inc_dta`](https://gl-smith.github.io/VietnamWarData/reference/get_comb_inc_dta.md)

## Examples

``` r
if (FALSE) { # \dontrun{
  provinces <- get_province_boundaries()
  plot(provinces["corp"])
} # }
```
