library(dplyr)
library(jsonlite)
library(readr)

version_tag <- "40.0.0"

source("data-raw/01-locales.R")

tz_formats_tbl <- dplyr::tibble()

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
  
  zone_names_all <- tz_names_data$main[[1]]$dates$timeZoneNames
  
  hour_format <- zone_names_all$hourFormat
  gmt_format <- zone_names_all$gmtFormat
  gmt_zero_format <- zone_names_all$gmtZeroFormat
  region_format <- zone_names_all$regionFormat
  region_format_daylight <- zone_names_all$`regionFormat-type-daylight`
  region_format_standard <- zone_names_all$`regionFormat-type-standard`
  region_format_fallback <- zone_names_all$fallbackFormat
  
  tz_formats_tbl_row_i <-
    dplyr::tibble(
      locale = all_locales[i],
      hour_format = hour_format,
      gmt_format = gmt_format,
      gmt_zero_format = gmt_zero_format,
      region_format = region_format,
      region_format_daylight = region_format_daylight,
      region_format_standard = region_format_standard,
      region_format_fallback = region_format_fallback
    )
  
  # Append row to main table
  tz_formats_tbl <- dplyr::bind_rows(tz_formats_tbl, tz_formats_tbl_row_i)
}

readr::write_rds(
  tz_formats_tbl,
  file = "data-raw/tz_formats.rds",
  compress = "xz"
)
