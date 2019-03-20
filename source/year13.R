# create 2013 object

# dependencies
library(compstatr)
library(dplyr)
library(here)
library(readr)
library(usethis)

# import each month and take first 20 rows
read_csv(here("data", "raw", "2013", "january2013.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2013", "january2013.csv"))

read_csv(here("data", "raw", "2013", "february2013.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2013", "february2013.csv"))

read_csv(here("data", "raw", "2013", "march2013.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2013", "march2013.csv"))

read_csv(here("data", "raw", "2013", "april2013.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2013", "april2013.csv"))

read_csv(here("data", "raw", "2013", "may2013.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2013", "may2013.csv"))

read_csv(here("data", "raw", "2013", "june2013.csv"))  %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2013", "june2013.csv"))

read_csv(here("data", "raw", "2013", "july2013.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2013", "july2013.csv"))

read_csv(here("data", "raw", "2013", "august2013.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2013", "august2013.csv"))

read_csv(here("data", "raw", "2013", "september2013.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2013", "september2013.csv"))

read_csv(here("data", "raw", "2013", "october2013.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2013", "october2013.csv"))

read_csv(here("data", "raw", "2013", "november2013.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2013", "november2013.csv"))

read_csv(here("data", "raw", "2013", "december2013.csv")) %>%
  slice(1:20) %>%
  write_csv(here("data", "intermediate", "2013", "december2013.csv"))

yearList13 <- cs_load_year(path = here("data", "intermediate", "2013"))

use_data(yearList13)


