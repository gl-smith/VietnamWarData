# Download the HES-HAMLA hamlet evaluation dataset

Downloads and caches the Hamlet Evaluation System data collected under
the HAMLA instrument, covering monthly hamlet-level security, political,
and socioeconomic assessments from 1967 to 1969. For the 1969-1974
period, see
[`get_hes70`](https://gl-smith.github.io/VietnamWarData/reference/get_hes70.md).

## Usage

``` r
get_hes_hamla(cache = TRUE, force = FALSE)
```

## Format

A data frame with 389,505 rows and 76 variables. Key variables include:

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

- date:

  Evaluation month.

- record_type:

  Record type.

## Source

U.S. National Archives and Records Administration (NARA), College Park,
MD (RG 472). Electronic records collected by the U.S. Military
Assistance Command, Vietnam (MACV). Source file: Hamlet Evaluation
System (HAMLA). See Smith (2025) and its Online Appendix for full
archival accession details.

## Arguments

- cache:

  Logical. If `TRUE` (default), the downloaded file is saved locally and
  reused on subsequent calls without re-downloading.

- force:

  Logical. If `TRUE`, re-downloads the file even if a cached copy
  already exists. Default is `FALSE`.

## Value

A data frame with 389,505 rows and 76 variables.

## Details

Each row is a hamlet-month evaluation record.

## References

Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
data." *Conflict Management and Peace Science*.
[doi:10.1177/07388942251391081](https://doi.org/10.1177/07388942251391081)

## See also

[`get_hes70`](https://gl-smith.github.io/VietnamWarData/reference/get_hes70.md)

## Examples

``` r
if (FALSE) { # \dontrun{
  hamla <- get_hes_hamla()
  head(hamla)
} # }
```
