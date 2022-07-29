library(dplyr)
library(jsonlite)
library(readr)

source("data-raw/00-version_tag.R")

tz_metazone_names <- readRDS("data-raw/tz_metazone_names.rds")
linked_metazone_names <- colnames(tz_metazone_names)[-1]

tz_metazone_users_path <- 
  file.path(
    "https://raw.githubusercontent.com/unicode-org/cldr-json",
    version_tag, "cldr-json/cldr-core/supplemental/metaZones.json"
  )

tz_metazone_users_data <-
  jsonlite::fromJSON(
    tz_metazone_users_path,
    flatten = TRUE,
    simplifyDataFrame = TRUE
  )

metazone_names_data_tbl_1 <- 
  dplyr::tibble(tz_metazone_users_data$supplemental$metaZones$metazones) %>%
  dplyr::rename(
    metazone_long_id = mapZone._other,
    canonical_tz_name = mapZone._type,
    territory = mapZone._territory
  )

metazone_names_ids <- tz_metazone_users_data$supplemental$metaZones$metazoneIds

metazone_id_tbl <- dplyr::tibble()

for (i in seq_along(metazone_names_ids)) {
  
  metazone_id_tbl_row_i <-
    dplyr::tibble(
      metazone_short_id = names(metazone_names_ids[i]),
      metazone_long_id = metazone_names_ids[i][[1]]$`_longId`
    )
  
  # Append row to main table
  metazone_id_tbl <- dplyr::bind_rows(metazone_id_tbl, metazone_id_tbl_row_i)
}

tz_metazone_users_tbl <-
  dplyr::left_join(
    metazone_names_data_tbl_1,
    metazone_id_tbl,
    by = "metazone_long_id"
  ) %>%
  dplyr::select(
    canonical_tz_name, territory,
    metazone_long_id, metazone_short_id
  ) %>% 
  dplyr::arrange(canonical_tz_name) %>%
  dplyr::filter(metazone_long_id %in% linked_metazone_names)

readr::write_rds(
  tz_metazone_users_tbl,
  file = "data-raw/tz_metazone_users.rds",
  compress = "xz"
)

rm(
  tz_metazone_users_path, tz_metazone_users_data, metazone_names_data_tbl_1,
  metazone_names_ids, metazone_id_tbl, metazone_id_tbl_row_i, 
  tz_metazone_users_tbl, tz_metazone_names, linked_metazone_names, i
)
