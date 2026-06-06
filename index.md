# VietnamWarData

An R package for downloading and working with cleaned Vietnam War
datasets declassified by the National Archives and Records
Administration (NARA). The datasets and cleaning procedures are
documented in:

> Smith, Gregory L. “Beyond body counts: Vietnam war ground combat
> data.” *Conflict Management and Peace Science* (2025). DOI:
> [10.1177/07388942251391081](https://doi.org/10.1177/07388942251391081)

## Overview

During the Vietnam War, the Department of Defense implemented an
unprecedented effort to collect data and quantify nearly every aspect of
the conflict. Led by Secretary of Defense Robert McNamara, the US
military devised metrics intended to determine whether they were winning
or losing and to optimize their efforts on the battlefield. The
resulting files document incident-level information on North Vietnamese
Army (NVA) and Viet Cong (VC) attacks across Southeast Asia, Allied
ground combat operations, naval gunfire support, bombing sorties,
estimates of territorial control, and summaries of psychological
operations, among many other topics.

Despite the impressive scale and scope of these collection efforts, most
of the electronic records have been inaccessible to researchers because
of antiquated file formats, indecipherable alphanumeric coding systems,
missing delimiters, zoned-decimal storage, and incomplete geographic
coordinates. This package provides cleaned, analysis-ready versions of
12 of these source files, along with a combined incident-level dataset
that joins the four major ground combat sources into a single
standardized table.

## Installation

``` r

remotes::install_github("gl-smith/VietnamWarData")
```

## Available Datasets

The package provides access to 12 cleaned data files. A summary is
provided below; full details are available in Smith (2025) and the
accompanying Online Appendix.

| Function | Abbreviated Name | Full Name | Period | Description |
|----|----|----|----|----|
| [`get_comb_inc_dta()`](https://gl-smith.github.io/VietnamWarData/reference/get_comb_inc_dta.md) | — | Combined Incident Database | 1963–1973 | Master incident-level dataset joining VNDBA, SITRA, TIRSA, and VCIIA into a single standardized table (638,760 rows, 43 variables) |
| [`get_vndba()`](https://gl-smith.github.io/VietnamWarData/reference/get_vndba.md) | VNDBA | Vietnam Database | 1963–1969 | Ground combat operations in South Vietnam, part of the OPSANAL system (365,015 rows, 108 variables) |
| [`get_sitra()`](https://gl-smith.github.io/VietnamWarData/reference/get_sitra.md) | SITRA | Situation Report Army | 1966–1973 | Records of ground combat operations in Southeast Asia detailing military operations, casualties, and logistics (77 variables) |
| [`get_tirsa()`](https://gl-smith.github.io/VietnamWarData/reference/get_tirsa.md) | TIRSA | Terrorist Incident Reporting System | 1967–1973 | Records of Viet Cong and North Vietnamese incidents against South Vietnamese civilians, part of the OPSANAL system (37 variables) |
| [`get_vciia()`](https://gl-smith.github.io/VietnamWarData/reference/get_vciia.md) | VCIIA | Viet Cong Initiated Incidents Files | 1965–1968 | Data on enemy-initiated incidents during the Vietnam War focused on Viet Cong activities (29 variables) |
| [`get_conga()`](https://gl-smith.github.io/VietnamWarData/reference/get_conga.md) | CONGA | Combat Naval Gunfire Support File | 1966–1973 | Records of naval gunfire support missions in Southeast Asia (161,283 rows, 46 variables) |
| [`get_nasva()`](https://gl-smith.github.io/VietnamWarData/reference/get_nasva.md) | NASVA | Naval Surveillance Activities File | 1966–1972 | Information on Operations Market Time and Game Warden in South Vietnam (670,242 rows, 69 variables) |
| [`get_dcas()`](https://gl-smith.github.io/VietnamWarData/reference/get_dcas.md) | DCAS | Vietnam Conflict Extract Data File | 1956–2006 | Records of 58,220 US military fatal casualties of the Vietnam War (55 variables) |
| [`get_seafa()`](https://gl-smith.github.io/VietnamWarData/reference/get_seafa.md) | SEAFA | Southeast Asia Friendly Forces File | 1966–1972 | Monthly locations of American, South Vietnamese, and Allied maneuver battalions in Southeast Asia (15 variables) |
| [`get_basfa()`](https://gl-smith.github.io/VietnamWarData/reference/get_basfa.md) | BASFA | Enemy Base Area File | 1967–1971 | Geographic boundaries and status of 139 North Vietnamese base areas in South Vietnam, North Vietnam, and Cambodia (36 variables) |
| [`get_hes_hamla()`](https://gl-smith.github.io/VietnamWarData/reference/get_hes_hamla.md) | HES | Hamlet Evaluation System (HAMLA) | 1967–1969 | Monthly hamlet-level security, political, and socioeconomic assessments under the HAMLA instrument (389,505 rows, 76 variables) |
| [`get_hes70()`](https://gl-smith.github.io/VietnamWarData/reference/get_hes70.md) | HES | Hamlet Evaluation System (HES-70/71) | 1969–1974 | Monthly hamlet-level security and development assessments under the HES-70 and HES-71 instruments (693,862 rows, 160 variables) |
| [`get_psyops()`](https://gl-smith.github.io/VietnamWarData/reference/get_psyops.md) | PSYOPS-A | Psychological Operations: Surface | 1970–1973 | District-level records of surface psychological operations (6,957 rows, 45 variables) |
| [`get_sortie()`](https://gl-smith.github.io/VietnamWarData/reference/get_sortie.md) | SORTIE-A | Psychological Operations: Aerial | 1970–1973 | Records of individual aerial psychological operations sorties (41,199 rows, 18 variables) |

## Usage

All download functions share the same interface. Files are cached
locally after the first download so that subsequent calls load from disk
without re-downloading.

``` r

library(VietnamWarData)

# Combined incident-level ground combat database
comb_inc <- get_comb_inc_dta()

# Individual source files
vndba  <- get_vndba()
sitra  <- get_sitra()
tirsa  <- get_tirsa()
vciia  <- get_vciia()

# Naval operations
conga  <- get_conga()
nasva  <- get_nasva()

# Casualties
dcas   <- get_dcas()

# Unit locations and base areas
seafa  <- get_seafa()
basfa  <- get_basfa()

# Hamlet evaluation
hamla  <- get_hes_hamla()
hes70  <- get_hes70()

# Psychological operations
psyops <- get_psyops()
sortie <- get_sortie()
```

### Forcing a re-download

``` r

comb_inc <- get_comb_inc_dta(force = TRUE)
```

### Cache management

``` r

# Show the local cache directory
vw_cache_path()

# Delete all cached files (data will be re-downloaded on next call)
vw_clear_cache()
```

## The Combined Incident Dataset

The
[`get_comb_inc_dta()`](https://gl-smith.github.io/VietnamWarData/reference/get_comb_inc_dta.md)
function returns the master incident-level ground combat database, which
joins the four incident-level source files — VNDBA, SITRA, TIRSA, and
VCIIA — into a single standardized table covering ground combat events
in South Vietnam from 1963 to 1973. The combined dataset was constructed
through six steps: (1) column names were standardized across source
files, (2) actor labels were standardized, (3) a column identifying the
source file was added, (4) incidents were merged, (5) duplicate entries
appearing in multiple source files were removed, and (6) a unique
incident ID was created for each remaining observation.

Key variables in the combined dataset include:

| Variable | Description |
|----|----|
| `master_event_id` | Unique incident identifier |
| `data_file_origin` | Source file (VNDBA, SITRA, TIRSA, or VCIIA) |
| `aggressor_side` | Initiating force (Allied or enemy) |
| `aggressor_sub_group` | Specific unit or group |
| `general_action_category` | Broad action type |
| `enemy_action_category` | Enemy action type (e.g., direct attack, harassment, terrorism, mining) |
| `initiation_date` | Date of incident |
| `initiation_time` | Time of incident |
| `n_friendly_kia` | Number of friendly killed in action |
| `n_friendly_wia` | Number of friendly wounded in action |
| `n_enemy_kia` | Number of enemy killed in action |
| `n_enemy_wia` | Number of enemy wounded in action |
| `prov_name` | Province name |
| `corp` | Corps tactical zone |
| `lat` / `lng` | Geographic coordinates |

Note that the combined dataset does not replace the individual source
files, which contain additional variables not included in the master
table.

## Data Processing

The original NARA files presented significant technical challenges
before they could be used for research. These included antiquated binary
EBCDIC file formats incompatible with modern software, missing
delimiters between data fields, alphanumeric coding systems requiring
hundreds of pages of documentation, zoned-decimal numeric storage,
incomplete military grid reference system (MGRS) coordinates lacking the
zone identifiers needed to convert to latitude and longitude, and fixed
and period set file structures requiring complex merging procedures.

The cleaning pipeline for each file involved: (1) converting binary
files to ASCII, (2) adding delimiters, (3) converting zoned decimals to
integers, (4) merging control, fixed, and period set files, (5) creating
informative column names, (6) reformatting dates and times, (7)
replacing alphanumeric codes with intelligible labels, (8) converting
MGRS coordinates to latitude and longitude, and (9) removing duplicate
entries. Full documentation of each step is provided in Smith (2025) and
the Online Appendix.

## Note on Spatial Data

The
[`get_basfa()`](https://gl-smith.github.io/VietnamWarData/reference/get_basfa.md)
function returns a dataset with spatial geometry columns (`sfc_POLYGON`)
representing the boundaries of North Vietnamese base areas. The `sf`
package is required to work with this data and is installed
automatically as a dependency of `VietnamWarData`.

## Citation

If you use these data in published research, please cite the
accompanying article:

    Smith, Gregory L. "Beyond body counts: Vietnam war ground combat data."
    Conflict Management and Peace Science (2025).
    DOI: 10.1177/07388942251391081

## Data Source

All data files were originally collected by the US Military Assistance
Command Vietnam (MACV) and are archived at the National Archives and
Records Administration (NARA).
