library(dplyr)
library(jsonlite)
library(readr)

source("data-raw/00-version_tag.R")

regional_currencies_tbl <- dplyr::tibble()

regional_currencies_path <- 
  file.path(
    "https://raw.githubusercontent.com/unicode-org/cldr-json",
    version_tag, "cldr-json/cldr-core/supplemental/currencyData.json"
  )

regional_currencies_data <-
  jsonlite::read_json(regional_currencies_path)

regional_currencies <- regional_currencies_data$supplemental$currencyData$region

for (i in seq_along(regional_currencies)) {
  
  regional_currencies_i <- regional_currencies[[i]]
  
  not_tender_j <- integer(0)
  
  for (j in seq_along(regional_currencies_i)) {
    
    if (
      "_tender" %in% names(regional_currencies_i[[j]][[1]]) &&
      regional_currencies_i[[j]][[1]][["_tender"]] == "false"
    ) {
      not_tender_j <- c(not_tender_j, j)
    }
  }
  
  if (length(not_tender_j) > 0) {
    regional_currencies_i <- regional_currencies_i[-not_tender_j]
  }
  
  if (length(regional_currencies_i) < 1) next
  
  n_regional_currencies <- length(regional_currencies_i)
  
  currency_in_use <- names(regional_currencies_i[[n_regional_currencies]])
  
  regional_currencies_tbl_row_i <-
    dplyr::tibble(
      region = names(regional_currencies[i]),
      currency_code = currency_in_use
    )
  
  # Append row to main table
  regional_currencies_tbl <- 
    dplyr::bind_rows(regional_currencies_tbl, regional_currencies_tbl_row_i)
}

