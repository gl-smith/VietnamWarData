# Package index

## Ground Combat

Incident-level ground combat operations in Southeast Asia. The combined
database joins the four major source files into one standardized table.

- [`get_comb_inc_dta()`](https://gl-smith.github.io/VietnamWarData/reference/get_comb_inc_dta.md)
  : Download the combined incident-level dataset
- [`get_vndba()`](https://gl-smith.github.io/VietnamWarData/reference/get_vndba.md)
  : Download the VNDBA Vietnam attack incident dataset
- [`get_sitra()`](https://gl-smith.github.io/VietnamWarData/reference/get_sitra.md)
  : Download the SITRA ground combat incident dataset
- [`get_tirsa()`](https://gl-smith.github.io/VietnamWarData/reference/get_tirsa.md)
  : Download the TIRSA tactical incident dataset
- [`get_vciia()`](https://gl-smith.github.io/VietnamWarData/reference/get_vciia.md)
  : Download the VCIIA Viet Cong incident dataset

## Naval Operations

Naval gunfire support and coastal surveillance operations.

- [`get_conga()`](https://gl-smith.github.io/VietnamWarData/reference/get_conga.md)
  : Download the CONGA naval gunfire mission dataset
- [`get_nasva()`](https://gl-smith.github.io/VietnamWarData/reference/get_nasva.md)
  : Download the NASVA naval surveillance dataset

## Personnel & Casualties

US military fatal casualty records.

- [`get_dcas()`](https://gl-smith.github.io/VietnamWarData/reference/get_dcas.md)
  : Download the DCAS casualty dataset

## Territory & Control

Unit locations, enemy base areas, and hamlet security assessments.

- [`get_seafa()`](https://gl-smith.github.io/VietnamWarData/reference/get_seafa.md)
  : Download the SEAFA unit location dataset
- [`get_basfa()`](https://gl-smith.github.io/VietnamWarData/reference/get_basfa.md)
  : Download the BASFA base area status dataset
- [`get_hes_hamla()`](https://gl-smith.github.io/VietnamWarData/reference/get_hes_hamla.md)
  : Download the HES-HAMLA hamlet evaluation dataset
- [`get_hes70()`](https://gl-smith.github.io/VietnamWarData/reference/get_hes70.md)
  : Download the HES-70/71 hamlet evaluation dataset

## Psychological Operations

Surface and aerial psychological operations.

- [`get_psyops()`](https://gl-smith.github.io/VietnamWarData/reference/get_psyops.md)
  : Download the PSYOPS-A psychological operations dataset
- [`get_sortie()`](https://gl-smith.github.io/VietnamWarData/reference/get_sortie.md)
  : Download the PSYOPS sortie dataset

## Mapping

Province/corps boundaries and a Google satellite basemap helper (the
helper fetches imagery via your own API key; nothing is bundled).

- [`get_province_boundaries()`](https://gl-smith.github.io/VietnamWarData/reference/get_province_boundaries.md)
  : Load 1966 South Vietnam province boundaries
- [`get_satellite_map()`](https://gl-smith.github.io/VietnamWarData/reference/get_satellite_map.md)
  : Fetch a Google satellite basemap for a preset area

## Cache Utilities

Inspect and manage the local data cache.

- [`vw_cache_path()`](https://gl-smith.github.io/VietnamWarData/reference/vw_cache_path.md)
  : Return the path to the local data cache
- [`vw_clear_cache()`](https://gl-smith.github.io/VietnamWarData/reference/vw_clear_cache.md)
  : Delete all locally cached Vietnam War data files
