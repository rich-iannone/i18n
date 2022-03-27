#' A vector containing all locale names
#'
#' @description
#' This is a vector of the `r length(all_locales)` locale names that are used
#' throughout the tabular datasets within the **i18n** package.
#'
"all_locales"

#' A vector containing every currency code
#'
#' @description
#' This is a vector of the `r length(all_currency_codes)` currency codes that
#' are used in the [currencies] dataset within the **i18n** package.
#'
"all_currency_codes"

#' A table containing a mapping of default locale names to base locales
#' 
#' @description
#' This is a table that contains base locale names (e.g., `"en"`, `"de"`)
#' alongside their default locale names. This indicates that `"en"` maps to
#' `"en-US"` and `"de"` should map to `"de-DE"`. Throughout the **i18n**
#' datasets, base names are used instead of their expanded equivalents.
#' 
#' There are `r nrow(default_locales)` rows and the following 2 columns:
#' 
#' - `default_locale` (`character`)
#' - `base_locale` (`character`)
#'
#' The `default_locale` column contains the expanded locale names (e.g.,
#' `"en-US"`) that do not normally appear within the *CLDR* datasets but are
#' valid aliases for the base locale names (e.g., `"en"`) found in the
#' `base_locale` column.
#' 
"default_locales"

#' A table with localized language, script, and territory names
#'
#' @description
#' The `locale_names` table contains localized names for languages, script
#' names, names for territories, and names for variants. There are
#' `r length(all_locales)` rows and the following 5 columns:
#'
#' - `locale` (`character`)
#' - `lang_names` (`named list [variable length]`)
#' - `script_names` (`named list [variable length]`)
#' - `territory_names` (`named list [variable length]`)
#' - `variant_names` (`named list [variable length]`)
#' 
#' The `lang_names` column contains named lists for all localized language
#' names. The `script_names` column holds named lists for all localized
#' script names, and `territory_names` has all of the localized territory
#' names per locale. The `variant_names` list column containing named lists for all localized
#' variant names.
#' 
"locale_names"

#' A table with localized date attributes and descriptors
#'
#' @description
#' The `dates` table contains localized data for constructing dates and times
#' across `r length(all_locales)` locales. There are `r length(all_locales)`
#' rows and the following 29 columns:
#' 
#' - `locale` (`character`)
#' - `months_format_abbrev` (`named list [length of 12]`)
#' - `months_format_narrow` (`named list [length of 12]`)
#' - `months_format_wide` (`named list [length of 12]`)
#' - `days_standalone_narrow` (`named list [length of 7]`)
#' - `days_standalone_short` (`named list [length of 7]`)
#' - `days_standalone_wide` (`named list [length of 7]`)
#' - `quarters_format_abbrev` (`named list [length of 4]`)
#' - `quarters_format_narrow` (`named list [length of 4]`)
#' - `quarters_format_wide` (`named list [length of 4]`)
#' - `quarters_standalone_abbrev` (`named list [length of 4]`)
#' - `quarters_standalone_narrow` (`named list [length of 4]`)
#' - `quarters_standalone_wide` (`named list [length of 4]`)
#' - `dayperiods_format_abbrev` (`named list [variable length]`)
#' - `dayperiods_format_narrow` (`named list [variable length]`)
#' - `dayperiods_format_wide` (`named list [variable length]`)
#' - `dayperiods_standalone_abbrev` (`named list [variable length]`)
#' - `dayperiods_standalone_narrow` (`named list [variable length]`)
#' - `dayperiods_standalone_wide` (`named list [variable length]`)
#' - `eras_abbrev` (`named list [length of 4]`)
#' - `eras_names` (`named list [length of 4]`)
#' - `eras_narrow` (`named list [length of 4]`)
#' - `date_formats` (`named list [variable length]`)
#' - `date_skeletons` (`named list [length of 4]`)
#' - `time_formats` (`named list [variable length]`)
#' - `time_skeletons` (`named list [variable length]`)
#' - `date_time_available_formats` (`named list [variable length]`)
#' - `date_time_append_items` (`named list [length of 11]`)
#' - `date_time_interval_formats` (`named list [variable length]`)
#'
"dates"

#' A table with localized numerical attributes and descriptors
#'
#' @description
#' The `numbers` table contains localized data for number-related entities
#' across `r length(all_locales)` locales. This table has
#' `r length(all_locales)` rows (one per locale) and the following 26 columns:
#' 
#' - `locale` (`character`)
#' - `default_numbering_system` (`character`)
#' - `other_numbering_systems` (`named list [variable length]`)
#' - `minimum_grouping_digits` (`integer`)
#' - `decimal` (`character`)
#' - `group` (`character`)
#' - `list` (`character`)
#' - `percent_sign` (`character`)
#' - `plus_sign"` (`character`)
#' - `minus_sign` (`character`)
#' - `approx_sign` (`character`)
#' - `exp_sign` (`character`)
#' - `sup_exp` (`character`)
#' - `per_mille` (`character`)
#' - `infinity` (`character`)
#' - `nan` (`character`)
#' - `time_sep` (`character`)
#' - `approx_pattern` (`character`)
#' - `at_least_pattern` (`character`)
#' - `at_most_pattern` (`character`)
#' - `range_pattern` (`character`)
#' - `decimal_format` (`character`)
#' - `sci_format` (`character`)
#' - `percent_format` (`character`)
#' - `currency_format` (`character`)
#' - `accounting_format` (`character`)
#' 
#' The first column, `locale`, is the locale name (e.g., `"en"`, `"de-AT"`,
#' etc.). The remaining 25 columns will be explained in separate sections.
#' 
#' @section Default Numbering System:
#' 
#' The `default_numbering_system` (*CLDR*: `'defaultNumberingSystem'`) column
#' provides an element that indicates which numbering system should be used for
#' presentation of numeric quantities in the given locale.
#' 
#' @section Other Numbering Systems:
#' 
#' The `other_numbering_systems` (*CLDR*: `'otherNumberingSystems'`) column
#' provides an element that defines general categories of numbering systems that
#' are sometimes used in the given locale for formatting numeric quantities.
#' These additional numbering systems are often used in very specific contexts,
#' such as in calendars or for financial purposes. There are currently three
#' defined categories, as follows:
#'   
#' **native**
#' 
#' Defines the numbering system used for the native digits, usually defined as a
#' part of the script used to write the language. The native numbering system
#' can only be a numeric positional decimal-digit numbering system, using digits
#' with General_Category=Decimal_Number. In locales where the native numbering
#' system is the default, it is assumed that the numbering system `"latn"` (
#' Western Digits `0`-`9`) is always acceptable, and can be selected using the
#' `"-nu"` keyword as part of a Unicode locale identifier.
#' 
#' **traditional**
#' 
#' Defines the traditional numerals for a locale. This numbering system may be
#' numeric or algorithmic. If the traditional numbering system is not defined,
#' applications should use the native numbering system as a fallback.
#' 
#' **finance**
#' 
#' Defines the numbering system used for financial quantities. This numbering
#' system may be numeric or algorithmic. This is often used for ideographic
#' languages such as Chinese, where it would be easy to alter an amount
#' represented in the default numbering system simply by adding additional
#' strokes. If the financial numbering system is not specified, applications
#' should use the default numbering system as a fallback.
#' 
#' The categories defined for other numbering systems can be used in a Unicode
#' locale identifier to select the proper numbering system without having to
#' know the specific numbering system by name. To select the Hindi language
#' using the native digits for numeric formatting, use locale ID
#' `"hi-IN-u-nu-native"`. To select the Chinese language using the appropriate
#' financial numerals, use locale ID: `"zh-u-nu-finance"`. With the Tamil
#' language using the traditional Tamil numerals, use locale ID
#' `"ta-u-nu-traditio"`. As a last example, to select the Arabic language using
#' western digits `0`-`9`, use locale ID `"ar-u-nu-latn"`.
#' 
#' @section Minimum Grouping Digits:
#' 
#' The `minimum_grouping_digits` (*CLDR*: `'minimumGroupingDigits'`) value can
#' be used to suppress groupings below a certain value. This is used for
#' languages such as Polish, where one would only write the grouping separator
#' for values above `9999`. The `minimum_grouping_digits` value contains the
#' default for the locale.
#' 
#' @section Number Symbols:
#' 
#' Number symbols define the localized symbols that are commonly used when
#' formatting numbers in a given locale. These symbols can be referenced using a
#' number formatting pattern.
#'   
#' The `decimal` (*CLDR*: `'decimal'`) symbol separates the integer and
#' fractional part of the number. The `group` (*CLDR*: `'group'`) symbol
#' separates clusters of integer digits to make large numbers more legible;
#' commonly used for thousands (grouping size 3, e.g. `"100,000,000"`) or in
#' some locales, ten-thousands (grouping size 4, e.g. `"1,0000,0000"`). There
#' may be two different grouping sizes: The primary grouping size used for the
#' least significant integer group, and the secondary grouping size used for
#' more significant groups; these are not the same in all locales (e.g.
#' `"12,34,56,789"`). If a pattern contains multiple grouping separators, the
#' interval between the last one and the end of the integer defines the primary
#' grouping size, and the interval between the last two defines the secondary
#' grouping size. All others are ignored, so `"#,##,###,####"` ==
#' `"###,###,####"` == `"##,#,###,####"`.
#' 
#' The `list` (*CLDR*: `'list'`) symbol is used to separate numbers in a list
#' intended to represent structured data such as an array. It must be different
#' from the decimal value. This list separator is for non-linguistic usage as
#' opposed to the list patterns for linguistic lists (e.g. `"Bob, Carol, and
#' Ted"`).
#' 
#' The `plus_sign` (*CLDR*: `'plusSign'`) is the preferred symbol for expressing
#' a positive value and the `minus_sign` (*CLDR*: `'minusSign'`) is for negative
#' values. It can be used to produce modified patterns, so that `"3.12"` is
#' formatted as `"+3.12"`, for example. The standard number patterns (except for
#' accounting notation) will contain the `minus_sign`, explicitly or implicitly.
#' In the explicit pattern, the value of the `plus_sign` can be substituted for
#' the value of the `minus_sign` to produce a pattern that has an explicit plus
#' sign.
#' 
#' The `approx_sign` (*CLDR*: `'approximatelySign'`) element contains a symbol
#' used to denote an approximate value. The symbol is substituted in place of
#' the `minus_sign` using the same semantics as `plus_sign` substitution.
#' 
#' The `exp_sign` (*CLDR*: `'exponential'`) provides a symbol used for
#' separating the mantissa and exponent values. The exponential notation in
#' `sup_exp` (*CLDR*: `'superscriptingExponent'`) could alternatively be used to
#' show a format like `"1.23 × 104"`. The superscripting can use markup, such as
#' `<sup>4</sup>` in HTML, or for the special case of Latin digits, use
#' superscripted numeral characters.
#'
#' The `percent_sign` (*CLDR*: `'percentSign'`) is a symbol used to indicate a
#' percentage (1/100th) amount. If present, the value might require
#' multiplication by `100` before formatting. The `per_mille` (*CLDR*:
#' `'perMille'`) symbol used to indicate a per mille (1/1000th) amount. If
#' present, the value might need to be multiplied by `1000` before formatting.
#' 
#' The infinity sign is provided in the `infinity` (*CLDR*: `'infinity'`)
#' element. The `nan` element (*CLDR*: `'nan'`) has the NaN (not a number) sign.
#' These elements both correspond to the IEEE bit patterns for infinity and NaN.
#' 
#' The `time_sep` (*CLDR*: `'timeSeparator'`) pattern allows the same time
#' format to be used for multiple number systems when the time separator depends
#' on the number system. For example, the time format for Arabic should be a
#' colon when using the Latin numbering system, but when the Arabic numbering
#' system is used, the traditional time separator in older print styles was
#' often Arabic comma.
#' 
#' @section Miscellaneous Patterns:
#' 
#' There are several miscellaneous patterns for special purposes. The
#' `approx_pattern` (*CLDR*: `'approximately'`) indicates an approximate number,
#' such as: `"~99"`. With the pattern called `at_most_pattern` (*CLDR*:
#' `'atMost'`) we can describe an upper limit. This indicates that, for example,
#' there are `99` items or fewer. The `at_least_pattern` (*CLDR*: `'atLeast'`)
#' describes a lower limit. This might be `"99+"` to indicate that there are
#' `99` items or more. With the `range_pattern` (*CLDR*: `'range'`), a range of
#' numbers, such as `"99–103"`, can be used to indicate that there are from `99`
#' to `103` items.
#' 
#' @section Number Formats:
#' 
#' Number formats are used to define the rules for formatting numeric
#' quantities. Different formats are provided for different contexts. The
#' `decimal_format` (*CLDR*: `'decimalFormats'`) is the prescribed
#' locale-specific way to write a base 10 number. Variations of the
#' `decimal_format` pattern are provided that allow compact number formatting.
#' The `percent_format` (*CLDR*: `'percentFormats'`) is the pattern to use for
#' percentage formatting. The pattern for use with scientific (exponent)
#' formatting is provided as `sci_format` (*CLDR*: `'scientificFormats'`). The
#' pattern for use with currency formatting is found in `currency_format`
#' (*CLDR*: `'currencyFormats'`). This format contains a few additional
#' structural options that allow proper placement of the currency symbol
#' relative to the numeric quantity. The `accounting_format` (*CLDR*:
#' `'accountingFormats'`) pattern is to be used to generate accounting-style
#' formatting.
#'
"numbers"

#' A table with localized currency attributes and descriptors
#'
#' @description
#' The `currencies` table contains localized data for number-related entities
#' across `r length(all_locales)` locales. This table has 173,013 rows, one per
#' distinct combination of locale and currency (`currency_code`), and the
#' following 7 columns:
#'
#' - `locale` (`character`)
#' - `currency_code` (`character`)
#' - `currency_display_name` (`character`)
#' - `currency_symbol` (`character`)
#' - `currency_symbol_narrow` (`character`)
#' - `currency_display_name_count_1` (`character`)
#' - `currency_display_name_count_other` (`character`)
#'
"currencies"

#' A table with localized character labels and descriptors
#'
#' @description
#' The `character_labels` table contains localized data for character labels
#' across `r length(all_locales)` locales. There are `r length(all_locales)`
#' rows and the following 3 columns:
#' 
#' - `locale` (`character`)
#' - `character_label_patterns` (`named list [variable length]`)
#' - `character_labels` (`named list [variable length]`)
#'
"character_labels"

#' A table with localized character data
#'
#' @description
#' The `characters` table contains localized character data across
#' `r length(all_locales)` locales. There are `r length(all_locales)` rows and
#' the following 12 columns:
#' 
#' - `locale`(`character`)
#' - `exemplar_characters` (`character`)
#' - `auxiliary` (`character`)
#' - `index` (`character`)
#' - `numbers` (`character`)
#' - `punctuation` (`character`)
#' - `more_info` (`character`)
#' - `ellipsis` (`named list [length of 6]`)
#' - `leninent_scope_general` (`named list [length of 9]`)
#' - `leninent_scope_date` (`named list [length of 2]`)
#' - `leninent_scope_number` (`named list [length of 3]`)
#' - `stricter_scope_number` (`named list [length of 2]`)
#'
"characters"
