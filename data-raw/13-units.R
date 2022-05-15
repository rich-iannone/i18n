library(dplyr)
library(jsonlite)
library(readr)
library(progress)

source("data-raw/00-version_tag.R")
source("data-raw/01-locales.R")

units_tbl <- dplyr::tibble()

pb <- progress_bar$new(total = length(all_locales))

for (i in seq_along(all_locales)) {
  
  units <- 
    file.path(
      "https://raw.githubusercontent.com/unicode-org/cldr-json",
      version_tag, "cldr-json/cldr-units-full/main", 
      all_locales[i], 
      "units.json"
    )
  
  units_data <-
    jsonlite::fromJSON(
      units,
      flatten = TRUE,
      simplifyDataFrame = TRUE
    )
  
  long <- units_data$main[[1]]$units$long
  short <- units_data$main[[1]]$units$short
  narrow <- units_data$main[[1]]$units$narrow
  
  # `long` table row
  units_tbl_long_rows_i <-
    dplyr::tibble(
      locale = all_locales[i],
      long = unlist(long, recursive = FALSE)
    ) %>%
    dplyr::mutate(type = "long") %>%
    dplyr::mutate(unit = names(long)) %>% 
    dplyr::mutate(value = unlist(long)) %>%
    dplyr::select(locale, type, unit, value) %>%
    tidyr::pivot_wider(names_from = unit, values_from = value)
  
  # `short` table row
  units_tbl_short_rows_i <-
    dplyr::tibble(
      locale = all_locales[i],
      short = unlist(short, recursive = FALSE)
    ) %>%
    dplyr::mutate(type = "short") %>%
    dplyr::mutate(unit = names(short)) %>% 
    dplyr::mutate(value = unlist(short)) %>%
    dplyr::select(locale, type, unit, value) %>%
    tidyr::pivot_wider(names_from = unit, values_from = value)
  
  # `narrow` table row
  units_tbl_narrow_rows_i <-
    dplyr::tibble(
      locale = all_locales[i],
      narrow = unlist(narrow, recursive = FALSE)
    ) %>%
    dplyr::mutate(type = "narrow") %>%
    dplyr::mutate(unit = names(narrow)) %>% 
    dplyr::mutate(value = unlist(narrow)) %>%
    dplyr::select(locale, type, unit, value) %>%
    tidyr::pivot_wider(names_from = unit, values_from = value)

  # Generate rows for locale `i`
  units_tbl_rows_i <-
    dplyr::bind_rows(
      units_tbl_long_rows_i,
      units_tbl_short_rows_i,
      units_tbl_narrow_rows_i
    ) %>%
    dplyr::select(
      locale, type,
      matches("displayName|.unitPattern-count")
    )
  
  # Append rows to main table
  units_tbl <- dplyr::bind_rows(units_tbl, units_tbl_rows_i)
  
  pb$tick()
}

# Sort all column names
units_colnames <- colnames(units_tbl)

colnames_sorted <- 
  units_colnames[grepl("unitPattern|displayName", units_colnames)] %>%
  tibble::enframe() %>%
  dplyr::mutate(
    name = vapply(
      value,
      FUN.VALUE = character(1),
      FUN = function(x) {
        unlist(strsplit(x, split = ".", fixed = TRUE))[1]
      }
    )
  ) %>%
  dplyr::mutate(sort = dplyr::case_when(
    grepl("displayName", value) ~ 1,
    grepl("-count-one", value) ~ 2,
    grepl("-count-zero", value) ~ 3,
    grepl("-count-other", value) ~ 4,
    grepl("-count-two", value) ~ 5,
    grepl("-count-few", value) ~ 6,
    grepl("-count-many", value) ~ 7
  )) %>%
  dplyr::arrange(name, sort) %>%
  dplyr::pull(value)

units_tbl <-
  units_tbl %>%
  dplyr::select(locale, type, colnames_sorted)
  
readr::write_rds(
  units_tbl,
  file = "data-raw/units.rds",
  compress = "xz"
)

rm(
  units_tbl, units, units_data, long, short, narrow,
  units_tbl_long_rows_i, units_tbl_short_rows_i, units_tbl_narrow_rows_i,
  units_tbl_rows_i, units_colnames, colnames_sorted, i, pb
)
