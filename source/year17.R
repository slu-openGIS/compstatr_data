# create 2017 object

# dependencies
library(dplyr)
library(here)
library(readr)
library(usethis)

# import each month and take first 20 rows
jan17 <- read_csv(here("data", "raw", "2017", "january2017.csv")) %>%
  slice(1:20)

feb17 <- read_csv(here("data", "raw", "2017", "february2017.csv")) %>%
  slice(1:20)

mar17 <- read_csv(here("data", "raw", "2017", "march2017.csv")) %>%
  slice(1:20)

apr17 <- read_csv(here("data", "raw", "2017", "april2017.csv")) %>%
  slice(1:20)

may17 <- read_csv(here("data", "raw", "2017", "may2017.csv")) %>%
  slice(1:20)

jun17 <- read_csv(here("data", "raw", "2017", "june2017.csv"))  %>%
  slice(1:20)

jul17 <- read_csv(here("data", "raw", "2017", "july2017.csv")) %>%
  slice(1:20)

aug17 <- read_csv(here("data", "raw", "2017", "august2017.csv")) %>%
  slice(1:20)

sep17 <- read_csv(here("data", "raw", "2017", "september2017.csv")) %>%
  slice(1:20)

oct17 <- read_csv(here("data", "raw", "2017", "october2017.csv")) %>%
  slice(1:20)

nov17 <- read_csv(here("data", "raw", "2017", "november2017.csv")) %>%
  slice(1:20)

dec17 <- read_csv(here("data", "raw", "2017", "december2017.csv")) %>%
  slice(1:20)

#save to rda file
save(jan17, feb17, mar17, apr17, may17, jun17, jul17, aug17, sep17, nov17, dec17, file = here("data", "year17.rda"))
