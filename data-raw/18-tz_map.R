library(dplyr)
library(jsonlite)
library(readr)

source("data-raw/00-version_tag.R")
source("data-raw/01-locales.R")

tz_map <- 
  file.path(
    "https://raw.githubusercontent.com/unicode-org/cldr-json",
    version_tag, "cldr-json/cldr-core/supplemental/", 
    "windowsZones.json"
  )
  
tz_map_data <-
  jsonlite::fromJSON(
    tz_map,
    flatten = TRUE,
    simplifyDataFrame = TRUE
  )
  
map_data_all <- 
  dplyr::as_tibble(tz_map_data$supplemental$windowsZones[[1]]) %>%
  dplyr::rename(
    canonical_tz_name = mapZone._type,
    territory = mapZone._territory,
    tz_name = mapZone._other
  ) %>%
  dplyr::select(canonical_tz_name, territory, tz_name) %>%
  tidyr::separate_rows(canonical_tz_name, sep = " ") %>%
  dplyr::arrange(canonical_tz_name, territory) %>%
  dplyr::distinct()

readr::write_rds(
  map_data_all,
  file = "data-raw/tz_map.rds",
  compress = "xz"
)

rm(tz_map, tz_map_data, map_data_all)
