library(dplyr)
library(jsonlite)
library(readr)

source("data-raw/00-version_tag.R")
source("data-raw/01-locales.R")

numbers_tbl <- dplyr::tibble()

for (i in seq_along(all_locales)) {
  
  numbers_json_url_locale <- 
    file.path(
      "https://raw.githubusercontent.com/unicode-org/cldr-json",
      version_tag, "cldr-json/cldr-numbers-full/main", 
      all_locales[i], 
      "numbers.json"
    )
  
  numbers_data <-
    jsonlite::fromJSON(
      numbers_json_url_locale,
      flatten = TRUE,
      simplifyDataFrame = TRUE
    )
  
  # default_numbering_system
  default_numbering_system <-
    numbers_data$main[[1]]$numbers$defaultNumberingSystem
  
  # other_numbering_systems
  other_numbering_systems <-
    numbers_data$main[[1]]$numbers$otherNumberingSystems
  
  # minimum_grouping_digits
  minimum_grouping_digits <-
    as.integer(numbers_data$main[[1]]$numbers$minimumGroupingDigits)
  
  # decimal
  decimal <- 
    numbers_data$main[[1]]$numbers$`symbols-numberSystem-latn`$decimal
  
  # group
  group <- 
    numbers_data$main[[1]]$numbers$`symbols-numberSystem-latn`$group
  
  # list
  list <- 
    numbers_data$main[[1]]$numbers$`symbols-numberSystem-latn`$list
  
  # percent_sign
  percent_sign <- 
    numbers_data$main[[1]]$numbers$`symbols-numberSystem-latn`$percentSign
  
  # plus_sign
  plus_sign <- 
    numbers_data$main[[1]]$numbers$`symbols-numberSystem-latn`$plusSign
  
  # minus_sign
  minus_sign <- 
    numbers_data$main[[1]]$numbers$`symbols-numberSystem-latn`$minusSign
  
  # approx_sign
  approx_sign <- 
    numbers_data$main[[1]]$numbers$`symbols-numberSystem-latn`$approximatelySign
  
  # exp_sign
  exp_sign <- 
    numbers_data$main[[1]]$numbers$`symbols-numberSystem-latn`$exponential
  
  # sup_exp
  sup_exp <- 
    numbers_data$main[[1]]$numbers$`symbols-numberSystem-latn`$superscriptingExponent
  
  # per_mille
  per_mille <- 
    numbers_data$main[[1]]$numbers$`symbols-numberSystem-latn`$perMille
  
  # infinity
  infinity <- 
    numbers_data$main[[1]]$numbers$`symbols-numberSystem-latn`$infinity
  
  # nan
  nan <- 
    numbers_data$main[[1]]$numbers$`symbols-numberSystem-latn`$nan
  
  # time_sep
  time_sep <- 
    numbers_data$main[[1]]$numbers$`symbols-numberSystem-latn`$timeSeparator
  
  # approx_pattern
  approx_pattern <- 
    numbers_data$main[[1]]$numbers$`miscPatterns-numberSystem-latn`$approximately
  
  # at_least_pattern
  at_least_pattern <- 
    numbers_data$main[[1]]$numbers$`miscPatterns-numberSystem-latn`$atLeast
  
  # at_most_pattern
  at_most_pattern <- 
    numbers_data$main[[1]]$numbers$`miscPatterns-numberSystem-latn`$atMost
  
  # range_pattern
  range_pattern <- 
    numbers_data$main[[1]]$numbers$`miscPatterns-numberSystem-latn`$range
  
  # decimal_format
  decimal_format <-
    numbers_data$main[[1]]$numbers$`decimalFormats-numberSystem-latn`$standard
  
  # sci_format
  sci_format <-
    numbers_data$main[[1]]$numbers$`scientificFormats-numberSystem-latn`$standard
  
  # percent_format
  percent_format <-
    numbers_data$main[[1]]$numbers$`percentFormats-numberSystem-latn`$standard
  
  # currency_format
  currency_format <-
    numbers_data$main[[1]]$numbers$`currencyFormats-numberSystem-latn`$standard
  
  # accounting_format
  accounting_format <-
    numbers_data$main[[1]]$numbers$`currencyFormats-numberSystem-latn`$accounting
  
  # Generate row
  numbers_tbl_row <-
    dplyr::tibble(
      locale = all_locales[i],
      default_numbering_system = default_numbering_system,
      other_numbering_systems = list(value = other_numbering_systems),
      minimum_grouping_digits = minimum_grouping_digits,
      decimal = decimal,
      group = group,
      list = list,
      percent_sign = percent_sign,
      plus_sign =plus_sign,
      minus_sign = minus_sign,
      approx_sign = approx_sign,
      exp_sign = exp_sign,
      sup_exp = sup_exp,
      per_mille = per_mille,
      infinity = infinity,
      nan = nan,
      time_sep = time_sep,
      approx_pattern = approx_pattern,
      at_least_pattern = at_least_pattern,
      at_most_pattern = at_most_pattern,
      range_pattern = range_pattern,
      decimal_format = decimal_format,
      sci_format = sci_format,
      percent_format = percent_format,
      currency_format = currency_format,
      accounting_format = accounting_format
    )
  
  # Append row to main table
  numbers_tbl <- dplyr::bind_rows(numbers_tbl, numbers_tbl_row)
}

readr::write_rds(
  numbers_tbl,
  file = "data-raw/numbers.rds",
  compress = "xz"
)

rm(
  numbers_tbl, numbers_json_url_locale, numbers_data,
  default_numbering_system, other_numbering_systems,
  minimum_grouping_digits, decimal, group, list,
  percent_sign, plus_sign, minus_sign, approx_sign, exp_sign, sup_exp,
  per_mille, infinity, nan, time_sep, approx_pattern, at_least_pattern,
  at_most_pattern, range_pattern, decimal_format, sci_format, percent_format,
  currency_format, accounting_format,
  numbers_tbl_row
)
