#' A vector containing all locale names
#'
#' This is a vector of the 571 locale names that are used throughout the tabular
#' datasets within the **cldr** package.
#'
"all_locales"

#' A table containing a mapping of default locale names to base locales
#'
#' This is a table that contains base locale names (e.g., `"en"`, `"de"`)
#' alongside their default locale names. This indicates that `"en"` maps to
#' `"en-US"` and `"de"` should map to `"de-DE"`. Throughout the **cldr**
#' datasets, base names are used instead of their expanded equivalents.
#'
#' @format A tibble with 226 rows and 2 variables:
#' \describe{
#' \item{default_locale}{The expanded locale names (e.g., `"en-US"`) that do not
#' normally appear within the **cldr** datasets but are valid aliases for base
#' locale names (e.g., `"en"`).}
#' \item{base_locale}{The corresponding base name for the locale. This omits the
#' region particle from the locale name.}
#' }
#' 
"default_locales"

#' A table with localized language, script, and territory names
#'
#' The `locale_names` table contains localized names for languages
#' (`lang_names`), script names (`script_names`), names for territories
#' (`territory_names`), and names for variants (`variant_names`).
#'
#' @format A tibble with 571 rows and 5 variables:
#' \describe{
#' \item{locale}{The locale name.}
#' \item{lang_names}{A list column containing named lists for all localized
#' language names.}
#' \item{script_names}{A list column containing named lists for all localized
#' script names.}
#' \item{territory_names}{A list column containing named lists for all localized
#' territory names.}
#' \item{variant_names}{A list column containing named lists for all localized
#' variant names.}
#' }
#' 
"locale_names"

#' A table with localized date attributes and descriptors
#'
#' The `dates` table contains localized data for constructing dates and times
#' across 571 locales.
#' 
#' @format A tibble with 571 rows and 29 variables:
#' \describe{
#' \item{locale}{The locale name.}
#' \item{months_format_abbrev}{months_format_abbrev}
#' \item{months_format_narrow}{months_format_narrow}
#' \item{months_format_wide}{months_format_wide}
#' \item{days_standalone_narrow}{days_standalone_narrow}
#' \item{days_standalone_short}{days_standalone_short}
#' \item{days_standalone_wide}{days_standalone_wide}
#' \item{quarters_format_abbrev}{quarters_format_abbrev}
#' \item{quarters_format_narrow}{quarters_format_narrow}
#' \item{quarters_format_wide}{quarters_format_wide}
#' \item{quarters_standalone_abbrev}{quarters_standalone_abbrev}
#' \item{quarters_standalone_narrow}{quarters_standalone_narrow}
#' \item{quarters_standalone_wide}{quarters_standalone_wide}
#' \item{dayperiods_format_abbrev}{dayperiods_format_abbrev}
#' \item{dayperiods_format_narrow}{dayperiods_format_narrow}
#' \item{dayperiods_format_wide}{dayperiods_format_wide}
#' \item{dayperiods_standalone_abbrev}{dayperiods_standalone_abbrev}
#' \item{dayperiods_standalone_narrow}{dayperiods_standalone_narrow}
#' \item{dayperiods_standalone_wide}{dayperiods_standalone_wide}
#' \item{eras_abbrev}{eras_abbrev}
#' \item{eras_names}{eras_names}
#' \item{eras_narrow}{eras_narrow}
#' \item{date_formats}{date_formats}
#' \item{date_skeletons}{date_skeletons}
#' \item{time_formats}{time_formats}
#' \item{time_skeletons}{time_skeletons}
#' \item{date_time_available_formats}{date_time_available_formats}
#' \item{date_time_append_items}{date_time_append_items}
#' \item{date_time_interval_formats}{date_time_interval_formats}
#' }
#'
"dates"

#' A table with localized numerical attributes and descriptors
#'
#' The `numbers` table contains localized data for number-related entities
#' across 571 locales.
#' 
#' @format A tibble with 571 rows and 26 variables:
#' \describe{
#' \item{locale}{The locale name.}
#' \item{default_numbering_system}{default_numbering_system}
#' \item{other_numbering_systems}{other_numbering_systems}
#' \item{minimum_grouping_digits}{minimum_grouping_digits}
#' \item{decimal}{decimal}
#' \item{group}{group}
#' \item{list}{list}
#' \item{percent_sign}{percent_sign}
#' \item{plus_sign}{plus_sign}
#' \item{minus_sign}{minus_sign}
#' \item{approx_sign}{approx_sign}
#' \item{exp_sign}{exp_sign}
#' \item{sup_exp}{sup_exp}
#' \item{per_mille}{per_mille}
#' \item{infinity}{infinity}
#' \item{nan}{nan}
#' \item{time_sep}{time_sep}
#' \item{approx_pattern}{approx_pattern}
#' \item{at_least_pattern}{at_least_pattern}
#' \item{at_most_pattern}{at_most_pattern}
#' \item{range_pattern}{range_pattern}
#' \item{decimal_format}{decimal_format}
#' \item{sci_format}{sci_format}
#' \item{percent_format}{percent_format}
#' \item{currency_format}{currency_format}
#' \item{accounting_format}{accounting_format}
#' }
#'
"numbers"

#' A table with localized currency attributes and descriptors
#'
#' The `currencies` table contains localized data for currency-related entities
#' across 571 locales.
#' 
#' @format A tibble with 173,013 rows and 7 variables:
#' \describe{
#' \item{locale}{The locale name.}
#' \item{currency_code}{The three-letter code that identifies the currency.}
#' \item{currency_display_name}{currency_display_name}
#' \item{currency_symbol}{currency_symbol}
#' \item{currency_symbol_narrow}{currency_symbol_narrow}
#' \item{currency_display_name_count_1}{currency_display_name_count_1}
#' \item{currency_display_name_count_other}{currency_display_name_count_other}
#' }
#'
"currencies"

#' A table with localized character labels and descriptors
#'
#' The `character_labels` table contains localized data for character labels
#' across 571 locales.
#' 
#' @format A tibble with 173,013 rows and 7 variables:
#' \describe{
#' \item{locale}{The locale name.}
#' \item{character_label_patterns}{character_label_patterns}
#' \item{character_labels}{character_labels}
#' }
#'
"character_labels"

#' A table with localized character data
#'
#' The `characters` table contains localized character data across 571 locales.
#' 
#' @format A tibble with 173,013 rows and 7 variables:
#' \describe{
#' \item{locale}{The locale name.}
#' \item{exemplar_characters}{exemplar_characters}
#' \item{auxiliary}{auxiliary}
#' \item{index}{index}
#' \item{numbers}{numbers}
#' \item{punctuation}{punctuation}
#' \item{ellipsis}{ellipsis}
#' \item{leninent_scope_general}{leninent_scope_general}
#' \item{leninent_scope_date}{leninent_scope_date}
#' \item{leninent_scope_number}{leninent_scope_number}
#' \item{stricter_scope_number}{stricter_scope_number}
#' }
#'
"characters"
