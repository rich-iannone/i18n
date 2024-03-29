library(dplyr)
library(jsonlite)
library(readr)
library(usethis)

source("data-raw/01-locales.R")
source("data-raw/02-default_locales.R")
source("data-raw/03-locale_names.R")
source("data-raw/04-dates.R")
source("data-raw/05-dates_generic.R")
source("data-raw/06-numbers.R")
source("data-raw/07-currencies.R")
source("data-raw/08-characters.R")
source("data-raw/09-character_labels.R")
source("data-raw/10-delimiters.R")
source("data-raw/11-layout.R")
source("data-raw/12-script_metadata.R")
source("data-raw/13-units.R")
source("data-raw/14-num_system_digits.R")
source("data-raw/15-day_periods.R")
source("data-raw/16-start_of_week.R")
source("data-raw/17-tz_exemplar.R")
source("data-raw/18-tz_metazone_names.R")
source("data-raw/19-tz_metazone_users.R")
source("data-raw/20-tz_map.R")
source("data-raw/21-tz_formats.R")
source("data-raw/22-tz_bcp_id.R")

all_locales <- readRDS("data-raw/all_locales.rds")
all_currency_codes <- readRDS("data-raw/all_currency_codes.rds")
default_locales <- readRDS("data-raw/default_locales.rds")
locale_names <- readRDS("data-raw/locale_names.rds")
dates <- readRDS("data-raw/dates.rds")
dates_generic <- readRDS("data-raw/dates_generic.rds")
numbers <- readRDS("data-raw/numbers.rds")
currencies <- readRDS("data-raw/currencies.rds")
characters <- readRDS("data-raw/characters.rds")
character_labels <- readRDS("data-raw/character_labels.rds")
delimiters <- readRDS("data-raw/delimiters.rds")
layout <- readRDS("data-raw/layout.rds")
script_metadata <- readRDS("data-raw/script_metadata.rds")
units <- readRDS("data-raw/units.rds")
num_system_digits <- readRDS("data-raw/num_system_digits.rds")
day_periods <- readRDS("data-raw/day_periods.rds")
start_of_week <- readRDS("data-raw/start_of_week.rds")
tz_exemplar <- readRDS("data-raw/tz_exemplar.rds")
tz_metazone_names <- readRDS("data-raw/tz_metazone_names.rds")
tz_metazone_users <- readRDS("data-raw/tz_metazone_users.rds")
tz_map <- readRDS("data-raw/tz_map.rds")
tz_formats <- readRDS("data-raw/tz_formats.rds")
tz_bcp_id <- readRDS("data-raw/tz_bcp_id.rds")

# Create external datasets
usethis::use_data(
  all_locales,
  all_currency_codes,
  default_locales,
  locale_names,
  dates,
  dates_generic,
  numbers,
  currencies,
  characters,
  character_labels,
  delimiters,
  layout,
  script_metadata,
  units,
  num_system_digits,
  day_periods,
  start_of_week,
  tz_exemplar,
  tz_metazone_names,
  tz_metazone_users,
  tz_map,
  tz_formats,
  tz_bcp_id,
  internal = FALSE, overwrite = TRUE, compress = "xz"
)
