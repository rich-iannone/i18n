library(dplyr)
library(jsonlite)
library(readr)

version_tag <- "40.0.0"

source("data-raw/01-locales.R")

characters_tbl <- dplyr::tibble()

for (i in seq_along(all_locales)) {
  
  characters <- 
    file.path(
      "https://raw.githubusercontent.com/unicode-org/cldr-json",
      version_tag, "cldr-json/cldr-misc-full/main", 
      all_locales[i], 
      "characters.json"
    )
  
  characters_data <-
    jsonlite::fromJSON(
      characters,
      flatten = TRUE,
      simplifyDataFrame = TRUE
    )
  
  exemplar_characters <- characters_data$main[[1]]$characters$exemplarCharacters
  auxiliary <- characters_data$main[[1]]$characters$auxiliary
  index <- characters_data$main[[1]]$characters$index
  numbers <- characters_data$main[[1]]$characters$numbers
  punctuation <- characters_data$main[[1]]$characters$punctuation
  more_info <- characters_data$main[[1]]$characters$moreInformation
  
  ellipsis <- characters_data$main[[1]]$characters$ellipsis
  leninent_scope_general <- characters_data$main[[1]]$characters$`lenient-scope-general`
  leninent_scope_date <- characters_data$main[[1]]$characters$`lenient-scope-date`
  leninent_scope_number <- characters_data$main[[1]]$characters$`lenient-scope-number`
  stricter_scope_number <- characters_data$main[[1]]$characters$`stricter-scope-number`
  
  # Generate rows for locale `i`
  characters_tbl_rows_i <-
    dplyr::tibble(
      locale = all_locales[i],
      exemplar_characters = exemplar_characters,
      auxiliary = auxiliary,
      index = index,
      numbers = numbers,
      punctuation = punctuation,
      more_info = more_info,
      ellipsis = list(value = ellipsis),
      leninent_scope_general = list(value = leninent_scope_general),
      leninent_scope_date = list(value = leninent_scope_date),
      leninent_scope_number = list(value = leninent_scope_number),
      stricter_scope_number = list(value = stricter_scope_number)
    )
  
  # Append rows to main table
  characters_tbl <- dplyr::bind_rows(characters_tbl, characters_tbl_rows_i)
}

readr::write_rds(
  characters_tbl,
  file = "data-raw/characters.rds",
  compress = "xz"
)
