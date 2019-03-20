
# dependencies
library(compstatr)
library(fs)
library(here)
library(readr)
library(usethis)

# load data
load(file = here("data", "year17.rda"))

## create temp directory with data subdir
tmpdir <- tempdir()
dir_create(paste0(tmpdir,"/data"))

## write files
write_csv(jan17, path = paste0(tmpdir,"/data/january2017.csv"))
write_csv(feb17, path = paste0(tmpdir,"/data/february2017.csv"))
write_csv(mar17, path = paste0(tmpdir,"/data/march2017.csv"))
write_csv(apr17, path = paste0(tmpdir,"/data/april2017.csv"))
write_csv(may17, path = paste0(tmpdir,"/data/may2017.csv"))
write_csv(jun17, path = paste0(tmpdir,"/data/june2017.csv"))
write_csv(jul17, path = paste0(tmpdir,"/data/july2017.csv"))
write_csv(aug17, path = paste0(tmpdir,"/data/august2017.csv"))
write_csv(sep17, path = paste0(tmpdir,"/data/september2017.csv"))
write_csv(oct17, path = paste0(tmpdir,"/data/october2017.csv"))
write_csv(nov17, path = paste0(tmpdir,"/data/november2017.csv"))
write_csv(dec17, path = paste0(tmpdir,"/data/december2017.csv"))

# rename file
file_move(paste0(tmpdir,"/data/january2017.csv"), paste0(tmpdir,"/data/january2017.CSV.html"))
file_move(paste0(tmpdir,"/data/february2017.csv"), paste0(tmpdir,"/data/february2017.CSV.html"))
file_move(paste0(tmpdir,"/data/march2017.csv"), paste0(tmpdir,"/data/march2017.CSV.html"))
file_move(paste0(tmpdir,"/data/april2017.csv"), paste0(tmpdir,"/data/april2017.CSV.html"))
file_move(paste0(tmpdir,"/data/may2017.csv"), paste0(tmpdir,"/data/may2017.CSV.html"))
file_move(paste0(tmpdir,"/data/june2017.csv"), paste0(tmpdir,"/data/june2017.CSV.html"))
file_move(paste0(tmpdir,"/data/july2017.csv"), paste0(tmpdir,"/data/july2017.CSV.html"))
file_move(paste0(tmpdir,"/data/august2017.csv"), paste0(tmpdir,"/data/august2017.CSV.html"))
file_move(paste0(tmpdir,"/data/september2017.csv"), paste0(tmpdir,"/data/september2017.CSV.html"))
file_move(paste0(tmpdir,"/data/october2017.csv"), paste0(tmpdir,"/data/october2017.CSV.html"))
file_move(paste0(tmpdir,"/data/november2017.csv"), paste0(tmpdir,"/data/november2017.CSV.html"))
file_move(paste0(tmpdir,"/data/december2017.csv"), paste0(tmpdir,"/data/december2017.CSV.html"))

# create results output
prepResults <- cs_prep_year(path = paste0(tmpdir,"/data"), verbose = TRUE)

# save data
use_data(prepResults, overwrite = TRUE)
