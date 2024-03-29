library(dplyr)
library(jsonlite)
library(readr)
library(progress)

source("data-raw/00-version_tag.R")
source("data-raw/01-locales.R")

delimiters_tbl <- dplyr::tibble()

pb <- progress_bar$new(total = length(all_locales))

for (i in seq_along(all_locales)) {
  
  delimiters <- 
    file.path(
      "https://raw.githubusercontent.com/unicode-org/cldr-json",
      version_tag, "cldr-json/cldr-misc-full/main", 
      all_locales[i], 
      "delimiters.json"
    )
  
  delimiters_data <-
    jsonlite::fromJSON(
      delimiters,
      flatten = TRUE,
      simplifyDataFrame = TRUE
    )
  
  quotation_start <- delimiters_data$main[[1]]$delimiters$quotationStart
  quotation_end <- delimiters_data$main[[1]]$delimiters$quotationEnd
  alt_quotation_start <- delimiters_data$main[[1]]$delimiters$alternateQuotationStart
  alt_quotation_end <- delimiters_data$main[[1]]$delimiters$alternateQuotationEnd

  # Generate rows for locale `i`
  delimiters_tbl_rows_i <-
    dplyr::tibble(
      locale = all_locales[i],
      quotation_start = quotation_start,
      quotation_end = quotation_end,
      alt_quotation_start = alt_quotation_start,
      alt_quotation_end = alt_quotation_end
    )
  
  # Append rows to main table
  delimiters_tbl <- dplyr::bind_rows(delimiters_tbl, delimiters_tbl_rows_i)
  
  pb$tick()
}

readr::write_rds(
  delimiters_tbl,
  file = "data-raw/delimiters.rds",
  compress = "xz"
)

rm(
  delimiters_tbl, delimiters, delimiters_data,
  quotation_start, quotation_end, alt_quotation_start, alt_quotation_end, 
  delimiters_tbl_rows_i, i, pb
)
