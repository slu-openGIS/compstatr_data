# create 2010 object

# dependencies
library(compstatr)
library(dplyr)
library(here)
library(readr)
library(usethis)

# import each month and take first 20 rows
read_csv(here("data", "raw", "2010", "january2010.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2010", "january2010.csv"))

read_csv(here("data", "raw", "2010", "february2010.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2010", "february2010.csv"))

read_csv(here("data", "raw", "2010", "march2010.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2010", "march2010.csv"))

read_csv(here("data", "raw", "2010", "april2010.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2010", "april2010.csv"))

read_csv(here("data", "raw", "2010", "may2010.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2010", "may2010.csv"))

read_csv(here("data", "raw", "2010", "june2010.csv"))  %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2010", "june2010.csv"))

read_csv(here("data", "raw", "2010", "july2010.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2010", "july2010.csv"))

read_csv(here("data", "raw", "2010", "august2010.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2010", "august2010.csv"))

read_csv(here("data", "raw", "2010", "september2010.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2010", "september2010.csv"))

read_csv(here("data", "raw", "2010", "october2010.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2010", "october2010.csv"))

read_csv(here("data", "raw", "2010", "november2010.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2010", "november2010.csv"))

read_csv(here("data", "raw", "2010", "december2010.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2010", "december2010.csv"))

yearList10 <- cs_load_year(path = here("data", "intermediate", "2010"))

use_data(yearList10)


