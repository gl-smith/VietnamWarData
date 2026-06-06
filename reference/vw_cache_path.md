# Return the path to the local data cache

Returns the directory where `VietnamWarData` stores downloaded files.
Useful for inspecting or manually managing cached data.

## Usage

``` r
vw_cache_path()
```

## Value

A character string giving the cache directory path.

## Examples

``` r
vw_cache_path()
#> [1] "/home/runner/.cache/R/VietnamWarData"
```
