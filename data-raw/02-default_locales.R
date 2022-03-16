library(dplyr)
library(jsonlite)
library(readr)

version_tag <- "40.0.0"

default_content <- 
  file.path(
    "https://raw.githubusercontent.com/unicode-org/cldr-json",
    version_tag, "cldr-json/cldr-core", 
    "defaultContent.json"
  )

default_content_data <-
  jsonlite::fromJSON(
    default_content,
    flatten = TRUE,
    simplifyDataFrame = TRUE
  )

default_locales <- default_content_data$defaultContent

default_locales_tbl <-
  dplyr::tibble(
    default_locale = default_locales
  ) %>%
  dplyr::mutate(
    base_locale = gsub("-[0-9A-Z]*$", "", default_locale)
  )

readr::write_rds(
  default_locales_tbl,
  file = "data-raw/default_locales.rds",
  compress = "xz"
  )
