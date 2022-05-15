library(dplyr)
library(jsonlite)
library(readr)

source("data-raw/00-version_tag.R")
source("data-raw/01-locales.R")

tz_exemplar_tbl <- dplyr::tibble()

for (i in seq_along(all_locales)) {
  
  tz_exemplar <- 
    file.path(
      "https://raw.githubusercontent.com/unicode-org/cldr-json",
      version_tag, "cldr-json/cldr-dates-full/main", 
      all_locales[i], 
      "timeZoneNames.json"
    )
  
  tz_exemplar_data <-
    jsonlite::fromJSON(
      tz_exemplar,
      flatten = TRUE,
      simplifyDataFrame = TRUE
    )
  
  zone_data <- tz_exemplar_data$main[[1]]$dates$timeZoneNames$zone
  
  regions <- names(zone_data)
  
  exemplar_cities <- c()
  
  for (j in seq_along(regions)) {
    exemplar_cities <- c(exemplar_cities, unlist(zone_data[[j]]))
  }
  
  names(exemplar_cities) <- 
    gsub(".exemplarCity", "", names(exemplar_cities), fixed = TRUE)
  
  tz_exemplar_tbl_row_i <- 
    tibble::enframe(exemplar_cities) %>%
    tidyr::pivot_wider(names_from = name) %>%
    dplyr::mutate(locale = all_locales[i]) %>%
    dplyr::select(locale, dplyr::everything())
  
  # Append row to main table
  tz_exemplar_tbl <- dplyr::bind_rows(tz_exemplar_tbl, tz_exemplar_tbl_row_i)
}

readr::write_rds(
  tz_exemplar_tbl,
  file = "data-raw/tz_exemplar.rds",
  compress = "xz"
)
