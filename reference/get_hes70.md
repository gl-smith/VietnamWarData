# Download the HES-70/71 hamlet evaluation dataset

Downloads and caches the Hamlet Evaluation System data from the HES-70
and HES-71 instruments, covering monthly hamlet-level security and
development assessments from 1969 to 1974. For the 1967-1969 HAMLA
period, see
[`get_hes_hamla`](https://gl-smith.github.io/VietnamWarData/reference/get_hes_hamla.md).

## Usage

``` r
get_hes70(cache = TRUE, force = FALSE)
```

## Format

A data frame with 693,862 rows and 160 variables. Key variables include:

- us_hamlet_id:

  U.S. hamlet identifier.

- corps_region_code:

  Corps region code.

- province_code:

  Province code.

- district_code:

  District code.

- village_code:

  Village code.

- hamlet_code:

  Hamlet code.

- rectp_record_type:

  Record type.

- date:

  Evaluation month.

## Source

U.S. National Archives and Records Administration (NARA), College Park,
MD (RG 472). Electronic records collected by the U.S. Military
Assistance Command, Vietnam (MACV). Source files: Hamlet Evaluation
System HES-70 and HES-71. See Smith (2025) and its Online Appendix for
full archival accession details.

## Arguments

- cache:

  Logical. If `TRUE` (default), the downloaded file is saved locally and
  reused on subsequent calls without re-downloading.

- force:

  Logical. If `TRUE`, re-downloads the file even if a cached copy
  already exists. Default is `FALSE`.

## Value

A data frame with 693,862 rows and 160 variables.

## Details

Each row is a hamlet-month evaluation record.

## References

Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
data." *Conflict Management and Peace Science*.
[doi:10.1177/07388942251391081](https://doi.org/10.1177/07388942251391081)

## See also

[`get_hes_hamla`](https://gl-smith.github.io/VietnamWarData/reference/get_hes_hamla.md)

## Examples

``` r
if (FALSE) { # \dontrun{
  hes70 <- get_hes70()
  head(hes70)
} # }
```
