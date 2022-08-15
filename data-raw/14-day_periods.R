library(dplyr)
library(jsonlite)
library(readr)

source("data-raw/00-version_tag.R")

dayperiods_path <- 
  file.path(
    "https://raw.githubusercontent.com/unicode-org/cldr-json",
    version_tag, "cldr-json/cldr-core/supplemental/dayPeriods.json"
  )

dayperiods_data <-
  jsonlite::fromJSON(
    dayperiods_path,
    flatten = TRUE,
    simplifyDataFrame = TRUE
  )

dayperiods_rulesets <- dayperiods_data$supplemental$dayPeriodRuleSet

supported_locales <- names(dayperiods_rulesets)

dayperiods_tbl <- dplyr::tibble()

for (i in seq_along(supported_locales)) {
  
  periods_i <- names(dayperiods_rulesets[[i]])
  
  for (j in seq_along(periods_i)) {
    
    dayperiods_tbl_i_j <- 
      dplyr::tibble(
        locale = supported_locales[i],
        period = periods_i[j],
        from = NA_character_,
        to = NA_character_,
        at = NA_character_
      )
    
    period_i_j <- dayperiods_rulesets[[i]][[j]]
    
    period_rules <- names(period_i_j)
    
    if ("_before" %in% period_rules && "_from" %in% period_rules) {
      dayperiods_tbl_i_j$from <- period_i_j$`_from`
      dayperiods_tbl_i_j$to <- period_i_j$`_before`
    } else {
      dayperiods_tbl_i_j$at <- period_i_j$`_at`
    }
    
    # Append row to main table
    dayperiods_tbl <- dplyr::bind_rows(dayperiods_tbl, dayperiods_tbl_i_j)
  }
}

readr::write_rds(
  dayperiods_tbl,
  file = "data-raw/day_periods.rds",
  compress = "xz"
)

rm(
  dayperiods_path, dayperiods_data, dayperiods_rulesets, supported_locales,
  dayperiods_tbl, periods_i, dayperiods_tbl_i_j, period_i_j, period_rules, i, j
)
