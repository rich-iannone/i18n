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
  
map_data_all <- tz_map_data$supplemental$windowsZones[[1]]

colnames(map_data_all) <- 
  c("mapzone_other", "mapzone_type", "mapzone_territory")

readr::write_rds(
  map_data_all,
  file = "data-raw/tz_map.rds",
  compress = "xz"
)

rm(tz_map, tz_map_data, map_data_all)
