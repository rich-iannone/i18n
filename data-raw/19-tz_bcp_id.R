library(dplyr)
library(jsonlite)
library(readr)

source("data-raw/00-version_tag.R")

tz_bcp_id_tbl <- dplyr::tibble()

tz_bcp_id_path <- 
  file.path(
    "https://raw.githubusercontent.com/unicode-org/cldr-json",
    version_tag, "cldr-json/cldr-bcp47/bcp47/timezone.json"
  )

tz_bcp_id_data <-
  jsonlite::fromJSON(
    tz_bcp_id_path,
    flatten = TRUE,
    simplifyDataFrame = TRUE
  )

tz_bcp_id_data_all <- tz_bcp_id_data$keyword$u$tz

tz_bcp_id_data_all$`_description` <- NULL
tz_bcp_id_data_all$`_alias` <- NULL

for (i in seq_along(tz_bcp_id_data_all)) {
  
  tz_bcp_id_tbl_row_i <-
    dplyr::tibble(
      tz_bcp_id = names(tz_bcp_id_data_all[i]),
      tz_canonical = tz_bcp_id_data_all[[i]]$`_alias`,
      description = tz_bcp_id_data_all[[i]]$`_description`
    )
  
  # Append row to main table
  tz_bcp_id_tbl <- dplyr::bind_rows(tz_bcp_id_tbl, tz_bcp_id_tbl_row_i)
}

tz_bcp_id_tbl <-
  tz_bcp_id_tbl %>%
  dplyr::filter(!is.na(tz_canonical))

readr::write_rds(
  tz_bcp_id_tbl,
  file = "data-raw/tz_bcp_id.rds",
  compress = "xz"
)

rm(
  tz_bcp_id_tbl, tz_bcp_id_path, tz_bcp_id_data, tz_bcp_id_data_all,
  tz_bcp_id_tbl_row_i, i
)
