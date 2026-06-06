# Delete all locally cached Vietnam War data files

Removes every file in the `VietnamWarData` cache directory. The next
call to any `get_*()` function will re-download from GitHub.

## Usage

``` r
vw_clear_cache()
```

## Value

Called for its side effect. Returns `invisible(NULL)`.

## Examples

``` r
if (FALSE) { # \dontrun{
  vw_clear_cache()
} # }
```
