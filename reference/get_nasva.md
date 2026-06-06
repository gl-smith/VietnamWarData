# Download the NASVA naval surveillance dataset

Downloads and caches the NASVA naval activity and surveillance dataset
covering coastal surveillance operations in Vietnam (including
Operations Market Time and Game Warden) from 1966 to 1972.

## Usage

``` r
get_nasva(cache = TRUE, force = FALSE)
```

## Format

A data frame with 670,242 rows and 69 variables. Key variables include:

- reporting_date:

  Date of the surveillance report.

- task_unit_code:

  Task unit code.

- operation_code:

  Operation code.

- area_designation_code_of_surveillance_area:

  Surveillance area designation code.

## Source

U.S. National Archives and Records Administration (NARA), College Park,
MD. Electronic records collected by the U.S. Military Assistance
Command, Vietnam (MACV). Source file: Naval Surveillance Activities
(NASVA). See Smith (2025) and its Online Appendix for full archival
accession details.

## Arguments

- cache:

  Logical. If `TRUE` (default), the downloaded file is saved locally and
  reused on subsequent calls without re-downloading.

- force:

  Logical. If `TRUE`, re-downloads the file even if a cached copy
  already exists. Default is `FALSE`.

## Value

A data frame with 670,242 rows and 69 variables.

## Details

Each row is a surveillance report record.

## References

Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
data." *Conflict Management and Peace Science*.
[doi:10.1177/07388942251391081](https://doi.org/10.1177/07388942251391081)

## Examples

``` r
if (FALSE) { # \dontrun{
  nasva <- get_nasva()
  head(nasva)
} # }
```
