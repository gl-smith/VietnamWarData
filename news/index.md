# Changelog

## VietnamWarData 1.0.0

- Initial public release.
- 14 cleaned data files from the National Archives and Records
  Administration (NARA), originally collected by the US Military
  Assistance Command Vietnam (MACV): VNDBA, SITRA, TIRSA, VCIIA (ground
  combat incidents); CONGA, NASVA (naval operations); DCAS (US fatal
  casualties); SEAFA, BASFA, HES-HAMLA, HES-70/71 (territory and
  control); PSYOPS-A, SORTIE-A (psychological operations).
- Combined incident-level ground combat database
  ([`get_comb_inc_dta()`](https://gl-smith.github.io/VietnamWarData/reference/get_comb_inc_dta.md)):
  638,760 rows, 43 variables, joining VNDBA, SITRA, TIRSA, and VCIIA
  into a single standardized table covering South Vietnam, 1963–1973.
- Files are downloaded on demand from GitHub Releases and cached
  locally; cache utilities
  [`vw_cache_path()`](https://gl-smith.github.io/VietnamWarData/reference/vw_cache_path.md)
  and
  [`vw_clear_cache()`](https://gl-smith.github.io/VietnamWarData/reference/vw_clear_cache.md)
  manage the local store.
- [`get_basfa()`](https://gl-smith.github.io/VietnamWarData/reference/get_basfa.md)
  returns `sf` geometry for the boundaries of 139 enemy base areas; the
  `sf` package is installed as a dependency.
