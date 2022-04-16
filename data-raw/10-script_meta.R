library(dplyr)
library(jsonlite)
library(readr)

version_tag <- "40.0.0"

source("data-raw/01-locales.R")

script_meta <- 
  file.path(
    "https://raw.githubusercontent.com/unicode-org/cldr-json/main/cldr-json/cldr-core", 
    "scriptMetadata.json"
  )

script_metadata <-
  jsonlite::fromJSON(
    script_meta,
    flatten = TRUE,
    simplifyDataFrame = TRUE
  )

script_metadata_list <- script_metadata$scriptMetadata

script_names <- names(script_metadata_list)

script_metadata_tbl <- dplyr::tibble()

for (i in seq_along(script_names)) {
  
  sample_char <- script_metadata_list[[script_names[i]]]$sampleChar
  rank <- script_metadata_list[[script_names[i]]]$rank
  rtl <- script_metadata_list[[script_names[i]]]$rtl
  lb_letters <- script_metadata_list[[script_names[i]]]$lbLetters
  has_case <- script_metadata_list[[script_names[i]]]$hasCase
  shaping_req <- script_metadata_list[[script_names[i]]]$shapingReq
  ime <- script_metadata_list[[script_names[i]]]$ime
  density <- script_metadata_list[[script_names[i]]]$density
  origin_country <- script_metadata_list[[script_names[i]]]$originCountry
  likely_lang <- script_metadata_list[[script_names[i]]]$likelyLanguage
  
  # table row
  script_metadata_row_i <-
    dplyr::tibble(
      script = script_names[i],
      sample_char = sample_char,
      rank = rank,
      rtl = rtl,
      lb_letters = lb_letters, 
      has_case = has_case,
      shaping_req = shaping_req,
      ime = ime,
      density = density,
      origin_country = origin_country,
      likely_lang = likely_lang
    )
  
  # Append rows to main table
  script_metadata_tbl <- dplyr::bind_rows(script_metadata_tbl, script_metadata_row_i)
}
  
readr::write_rds(
  script_metadata_tbl,
  file = "data-raw/script_metadata.rds",
  compress = "xz"
)
