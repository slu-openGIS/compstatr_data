# create jauary 2018

# dependencies
library(compstatr)
library(dplyr)
library(here)
library(usethis)

# import raw data
data2018_raw <- cs_load_year(here("data", "raw", "2018"))

# validate
cs_validate(data2018_raw, year = "2018")

# collapse into single object
january2018 <- cs_collapse(data2018_raw)
january2018 <- filter(january2018, coded_month == "2018-01")

# save data
use_data(january2018, overwrite = TRUE)
