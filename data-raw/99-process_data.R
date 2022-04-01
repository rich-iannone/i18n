library(dplyr)
library(jsonlite)
library(readr)
library(usethis)

source("data-raw/01-locales.R")
source("data-raw/02-default_locales.R")
source("data-raw/03-locale_names.R")
source("data-raw/04-dates.R")
source("data-raw/05-numbers.R")
source("data-raw/06-currencies.R")
source("data-raw/07-character_labels.R")
source("data-raw/08-characters.R")
source("data-raw/09-units.R")

all_locales <- readRDS("data-raw/all_locales.rds")
all_currency_codes <- readRDS("data-raw/all_currency_codes.rds")
default_locales <- readRDS("data-raw/default_locales.rds")
locale_names <- readRDS("data-raw/locale_names.rds")
dates <- readRDS("data-raw/dates.rds")
numbers <- readRDS("data-raw/numbers.rds")
currencies <- readRDS("data-raw/currencies.rds")
character_labels <- readRDS("data-raw/character_labels.rds")
characters <- readRDS("data-raw/characters.rds")
units <- readRDS("data-raw/units.rds")

# Create external datasets
usethis::use_data(
  all_locales,
  all_currency_codes,
  default_locales,
  locale_names,
  dates,
  numbers,
  currencies,
  character_labels,
  characters,
  units,
  internal = FALSE, overwrite = TRUE
)

# Create internal datasets
usethis::use_data(
  all_locales,
  all_currency_codes,
  default_locales,
  locale_names,
  dates,
  numbers,
  currencies,
  character_labels,
  characters,
  internal = TRUE, overwrite = TRUE
)

