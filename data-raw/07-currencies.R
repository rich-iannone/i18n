library(dplyr)
library(jsonlite)
library(readr)

source("data-raw/00-version_tag.R")
source("data-raw/01-locales.R")

currency_tbl <- dplyr::tibble()

for (i in seq_along(all_locales)) {
  
  currencies_json_url_locale <- 
    file.path(
      "https://raw.githubusercontent.com/unicode-org/cldr-json",
      version_tag, "cldr-json/cldr-numbers-full/main", 
      all_locales[i], 
      "currencies.json"
    )
  
  currencies_data <-
    jsonlite::fromJSON(
      currencies_json_url_locale,
      flatten = TRUE,
      simplifyDataFrame = TRUE
    )
  
  currency_by_type <- currencies_data$main[[1]]$numbers$currencies
  
  currency_code <- names(currency_by_type)

  currency_display_name <-
    vapply(
      currency_by_type,
      FUN.VALUE = character(1),
      USE.NAMES = FALSE,
      FUN = function(x) x$displayName
    )
  
  currency_symbol <-
    vapply(
      currency_by_type,
      FUN.VALUE = character(1),
      USE.NAMES = FALSE,
      FUN = function(x) x$symbol
    )
  
  currency_symbol_narrow <-
    vapply(
      currency_by_type,
      FUN.VALUE = character(1),
      USE.NAMES = FALSE,
      FUN = function(x) {
        if (!is.null(x$`symbol-alt-narrow`)) {
          x$`symbol-alt-narrow`
        } else {
          NA_character_
        }
      }
    )
  
  currency_display_name_count_1 <-
    vapply(
      currency_by_type,
      FUN.VALUE = character(1),
      USE.NAMES = FALSE,
      FUN = function(x) {
        if (!is.null(x$`displayName-count-one`)) {
          x$`displayName-count-one`
        } else {
          NA_character_
        }
      }
    )
  
  currency_display_name_count_other <-
    vapply(
      currency_by_type,
      FUN.VALUE = character(1),
      USE.NAMES = FALSE,
      FUN = function(x) {
        if (!is.null(x$`displayName-count-other`)) {
          x$`displayName-count-other`
        } else {
          NA_character_
        }
      }
    )
  
  # Generate rows for locale `i`
  currency_tbl_rows_i <-
    dplyr::tibble(
      locale = all_locales[i],
      currency_code = currency_code,
      currency_display_name = currency_display_name,
      currency_symbol = currency_symbol,
      currency_symbol_narrow = currency_symbol_narrow,
      currency_display_name_count_1 = currency_display_name_count_1,
      currency_display_name_count_other = currency_display_name_count_other
    )
  
  # Append rows to main table
  currency_tbl <- dplyr::bind_rows(currency_tbl, currency_tbl_rows_i)
}

readr::write_rds(
  currency_tbl,
  file = "data-raw/currencies.rds",
  compress = "xz"
)

readr::write_rds(
  sort(unique(currency_tbl$currency_code)),
  file = "data-raw/all_currency_codes.rds",
  compress = "xz"
)
