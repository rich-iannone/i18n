library(dplyr)
library(jsonlite)
library(readr)

version_tag <- "40.0.0"

source("data-raw/00-version_tag.R")
source("data-raw/01-locales.R")

char_labels_tbl <- dplyr::tibble()

for (i in seq_along(all_locales)) {
  
  char_labels <- 
    file.path(
      "https://raw.githubusercontent.com/unicode-org/cldr-json",
      version_tag, "cldr-json/cldr-misc-full/main", 
      all_locales[i], 
      "characterLabels.json"
    )
  
  char_labels_data <-
    jsonlite::fromJSON(
      char_labels,
      flatten = TRUE,
      simplifyDataFrame = TRUE
    )
  
  char_label_patterns <- char_labels_data$main[[1]]$characterLabelPatterns
  
  char_labels <- char_labels_data$main[[1]]$characterLabels
  
  # Generate rows for locale `i`
  char_labels_tbl_rows_i <-
    dplyr::tibble(
      locale = all_locales[i],
      character_label_patterns = list(value = char_label_patterns),
      character_labels = list(value = char_labels)
    )
  
  # Append rows to main table
  char_labels_tbl <- dplyr::bind_rows(char_labels_tbl, char_labels_tbl_rows_i)
}

readr::write_rds(
  char_labels_tbl,
  file = "data-raw/character_labels.rds",
  compress = "xz"
)
