#' Get a single localized value from the `currencies` dataset
#'
#' @description
#' The `currencies` table contains information of currency codes and localized
#' display names and symbols across 571 locales. The `cldr_currency()` function
#' allows one to extract a single parameter value from the table by supplying
#' the `locale`, the currency code, and one of the following parameter names:
#' 
#' - `"sym"`: corresponds to the `currency_symbol` column in `currencies`
#' - `"sym_narrow"`: is the `currency_symbol_narrow` column in `currencies`
#' - `"displ_name"`: is `currency_display_name`
#' - `"displ_ct_1"`: is `currency_display_name_count_1`
#' - `"displ_ct_oth"`: is `currency_display_name_count_other`
#' 
#' @return A length one character vector.
#' 
#' @export
cldr_currency <- function(
    locale = "en",
    currency = "USD",
    param = c("sym", "sym_narrow", "displ_name", "displ_ct_1", "displ_ct_oth")
) {

  param <- match.arg(param)
  
  param_full <-
    switch(
      param,
      sym = "currency_symbol",
      sym_narrow = "currency_symbol_narrow",
      displ_name = "currency_display_name",
      displ_ct_1 = "currency_display_name_count_1",
      displ_ct_oth = "currency_display_name_count_other"
    )
  
  currencies[
    currencies$locale == locale &
      currencies$currency_code == currency,
  ][[param_full]]
}


#' Get a single localized value from the `currencies` dataset
#'
#' @description
#' The `locale_names` table contains information on how to express components of
#' locale codes and this is localized across 571 locales. The `cldr_locale()`
#' function allows one to extract a named list using a `locale` and one of the
#' following parameter names:
#' 
#' - `"langs"`: corresponds to the `lang_names` column in `locale_names`
#' - `"scripts"`: is the `script_names` column in `locale_names`
#' - `"territories"`: is `territory_names`
#' - `"variants"`: is `variant_names`
#' 
#' @return A named list.
#' 
#' @export
cldr_locale <- function(
    locale = "en",
    param = c("langs", "scripts", "territories", "variants")
) {
  
  param <- match.arg(param)
  
  param_full <-
    switch(
      param,
      langs = "lang_names",
      scripts = "script_names",
      territories = "territory_names",
      variants = "variant_names"
    )
  
  values <- locale_names[locale_names$locale == locale, ][[param_full]]
  values <- unlist(values, use.names = TRUE)
  
  names(values) <- gsub("^name\\.", "", names(values))
  
  as.list(values)
}

#' @export
dates_params <-
  list(
    months_format_abbrev = "months_format_abbrev",
    months_format_narrow = "months_format_narrow", 
    months_format_wide = "months_format_wide",
    days_standalone_narrow = "days_standalone_narrow", 
    days_standalone_short = "days_standalone_short",
    days_standalone_wide = "days_standalone_wide", 
    quarters_format_abbrev = "quarters_format_abbrev",
    quarters_format_narrow = "quarters_format_narrow", 
    quarters_format_wide = "quarters_format_wide",
    quarters_standalone_abbrev = "quarters_standalone_abbrev", 
    quarters_standalone_narrow = "quarters_standalone_narrow", 
    quarters_standalone_wide = "quarters_standalone_wide",
    dayperiods_format_abbrev = "dayperiods_format_abbrev", 
    dayperiods_format_narrow = "dayperiods_format_narrow",
    dayperiods_format_wide = "dayperiods_format_wide", 
    dayperiods_standalone_abbrev = "dayperiods_standalone_abbrev", 
    dayperiods_standalone_narrow = "dayperiods_standalone_narrow", 
    dayperiods_standalone_wide = "dayperiods_standalone_wide", 
    eras_abbrev = "eras_abbrev",
    eras_names = "eras_names",
    eras_narrow = "eras_narrow", 
    date_formats = "date_formats",
    date_skeletons = "date_skeletons", 
    time_formats = "time_formats",
    time_skeletons = "time_skeletons", 
    date_time_available_formats = "date_time_available_formats", 
    date_time_append_items = "date_time_append_items",
    date_time_interval_formats = "date_time_interval_formats"
  )

#' Get a single localized value from the `dates` dataset
#'
#' @description
#' The `dates` table contains information on how to express dates and this data
#' is localized across 571 locales. The `cldr_dates()`
#' function allows one to extract a named list using a `locale` and a specific
#' `param`. The `param` values are:
#' 
#' - `"locale"`
#' - `"months_format_abbrev"`
#' - `"months_format_narrow"`
#' - `"months_format_wide"`
#' - `"days_standalone_narrow"`
#' - `"days_standalone_short"`
#' - `"days_standalone_wide"`
#' - `"quarters_format_abbrev"`
#' - `"quarters_format_narrow"`
#' - `"quarters_format_wide"`
#' - `"quarters_standalone_abbrev"`
#' - `"quarters_standalone_narrow"`
#' - `"quarters_standalone_wide"`
#' - `"dayperiods_format_abbrev"`
#' - `"dayperiods_format_narrow"`
#' - `"dayperiods_format_wide"`
#' - `"dayperiods_standalone_abbrev"`
#' - `"dayperiods_standalone_narrow"`
#' - `"dayperiods_standalone_wide"`
#' - `"eras_abbrev"`
#' - `"eras_names"`
#' - `"eras_narrow"`
#' - `"date_formats"`
#' - `"date_skeletons"`
#' - `"time_formats"`
#' - `"time_skeletons"`
#' - `"date_time_available_formats"`
#' - `"date_time_append_items"`
#' - `"date_time_interval_formats"`
#' 
#' @return A named list.
#' 
#' @export
cldr_dates <- function(
    locale = "en",
    param = dates_params$months_format_abbrev
) {
  
  values <- dates[dates$locale == locale, ][[param]]
  values <- unlist(values, use.names = TRUE)
  
  names(values) <- gsub("^value\\.", "", names(values))
  
  as.list(values)
}

#' @export
numbers_params <-
  list(
    locale = "locale",
    default_numbering_system = "default_numbering_system", 
    other_numbering_systems = "other_numbering_systems",
    minimum_grouping_digits = "minimum_grouping_digits", 
    decimal = "decimal",
    group = "group",
    list = "list",
    percent_sign = "percent_sign", 
    plus_sign = "plus_sign",
    minus_sign = "minus_sign",
    approx_sign = "approx_sign", 
    exp_sign = "exp_sign",
    sup_exp = "sup_exp",
    per_mille = "per_mille", 
    infinity = "infinity",
    nan = "nan",
    time_sep = "time_sep", 
    approx_pattern = "approx_pattern",
    at_least_pattern = "at_least_pattern", 
    at_most_pattern = "at_most_pattern",
    range_pattern = "range_pattern", 
    decimal_format = "decimal_format",
    sci_format = "sci_format", 
    percent_format = "percent_format",
    currency_format = "currency_format", 
    accounting_format = "accounting_format"
  )

#' @export
cldr_numbers <- function(
    locale = "en",
    param = numbers_params$default_numbering_system
) {
  
  values <- numbers[numbers$locale == locale, ][[param]]
  
  if (is.list(values)) {
    
    values <- unlist(values, use.names = TRUE)
    
    names(values) <- gsub("^value\\.", "", names(values))
    
    values <- as.list(values)
  }
  
  values
}

#' Get localized values from the `character_labels` dataset
#'
#' @description
#' The `character_labels` table contains information on character patterns
#' and character labels across 571 locales. The `cldr_character_labels()`
#' function allows one to extract parameter values from the table by
#' supplying the `locale` and one of the following parameter names:
#' 
#' - `"patterns"`: corresponds to the `character_label_patterns` column in
#' `character_labels`
#' - `"labels"`: is the `character_labels` column in `character_labels`
#' 
#' @return A named list.
#' 
#' @export
cldr_character_labels <- function(
    locale = "en",
    param = c("patterns", "labels")
) {
  
  param <- match.arg(param)
  
  param_full <-
    switch(
      param,
      patterns = "character_label_patterns",
      labels = "character_labels"
    )
  
  values <- character_labels[character_labels$locale == locale,][[param_full]]
  values <- unlist(values, use.names = TRUE)
  
  names(values) <- gsub("^value\\.", "", names(values))
  
  as.list(values)
}

#' @export
characters_params <-
  list(
    locale = "locale",
    exemplar_characters = "exemplar_characters", 
    auxiliary = "auxiliary",
    index = "index", 
    numbers = "numbers",
    punctuation = "punctuation",
    more_info = "more_info",
    ellipsis = "ellipsis", 
    leninent_scope_general = "leninent_scope_general",
    leninent_scope_date = "leninent_scope_date",
    leninent_scope_number = "leninent_scope_number", 
    stricter_scope_number = "stricter_scope_number"
  )

#' Get localized values from the `characters` dataset
#'
#' @description
#' The `characters` table contains information on the usage of characters
#' and exemplar character sets across 571 locales. The `cldr_characters()`
#' function allows one to extract parameter values from the table by
#' supplying the `locale` and one of the following parameter names:
#' 
#' - `"exemplar_characters"`
#' - `"auxiliary"`
#' - `"index"`
#' - `"numbers"`
#' - `"punctuation"`
#' - `"more_info"`
#' - `"ellipsis"`
#' - `"leninent_scope_general"`
#' - `"leninent_scope_date"`
#' - `"leninent_scope_number"`
#' - `"stricter_scope_number"`
#' 
#' @return Either a named list or a length one character vector, depending on
#' the `param` value.
#' 
#' @export
cldr_characters <- function(
    locale = "en",
    param = characters_params$exemplar_characters
) {
  
  values <- characters[characters$locale == locale, ][[param]]
  
  if (is.list(values)) {
    
    values <- unlist(values, use.names = TRUE)
    
    names(values) <- gsub("^value\\.", "", names(values))
    
    values <- as.list(values)
  }
  
  values
}
