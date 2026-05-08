pkgname <- "VietnamWarData"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('VietnamWarData')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("get_basfa")
### * get_basfa

flush(stderr()); flush(stdout())

### Name: get_basfa
### Title: Download the BASFA base area status dataset
### Aliases: get_basfa

### ** Examples

## Not run: 
##D   basfa <- get_basfa()
##D   head(basfa)
## End(Not run)



cleanEx()
nameEx("get_conga")
### * get_conga

flush(stderr()); flush(stdout())

### Name: get_conga
### Title: Download the CONGA naval gunfire mission dataset
### Aliases: get_conga

### ** Examples

## Not run: 
##D   conga <- get_conga()
##D   head(conga)
## End(Not run)



cleanEx()
nameEx("get_dcas")
### * get_dcas

flush(stderr()); flush(stdout())

### Name: get_dcas
### Title: Download the DCAS casualty dataset
### Aliases: get_dcas

### ** Examples

## Not run: 
##D   dcas <- get_dcas()
##D   head(dcas)
## End(Not run)



cleanEx()
nameEx("get_ground_combat")
### * get_ground_combat

flush(stderr()); flush(stdout())

### Name: get_ground_combat
### Title: Download the combined ground combat incident dataset
### Aliases: get_ground_combat

### ** Examples

## Not run: 
##D   gc <- get_ground_combat()
##D   head(gc)
## End(Not run)



cleanEx()
nameEx("get_hes70")
### * get_hes70

flush(stderr()); flush(stdout())

### Name: get_hes70
### Title: Download the HES-70/71 hamlet evaluation dataset
### Aliases: get_hes70

### ** Examples

## Not run: 
##D   hes70 <- get_hes70()
##D   head(hes70)
## End(Not run)



cleanEx()
nameEx("get_hes_hamla")
### * get_hes_hamla

flush(stderr()); flush(stdout())

### Name: get_hes_hamla
### Title: Download the HES-HAMLA hamlet evaluation dataset
### Aliases: get_hes_hamla

### ** Examples

## Not run: 
##D   hamla <- get_hes_hamla()
##D   head(hamla)
## End(Not run)



cleanEx()
nameEx("get_nasva")
### * get_nasva

flush(stderr()); flush(stdout())

### Name: get_nasva
### Title: Download the NASVA naval surveillance dataset
### Aliases: get_nasva

### ** Examples

## Not run: 
##D   nasva <- get_nasva()
##D   head(nasva)
## End(Not run)



cleanEx()
nameEx("get_psyops")
### * get_psyops

flush(stderr()); flush(stdout())

### Name: get_psyops
### Title: Download the PSYOPS-A psychological operations dataset
### Aliases: get_psyops

### ** Examples

## Not run: 
##D   psyops <- get_psyops()
##D   head(psyops)
## End(Not run)



cleanEx()
nameEx("get_seafa")
### * get_seafa

flush(stderr()); flush(stdout())

### Name: get_seafa
### Title: Download the SEAFA unit location dataset
### Aliases: get_seafa

### ** Examples

## Not run: 
##D   seafa <- get_seafa()
##D   head(seafa)
## End(Not run)



cleanEx()
nameEx("get_sitra")
### * get_sitra

flush(stderr()); flush(stdout())

### Name: get_sitra
### Title: Download the SITRA ground combat incident dataset
### Aliases: get_sitra

### ** Examples

## Not run: 
##D   sitra <- get_sitra()
##D   head(sitra)
## End(Not run)



cleanEx()
nameEx("get_sortie")
### * get_sortie

flush(stderr()); flush(stdout())

### Name: get_sortie
### Title: Download the PSYOPS sortie dataset
### Aliases: get_sortie

### ** Examples

## Not run: 
##D   sortie <- get_sortie()
##D   head(sortie)
## End(Not run)



cleanEx()
nameEx("get_tirsa")
### * get_tirsa

flush(stderr()); flush(stdout())

### Name: get_tirsa
### Title: Download the TIRSA tactical incident dataset
### Aliases: get_tirsa

### ** Examples

## Not run: 
##D   tirsa <- get_tirsa()
##D   head(tirsa)
## End(Not run)



cleanEx()
nameEx("get_vciia")
### * get_vciia

flush(stderr()); flush(stdout())

### Name: get_vciia
### Title: Download the VCIIA Viet Cong incident dataset
### Aliases: get_vciia

### ** Examples

## Not run: 
##D   vciia <- get_vciia()
##D   head(vciia)
## End(Not run)



cleanEx()
nameEx("get_vndba")
### * get_vndba

flush(stderr()); flush(stdout())

### Name: get_vndba
### Title: Download the VNDBA Vietnam attack incident dataset
### Aliases: get_vndba

### ** Examples

## Not run: 
##D   vndba <- get_vndba()
##D   head(vndba)
## End(Not run)



cleanEx()
nameEx("vw_cache_path")
### * vw_cache_path

flush(stderr()); flush(stdout())

### Name: vw_cache_path
### Title: Return the path to the local data cache
### Aliases: vw_cache_path

### ** Examples

vw_cache_path()



cleanEx()
nameEx("vw_clear_cache")
### * vw_clear_cache

flush(stderr()); flush(stdout())

### Name: vw_clear_cache
### Title: Delete all locally cached Vietnam War data files
### Aliases: vw_clear_cache

### ** Examples

## Not run: 
##D   vw_clear_cache()
## End(Not run)



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
