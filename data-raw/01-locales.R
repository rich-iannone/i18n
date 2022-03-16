library(dplyr)
library(jsonlite)
library(readr)

version_tag <- "40.0.0"

all_locales <- 
  file.path(
    "https://raw.githubusercontent.com/unicode-org/cldr-json",
    version_tag, "cldr-json/cldr-core", 
    "availableLocales.json"
  )

all_locales_data <-
  jsonlite::fromJSON(
    all_locales,
    flatten = TRUE,
    simplifyDataFrame = TRUE
  )

all_locales <- all_locales_data$availableLocales$full

all_locales_tbl <-
  dplyr::tibble(
    locale_code = all_locales
  )

readr::write_rds(
  all_locales,
  file = "data-raw/all_locales.rds",
  compress = "xz"
)
