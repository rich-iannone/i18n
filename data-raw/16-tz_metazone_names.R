library(dplyr)
library(jsonlite)
library(readr)
library(progress)

source("data-raw/00-version_tag.R")
source("data-raw/01-locales.R")

tz_metazone_names_tbl <- dplyr::tibble()

pb <- progress_bar$new(total = length(all_locales))

for (i in seq_along(all_locales)) {
  
  tz_metazone_names <- 
    file.path(
      "https://raw.githubusercontent.com/unicode-org/cldr-json",
      version_tag, "cldr-json/cldr-dates-full/main", 
      all_locales[i], 
      "timeZoneNames.json"
    )
  
  tz_metazone_names_data <-
    jsonlite::fromJSON(
      tz_metazone_names,
      flatten = TRUE,
      simplifyDataFrame = TRUE
    )
  
  metazone_names_data <- tz_metazone_names_data$main[[1]]$dates$timeZoneNames$metazone
  
  tz_metazone_tbl_row_i <- 
    tibble::enframe(metazone_names_data) %>%
    tidyr::pivot_wider(names_from = name) %>%
    dplyr::mutate(locale = all_locales[i]) %>%
    dplyr::select(locale, dplyr::everything())
  
  # Append row to main table
  tz_metazone_names_tbl <- dplyr::bind_rows(tz_metazone_names_tbl, tz_metazone_tbl_row_i)
  
  pb$tick()
}

readr::write_rds(
  tz_metazone_names_tbl,
  file = "data-raw/tz_metazone_names.rds",
  compress = "xz"
)

rm(
  tz_metazone_names_tbl, tz_metazone_names, tz_metazone_names_data,
  metazone_names_data, tz_metazone_tbl_row_i, i, pb
)
