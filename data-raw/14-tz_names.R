library(dplyr)
library(jsonlite)
library(readr)

version_tag <- "40.0.0"

source("data-raw/01-locales.R")

tz_names_tbl <- dplyr::tibble()

for (i in seq_along(all_locales)) {
  
  tz_names <- 
    file.path(
      "https://raw.githubusercontent.com/unicode-org/cldr-json",
      version_tag, "cldr-json/cldr-dates-full/main", 
      all_locales[i], 
      "timeZoneNames.json"
    )
  
  tz_names_data <-
    jsonlite::fromJSON(
      tz_names,
      flatten = TRUE,
      simplifyDataFrame = TRUE
    )
  
  zone_regions <- names(tz_names_data$main[[1]]$dates$timeZoneNames$zone)
  
  zones_city_names <- c()
  
  for (j in seq_along(zone_regions)) {
    zones_city_names <- c(zones_city_names, unlist(zone[[j]]))
  }
  
  names(zones_city_names) <- 
    gsub(".exemplarCity", "", names(zones_city_names), fixed = TRUE)
  
  tz_names_tbl_row_i <- 
    tibble::enframe(zones_city_names) %>%
    tidyr::pivot_wider(names_from = name) %>%
    dplyr::mutate(locale = all_locales[i]) %>%
    dplyr::select(locale, dplyr::everything())
  
  # Append row to main table
  tz_names_tbl <- dplyr::bind_rows(tz_names_tbl, tz_names_tbl_row_i)
}

readr::write_rds(
  tz_names_tbl,
  file = "data-raw/tz_names.rds",
  compress = "xz"
)
