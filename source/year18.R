# create 2018 object

# dependencies
library(compstatr)
library(dplyr)
library(here)
library(readr)
library(usethis)

# import each month and take first 20 rows
read_csv(here("data", "raw", "2018", "january2018.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2018", "january2018.csv"))

read_csv(here("data", "raw", "2018", "february2018.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2018", "february2018.csv"))

read_csv(here("data", "raw", "2018", "march2018.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2018", "march2018.csv"))

read_csv(here("data", "raw", "2018", "april2018.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2018", "april2018.csv"))

read_csv(here("data", "raw", "2018", "may2018.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2018", "may2018.csv"))

read_csv(here("data", "raw", "2018", "june2018.csv"))  %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2018", "june2018.csv"))

read_csv(here("data", "raw", "2018", "july2018.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2018", "july2018.csv"))

read_csv(here("data", "raw", "2018", "august2018.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2018", "august2018.csv"))

read_csv(here("data", "raw", "2018", "september2018.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2018", "september2018.csv"))

read_csv(here("data", "raw", "2018", "october2018.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2018", "october2018.csv"))

read_csv(here("data", "raw", "2018", "november2018.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2018", "november2018.csv"))

read_csv(here("data", "raw", "2018", "december2018.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2018", "december2018.csv"))

yearList18 <- cs_load_year(path = here("data", "intermediate", "2018"))

cs_validate(yearList18, year = 2018)

use_data(yearList18, overwrite = TRUE)

