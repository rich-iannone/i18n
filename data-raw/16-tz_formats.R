library(dplyr)
library(jsonlite)
library(readr)

source("data-raw/00-version_tag.R")
source("data-raw/01-locales.R")

tz_formats_tbl <- dplyr::tibble()

for (i in seq_along(all_locales)) {
  
  tz_formats <- 
    file.path(
      "https://raw.githubusercontent.com/unicode-org/cldr-json",
      version_tag, "cldr-json/cldr-dates-full/main", 
      all_locales[i], 
      "timeZoneNames.json"
    )
  
  tz_formats_data <-
    jsonlite::fromJSON(
      tz_formats,
      flatten = TRUE,
      simplifyDataFrame = TRUE
    )
  
  tz_formats_all <- tz_formats_data$main[[1]]$dates$timeZoneNames
  
  hour_format <- tz_formats_all$hourFormat
  gmt_format <- tz_formats_all$gmtFormat
  gmt_zero_format <- tz_formats_all$gmtZeroFormat
  region_format <- tz_formats_all$regionFormat
  region_format_daylight <- tz_formats_all$`regionFormat-type-daylight`
  region_format_standard <- tz_formats_all$`regionFormat-type-standard`
  region_format_fallback <- tz_formats_all$fallbackFormat
  
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
