library(dplyr)
library(jsonlite)
library(readr)

source("data-raw/00-version_tag.R")

week_data_path <- 
  file.path(
    "https://raw.githubusercontent.com/unicode-org/cldr-json",
    version_tag, "cldr-json/cldr-core/supplemental/weekData.json"
  )

week_data <-
  jsonlite::fromJSON(
    week_data_path,
    flatten = TRUE,
    simplifyDataFrame = TRUE
  )

start_of_week_list <- week_data$supplemental$weekData$firstDay

start_of_week <-
  dplyr::tibble(
    territory = names(start_of_week_list),
    day_of_week = unlist(start_of_week_list)
  )

readr::write_rds(
  start_of_week,
  file = "data-raw/start_of_week.rds",
  compress = "xz"
)

rm(week_data_path, week_data, start_of_week_list, start_of_week)
