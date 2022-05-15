library(dplyr)
library(jsonlite)
library(readr)

source("data-raw/00-version_tag.R")
source("data-raw/01-locales.R")

layout_tbl <- dplyr::tibble()

for (i in seq_along(all_locales)) {
  
  layout <- 
    file.path(
      "https://raw.githubusercontent.com/unicode-org/cldr-json",
      version_tag, "cldr-json/cldr-misc-full/main", 
      all_locales[i], 
      "layout.json"
    )
  
  layout_data <-
    jsonlite::fromJSON(
      layout,
      flatten = TRUE,
      simplifyDataFrame = TRUE
    )
  
  character_order <- layout_data$main[[1]]$layout$orientation$characterOrder
  line_order <- layout_data$main[[1]]$layout$orientation$lineOrder

  # Generate rows for locale `i`
  layout_tbl_rows_i <-
    dplyr::tibble(
      locale = all_locales[i],
      character_order = character_order,
      line_order = line_order
    )
  
  # Append rows to main table
  layout_tbl <- dplyr::bind_rows(layout_tbl, layout_tbl_rows_i)
}

readr::write_rds(
  layout_tbl,
  file = "data-raw/layout.rds",
  compress = "xz"
)
