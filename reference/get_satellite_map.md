# Fetch a Google satellite basemap for a preset area

Convenience wrapper around
[`ggmap::get_map()`](https://rdrr.io/pkg/ggmap/man/get_map.html) that
retrieves a Google Maps satellite basemap for one of the preset areas
used in Smith (2025). It returns a ggmap raster object suitable as the
first layer of a plot via
[`ggmap::ggmap()`](https://rdrr.io/pkg/ggmap/man/ggmap.html).

## Usage

``` r
get_satellite_map(area = c("se_asia", "saigon", "hue"))
```

## Arguments

- area:

  Which basemap to fetch. One of `"se_asia"`, `"saigon"`, or `"hue"`.

## Value

A `ggmap`/`raster` object.

## Details

This function \*\*downloads imagery from the Google Maps Static API at
call time\*\* — it does not ship or cache any Google imagery with the
package. Google's Maps Platform Terms do not permit redistributing their
map imagery, so you must supply your own (free) API key first:


      ggmap::register_google(key = "YOUR_GOOGLE_MAPS_API_KEY")
      m <- get_satellite_map("hue")
      ggmap::ggmap(m)

The preset areas reproduce the basemaps used in the package's mapping
articles: `"se_asia"` (mainland Southeast Asia), `"saigon"`, and
`"hue"`.

## Note

Requires the ggmap package and a registered Google Maps API key. If you
use these basemaps, please cite ggmap: Kahle, D. and Wickham, H. (2013).
"ggmap: Spatial Visualization with ggplot2." *The R Journal*, 5(1),
144–161. Map imagery \\\copyright\\ Google.

## See also

[`get_comb_inc_dta`](https://gl-smith.github.io/VietnamWarData/reference/get_comb_inc_dta.md),
[`get_province_boundaries`](https://gl-smith.github.io/VietnamWarData/reference/get_province_boundaries.md)

## Examples

``` r
if (FALSE) { # \dontrun{
  ggmap::register_google(key = "YOUR_GOOGLE_MAPS_API_KEY")
  ggmap::ggmap(get_satellite_map("se_asia"))
} # }
```
