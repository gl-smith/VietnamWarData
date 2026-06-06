# Download the DCAS casualty dataset

Downloads and caches the Defense Casualty Analysis System (DCAS) Vietnam
Conflict Extract Data File, recording U.S. military personnel killed in
the Vietnam War (records span 1956 to 2006).

## Usage

``` r
get_dcas(cache = TRUE, force = FALSE)
```

## Format

A data frame with 58,220 rows and 55 variables. Key variables include:

- member_name:

  Name of the service member.

- member_service_code:

  Service branch code.

- member_service_name:

  Service branch.

- member_rank_or_rate:

  Rank or rate.

- person_type_name:

  Personnel category.

- member_component_code:

  Service component code.

## Source

U.S. National Archives and Records Administration (NARA), College Park,
MD. Defense Casualty Analysis System (DCAS) Vietnam Conflict Extract
Data File. See Smith (2025) and its Online Appendix for full archival
accession details.

## Arguments

- cache:

  Logical. If `TRUE` (default), the downloaded file is saved locally and
  reused on subsequent calls without re-downloading.

- force:

  Logical. If `TRUE`, re-downloads the file even if a cached copy
  already exists. Default is `FALSE`.

## Value

A data frame with 58,220 rows and 55 variables.

## Details

Each row is an individual service member casualty record.

## References

Smith, Gregory L. (2025). "Beyond body counts: Vietnam war ground combat
data." *Conflict Management and Peace Science*.
[doi:10.1177/07388942251391081](https://doi.org/10.1177/07388942251391081)

## Examples

``` r
if (FALSE) { # \dontrun{
  dcas <- get_dcas()
  head(dcas)
} # }
```
