# Explore the Data

This package ships two interactive tools that run **entirely in your
browser** — no R installation or download required. Pick one below.

## [Interactive charts](https://gl-smith.github.io/VietnamWarData/articles/interactive-charts.md)

Animated views of the combined ground-combat database
([`get_comb_inc_dta()`](https://gl-smith.github.io/VietnamWarData/reference/get_comb_inc_dta.md)):

- a year-by-year 2-D density heat map of incidents across South Vietnam,
  and
- enemy incidents by action category and incidents per month over time.

Drag the year slider or press play; hover and zoom. Loads instantly.

[Open the interactive charts
→](https://gl-smith.github.io/VietnamWarData/articles/interactive-charts.md)

## [Casualties explorer](https://gl-smith.github.io/VietnamWarData/casualties-explorer/index.md)

A live app (built with
[shinylive](https://posit-dev.github.io/r-shinylive/)) for the U.S.
fatal-casualty records
([`get_dcas()`](https://gl-smith.github.io/VietnamWarData/reference/get_dcas.md)).
Filter by **service branch**, **state of origin**, and **year of
death**, and every view re-counts to match:

- a choropleth map of casualties by home state,
- casualties over time, and
- the states ranked by casualty count.

Because it runs a small R session inside your browser, the first load
takes a few seconds.

[Open the casualties explorer
→](https://gl-smith.github.io/VietnamWarData/casualties-explorer/index.md)
