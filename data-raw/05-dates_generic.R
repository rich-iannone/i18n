library(dplyr)
library(jsonlite)
library(readr)

source("data-raw/00-version_tag.R")
source("data-raw/01-locales.R")

dates_g_tbl <- dplyr::tibble()

for (i in seq_along(all_locales)) {
  
  dates_generic_json_url_locale <- 
    file.path(
      "https://raw.githubusercontent.com/unicode-org/cldr-json",
      version_tag, "cldr-json/cldr-dates-full/main", 
      all_locales[i], 
      "ca-generic.json"
    )
  
  dates_generic_data <-
    jsonlite::fromJSON(
      dates_generic_json_url_locale,
      flatten = TRUE,
      simplifyDataFrame = TRUE
    )
  
  #
  # Months
  #
  
  # months_format_abbrev
  months_format_abbrev <-
    dates_generic_data$main[[1]]$dates$calendars$generic$months$format$abbreviated
  
  # months_format_narrow
  months_format_narrow <-
    dates_generic_data$main[[1]]$dates$calendars$generic$months$format$narrow
  
  # months_format_wide
  months_format_wide <-
    dates_generic_data$main[[1]]$dates$calendars$generic$months$format$wide
  
  # months_standalone_abbrev
  months_standalone_abbrev <-
    dates_generic_data$main[[1]]$dates$calendars$generic$months$`stand-alone`$abbreviated
  
  # months_standalone_narrow
  months_standalone_narrow <-
    dates_generic_data$main[[1]]$dates$calendars$generic$months$`stand-alone`$narrow
  
  # months_standalone_wide
  months_standalone_wide <-
    dates_generic_data$main[[1]]$dates$calendars$generic$months$`stand-alone`$wide
  
  #
  # Days
  #
  
  # days_format_abbrev
  days_format_abbrev <-
    dates_generic_data$main[[1]]$dates$calendars$generic$days$format$abbreviated
  
  # days_format_narrow
  days_format_narrow <-
    dates_generic_data$main[[1]]$dates$calendars$generic$days$format$narrow
  
  # days_format_short
  days_format_short <-
    dates_generic_data$main[[1]]$dates$calendars$generic$days$format$short
  
  # days_format_wide
  days_format_wide <-
    dates_generic_data$main[[1]]$dates$calendars$generic$days$format$wide
  
  # days_standalone_abbrev
  days_standalone_abbrev <-
    dates_generic_data$main[[1]]$dates$calendars$generic$days$`stand-alone`$abbreviated
  
  # days_standalone_narrow
  days_standalone_narrow <-
    dates_generic_data$main[[1]]$dates$calendars$generic$days$`stand-alone`$narrow
  
  # days_standalone_short
  days_standalone_short <-
    dates_generic_data$main[[1]]$dates$calendars$generic$days$`stand-alone`$short
  
  # days_standalone_wide
  days_standalone_wide <-
    dates_generic_data$main[[1]]$dates$calendars$generic$days$`stand-alone`$wide
  
  #
  # Quarters
  #
  
  # quarters_format_abbrev
  quarters_format_abbrev <-
    dates_generic_data$main[[1]]$dates$calendars$generic$quarters$format$abbreviated
  
  # quarters_format_narrow
  quarters_format_narrow <-
    dates_generic_data$main[[1]]$dates$calendars$generic$quarters$format$narrow
  
  # quarters_format_wide
  quarters_format_wide <-
    dates_generic_data$main[[1]]$dates$calendars$generic$quarters$format$wide
  
  # quarters_standalone_abbrev
  quarters_standalone_abbrev <-
    dates_generic_data$main[[1]]$dates$calendars$generic$quarters$`stand-alone`$abbreviated
  
  # quarters_standalone_narrow
  quarters_standalone_narrow <-
    dates_generic_data$main[[1]]$dates$calendars$generic$quarters$`stand-alone`$narrow
  
  # quarters_standalone_wide
  quarters_standalone_wide <-
    dates_generic_data$main[[1]]$dates$calendars$generic$quarters$`stand-alone`$wide
  
  #
  # Day Periods
  #
  
  # dayperiods_format_abbrev
  dayperiods_format_abbrev <-
    dates_generic_data$main[[1]]$dates$calendars$generic$dayPeriods$format$abbreviated
  
  # dayperiods_format_narrow
  dayperiods_format_narrow <-
    dates_generic_data$main[[1]]$dates$calendars$generic$dayPeriods$format$narrow
  
  # dayperiods_format_wide
  dayperiods_format_wide <-
    dates_generic_data$main[[1]]$dates$calendars$generic$dayPeriods$format$wide
  
  # dayperiods_standalone_abbrev
  dayperiods_standalone_abbrev <-
    dates_generic_data$main[[1]]$dates$calendars$generic$dayPeriods$`stand-alone`$abbreviated
  
  # dayperiods_standalone_narrow
  dayperiods_standalone_narrow <-
    dates_generic_data$main[[1]]$dates$calendars$generic$dayPeriods$`stand-alone`$narrow
  
  # dayperiods_standalone_wide
  dayperiods_standalone_wide <-
    dates_generic_data$main[[1]]$dates$calendars$generic$dayPeriods$`stand-alone`$wide
  
  #
  # Eras
  #
  
  # eras_abbrev
  eras_abbrev <-
    dates_generic_data$main[[1]]$dates$calendars$generic$eras$eraAbbr
  
  # eras_names
  eras_names <-
    dates_generic_data$main[[1]]$dates$calendars$generic$eras$eraNames
  
  # eras_narrow
  eras_narrow <-
    dates_generic_data$main[[1]]$dates$calendars$generic$eras$eraNarrow
  
  #
  # Formats
  #
  
  # date_formats
  date_formats <-
    dates_generic_data$main[[1]]$dates$calendars$generic$dateFormats
  
  # date_skeletons
  date_skeletons <-
    dates_generic_data$main[[1]]$dates$calendars$generic$dateSkeletons
  
  # time_formats
  time_formats <-
    dates_generic_data$main[[1]]$dates$calendars$generic$timeFormats
  
  # time_skeletons
  time_skeletons <- 
    dates_generic_data$main[[1]]$dates$calendars$generic$timeSkeletons
  
  # date_time_patterns
  date_time_patterns <-
    dates_generic_data$main[[1]]$dates$calendars$generic$dateTimeFormats[1:4]
  
  # date_time_available_formats
  date_time_available_formats <-
    dates_generic_data$main[[1]]$dates$calendars$generic$dateTimeFormats[[5]]
  
  # date_time_append_items
  date_time_append_items <-
    dates_generic_data$main[[1]]$dates$calendars$generic$dateTimeFormats$appendItems
  
  # date_time_interval_formats
  date_time_interval_formats <-
    dates_generic_data$main[[1]]$dates$calendars$generic$dateTimeFormats$intervalFormats
  
  # Generate row
  dates_g_tbl_row <-
    dplyr::tibble(
      locale = all_locales[i],
      months_format_abbrev = list(value = months_format_abbrev),
      months_format_narrow = list(value = months_format_narrow),
      months_format_wide = list(value = months_format_wide),
      months_standalone_abbrev = list(value = months_standalone_abbrev),
      months_standalone_narrow = list(value = months_standalone_narrow),
      months_standalone_wide = list(value = months_standalone_wide),
      days_format_abbrev = list(value = days_format_abbrev),
      days_format_narrow = list(value = days_format_narrow),
      days_format_short = list(value = days_format_short),
      days_format_wide = list(value = days_format_wide),
      days_standalone_abbrev = list(value = days_standalone_abbrev),
      days_standalone_narrow = list(value = days_standalone_narrow),
      days_standalone_short = list(value = days_standalone_short),
      days_standalone_wide = list(value = days_standalone_wide),
      quarters_format_abbrev = list(value = quarters_format_abbrev),
      quarters_format_narrow = list(value = quarters_format_narrow),
      quarters_format_wide = list(value = quarters_format_wide),
      quarters_standalone_abbrev = list(value = quarters_standalone_abbrev),
      quarters_standalone_narrow = list(value = quarters_standalone_narrow),
      quarters_standalone_wide = list(value = quarters_standalone_wide),
      dayperiods_format_abbrev = list(value = dayperiods_format_abbrev),
      dayperiods_format_narrow = list(value = dayperiods_format_narrow),
      dayperiods_format_wide = list(value = dayperiods_format_wide),
      dayperiods_standalone_abbrev = list(value = dayperiods_standalone_abbrev),
      dayperiods_standalone_narrow = list(value = dayperiods_standalone_narrow),
      dayperiods_standalone_wide = list(value = dayperiods_standalone_wide),
      eras_abbrev = list(value = eras_abbrev),
      eras_names = list(value = eras_names),
      eras_narrow = list(value = eras_narrow),
      date_formats = list(value = date_formats),
      date_skeletons = list(value = date_skeletons),
      time_formats = list(value = time_formats),
      time_skeletons = list(value = time_skeletons),
      date_time_patterns = list(value = date_time_patterns),
      date_time_available_formats = list(value = date_time_available_formats),
      date_time_append_items = list(value = date_time_append_items),
      date_time_interval_formats = list(value = date_time_interval_formats)
    )
  
  # Append row to main table
  dates_g_tbl <- dplyr::bind_rows(dates_g_tbl, dates_g_tbl_row)
}

readr::write_rds(
  dates_g_tbl,
  file = "data-raw/dates_generic.rds",
  compress = "xz"
)
