#' Element lists for different **cldr** data tables
#' 
#' Several element lists are available for use in the various `cldr_*()`
#' functions. The list object names, the number of elements they hold, and the
#' functions they nicely pair with are:
#' 
#' `locale_names_elements` (4) -> `cldr_locale_names()`
#' `currency_codes` (303) -> `cldr_currency()`
#' `currencies_elements` (5) -> `cldr_currency()`
#' `dates_elements` (28) -> `cldr_dates()`
#' `numbers_elements` (26) -> `cldr_numbers()`
#' `characters_elements` (12) -> `cldr_characters()`
#' 
#' @name element_lists
NULL

#' @rdname element_lists
#' @export
locale_names_elements <-
  list(
    lang_names = "lang_names",
    script_names = "script_names",
    territory_names = "territory_names",
    variant_names = "variant_names"
  )

#' @rdname element_lists
#' @export
currency_codes <-
  list(
    ADP = "ADP", AED = "AED", AFA = "AFA", AFN = "AFN", ALK = "ALK", 
    ALL = "ALL", AMD = "AMD", ANG = "ANG", AOA = "AOA", AOK = "AOK", 
    AON = "AON", AOR = "AOR", ARA = "ARA", ARL = "ARL", ARM = "ARM", 
    ARP = "ARP", ARS = "ARS", ATS = "ATS", AUD = "AUD", AWG = "AWG", 
    AZM = "AZM", AZN = "AZN", BAD = "BAD", BAM = "BAM", BAN = "BAN", 
    BBD = "BBD", BDT = "BDT", BEC = "BEC", BEF = "BEF", BEL = "BEL", 
    BGL = "BGL", BGM = "BGM", BGN = "BGN", BGO = "BGO", BHD = "BHD", 
    BIF = "BIF", BMD = "BMD", BND = "BND", BOB = "BOB", BOL = "BOL", 
    BOP = "BOP", BOV = "BOV", BRB = "BRB", BRC = "BRC", BRE = "BRE", 
    BRL = "BRL", BRN = "BRN", BRR = "BRR", BRZ = "BRZ", BSD = "BSD", 
    BTN = "BTN", BUK = "BUK", BWP = "BWP", BYB = "BYB", BYN = "BYN", 
    BYR = "BYR", BZD = "BZD", CAD = "CAD", CDF = "CDF", CHE = "CHE", 
    CHF = "CHF", CHW = "CHW", CLE = "CLE", CLF = "CLF", CLP = "CLP", 
    CNH = "CNH", CNX = "CNX", CNY = "CNY", COP = "COP", COU = "COU", 
    CRC = "CRC", CSD = "CSD", CSK = "CSK", CUC = "CUC", CUP = "CUP", 
    CVE = "CVE", CYP = "CYP", CZK = "CZK", DDM = "DDM", DEM = "DEM", 
    DJF = "DJF", DKK = "DKK", DOP = "DOP", DZD = "DZD", ECS = "ECS", 
    ECV = "ECV", EEK = "EEK", EGP = "EGP", ERN = "ERN", ESA = "ESA", 
    ESB = "ESB", ESP = "ESP", ETB = "ETB", EUR = "EUR", FIM = "FIM", 
    FJD = "FJD", FKP = "FKP", FRF = "FRF", GBP = "GBP", GEK = "GEK", 
    GEL = "GEL", GHC = "GHC", GHS = "GHS", GIP = "GIP", GMD = "GMD", 
    GNF = "GNF", GNS = "GNS", GQE = "GQE", GRD = "GRD", GTQ = "GTQ", 
    GWE = "GWE", GWP = "GWP", GYD = "GYD", HKD = "HKD", HNL = "HNL", 
    HRD = "HRD", HRK = "HRK", HTG = "HTG", HUF = "HUF", IDR = "IDR", 
    IEP = "IEP", ILP = "ILP", ILR = "ILR", ILS = "ILS", INR = "INR", 
    IQD = "IQD", IRR = "IRR", ISJ = "ISJ", ISK = "ISK", ITL = "ITL", 
    JMD = "JMD", JOD = "JOD", JPY = "JPY", KES = "KES", KGS = "KGS", 
    KHR = "KHR", KMF = "KMF", KPW = "KPW", KRH = "KRH", KRO = "KRO", 
    KRW = "KRW", KWD = "KWD", KYD = "KYD", KZT = "KZT", LAK = "LAK", 
    LBP = "LBP", LKR = "LKR", LRD = "LRD", LSL = "LSL", LTL = "LTL", 
    LTT = "LTT", LUC = "LUC", LUF = "LUF", LUL = "LUL", LVL = "LVL", 
    LVR = "LVR", LYD = "LYD", MAD = "MAD", MAF = "MAF", MCF = "MCF", 
    MDC = "MDC", MDL = "MDL", MGA = "MGA", MGF = "MGF", MKD = "MKD", 
    MKN = "MKN", MLF = "MLF", MMK = "MMK", MNT = "MNT", MOP = "MOP", 
    MRO = "MRO", MRU = "MRU", MTL = "MTL", MTP = "MTP", MUR = "MUR", 
    MVP = "MVP", MVR = "MVR", MWK = "MWK", MXN = "MXN", MXP = "MXP", 
    MXV = "MXV", MYR = "MYR", MZE = "MZE", MZM = "MZM", MZN = "MZN", 
    NAD = "NAD", NGN = "NGN", NIC = "NIC", NIO = "NIO", NLG = "NLG", 
    NOK = "NOK", NPR = "NPR", NZD = "NZD", OMR = "OMR", PAB = "PAB", 
    PEI = "PEI", PEN = "PEN", PES = "PES", PGK = "PGK", PHP = "PHP", 
    PKR = "PKR", PLN = "PLN", PLZ = "PLZ", PTE = "PTE", PYG = "PYG", 
    QAR = "QAR", RHD = "RHD", ROL = "ROL", RON = "RON", RSD = "RSD", 
    RUB = "RUB", RUR = "RUR", RWF = "RWF", SAR = "SAR", SBD = "SBD", 
    SCR = "SCR", SDD = "SDD", SDG = "SDG", SDP = "SDP", SEK = "SEK", 
    SGD = "SGD", SHP = "SHP", SIT = "SIT", SKK = "SKK", SLL = "SLL", 
    SOS = "SOS", SRD = "SRD", SRG = "SRG", SSP = "SSP", STD = "STD", 
    STN = "STN", SUR = "SUR", SVC = "SVC", SYP = "SYP", SZL = "SZL", 
    THB = "THB", TJR = "TJR", TJS = "TJS", TMM = "TMM", TMT = "TMT", 
    TND = "TND", TOP = "TOP", TPE = "TPE", TRL = "TRL", TRY = "TRY", 
    TTD = "TTD", TWD = "TWD", TZS = "TZS", UAH = "UAH", UAK = "UAK", 
    UGS = "UGS", UGX = "UGX", USD = "USD", USN = "USN", USS = "USS", 
    UYI = "UYI", UYP = "UYP", UYU = "UYU", UYW = "UYW", UZS = "UZS", 
    VEB = "VEB", VEF = "VEF", VES = "VES", VND = "VND", VNN = "VNN", 
    VUV = "VUV", WST = "WST", XAF = "XAF", XAG = "XAG", XAU = "XAU", 
    XBA = "XBA", XBB = "XBB", XBC = "XBC", XBD = "XBD", XCD = "XCD", 
    XDR = "XDR", XEU = "XEU", XFO = "XFO", XFU = "XFU", XOF = "XOF", 
    XPD = "XPD", XPF = "XPF", XPT = "XPT", XRE = "XRE", XSU = "XSU", 
    XTS = "XTS", XUA = "XUA", XXX = "XXX", YDD = "YDD", YER = "YER", 
    YUD = "YUD", YUM = "YUM", YUN = "YUN", YUR = "YUR", ZAL = "ZAL", 
    ZAR = "ZAR", ZMK = "ZMK", ZMW = "ZMW", ZRN = "ZRN", ZRZ = "ZRZ", 
    ZWD = "ZWD", ZWL = "ZWL", ZWR = "ZWR"
  )

#' @rdname element_lists
#' @export
currencies_elements <- 
  list(
    currency_symbol = "currency_symbol",
    currency_symbol_narrow = "currency_symbol_narrow",
    currency_display_name = "currency_display_name",
    currency_display_name_count_1 = "currency_display_name_count_1",
    currency_display_name_count_other = "currency_display_name_count_other"
  )

#' @rdname element_lists
#' @export
dates_elements <-
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

#' @rdname element_lists
#' @export
numbers_elements <-
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

#' @rdname element_lists
#' @export
characters_elements <-
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

#' Get a single localized value from the [locale_names] dataset
#'
#' @description
#' The [locale_names] table contains information on how to express components of
#' locale codes and this is localized across `r length(all_locales)` locales.
#' The `cldr_locale_names()` function allows one to extract a named list using
#' a `locale` and one of the following element names:
#' 
#' - `"langs"`: corresponds to the `lang_names` column in [locale_names]
#' - `"scripts"`: is the `script_names` column in [locale_names]
#' - `"territories"`: is `territory_names`
#' - `"variants"`: is `variant_names`
#' 
#' @param locale The locale ID for which to obtain the data from the
#'   [locale_names] table.
#' @param element The element from which information will be obtained for the
#'   specified `locale`. A valid set of [locale_names] elements can be accessed
#'   through the [locale_names_elements] list object.
#' 
#' @return A named list.
#' 
#' @export
cldr_locale_names <- function(
    locale = "en",
    element = locale_names_elements$lang_names
) {
  
  values <- locale_names[locale_names$locale == locale, ][[element]]
  values <- unlist(values, use.names = TRUE)
  
  names(values) <- gsub("^name\\.", "", names(values))
  
  as.list(values)
}

#' Get a single localized value from the [currencies] dataset
#'
#' @description
#' The [currencies] table contains information of currency codes and localized
#' display names and symbols across `r length(all_locales)` locales. The
#' `cldr_currencies()` function allows one to extract a single element value
#' from the table by supplying the `locale`, the currency code (`currency`), and
#' one of the following `element` names:
#' 
#' - `"currency_symbol"`
#' - `"currency_symbol_narrow"`
#' - `"currency_display_name"`
#' - `"currency_display_name_count_1"`
#' - `"currency_display_name_count_other"`
#' 
#' @param locale The locale ID for which to obtain the data from the
#'   [currencies] table.
#' @param currency The currency code (e.g., `"USD"`, `"EUR"`, etc.). A valid set
#'   of currency codes can be accessed through the [currency_codes] list object.
#' @param element The element from which information will be obtained for the
#'   specified `locale`. A valid set of currency elements can be accessed
#'   through the [currencies_elements] list object.
#'   
#' @section Examples:
#' 
#' If you would like to get the currency display name for the British Pound
#' (`"GBP"`) currency while in the `"de"` locale, the following invocation of
#' `cldr_currencies()` can be used.
#' 
#' ```r
#' cldr_currencies(
#'   locale = "de",
#'   currency = currency_codes$GBP,
#'   element = currencies_elements$currency_display_name
#' )
#' ```
#' ```
#' #> [1] "Britisches Pfund"
#' ``` 
#' 
#' @return A length one character vector.
#' 
#' @export
cldr_currencies <- function(
    locale = "en",
    currency = currency_codes$USD,
    element = currencies_elements$currency_symbol
) {

  currencies[
    currencies$locale == locale &
      currencies$currency_code == currency,
  ][[element]]
}

#' Get a single localized value from the [dates] dataset
#'
#' @description
#' The [dates] table contains information on how to express dates and this data
#' is localized across `r length(all_locales)` locales. The `cldr_dates()`
#' function allows one to extract a named list using a `locale` and a specific
#' `element`. The element values are:
#' 
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
#' @param locale The locale ID for which to obtain the data from the
#'   [dates] table.
#' @param element The element from which information will be obtained for the
#'   specified `locale`.
#' 
#' @return A named list.
#' 
#' @export
cldr_dates <- function(
    locale = "en",
    element = dates_elements$months_format_abbrev
) {
  
  values <- dates[dates$locale == locale, ][[element]]
  values <- unlist(values, use.names = TRUE)
  
  names(values) <- gsub("^value\\.", "", names(values))
  
  as.list(values)
}

#' Get a single localized value from the [numbers] dataset
#'
#' @description
#' The [numbers] table contains localization data for number usage and this data
#' is available for `r length(all_locales)` locales. The `cldr_numbers()`
#' function allows one to extract a named list using a `locale` and a specific
#' `element`. The `element` values are:
#' 
#' - `"default_numbering_system"`
#' - `"other_numbering_systems"`
#' - `"minimum_grouping_digits"`
#' - `"decimal"`
#' - `"group"`
#' - `"list"`
#' - `"percent_sign" `
#' - `"plus_sign"`
#' - `"minus_sign"`
#' - `"approx_sign"`
#' - `"exp_sign"`
#' - `"sup_exp"`
#' - `"per_mille"`
#' - `"infinity"`
#' - `"nan"`
#' - `"time_sep"`
#' - `"approx_pattern"`
#' - `"at_least_pattern"`
#' - `"at_most_pattern"`
#' - `"range_pattern"`
#' - `"decimal_format"`
#' - `"sci_format"`
#' - `"percent_format"`
#' - `"currency_format"`
#' - `"accounting_format"`
#' 
#' @param locale The locale ID for which to obtain the data from the
#'   [numbers] table.
#' @param element The element from which information will be obtained for the
#'   specified `locale`.
#'   
#' @return Either a named list or a length one character vector, depending on
#'   the `element` value.
#' 
#' @export
cldr_numbers <- function(
    locale = "en",
    element = numbers_elements$default_numbering_system
) {
  
  values <- numbers[numbers$locale == locale, ][[element]]
  
  if (is.list(values)) {
    
    values <- unlist(values, use.names = TRUE)
    
    names(values) <- gsub("^value\\.", "", names(values))
    
    values <- as.list(values)
  }
  
  values
}

#' Get localized values from the [character_labels] dataset
#'
#' @description
#' The [character_labels] table contains information on character patterns
#' and character labels across `r length(all_locales)` locales. The
#' `cldr_character_labels()` function allows one to extract element values from
#' the table by supplying the `locale` and one of the following element names:
#' 
#' - `"patterns"`: corresponds to the `character_label_patterns` column in
#' [character_labels]
#' - `"labels"`: is the `character_labels` column in [character_labels]
#' 
#' @param locale The locale ID for which to obtain the data from the
#'   `character_labels` table.
#' @param element The element from which information will be obtained for the
#'   specified `locale`.
#' 
#' @return A named list.
#' 
#' @export
cldr_character_labels <- function(
    locale = "en",
    element = c("patterns", "labels")
) {
  
  element <- match.arg(element)
  
  element_full <-
    switch(
      element,
      patterns = "character_label_patterns",
      labels = "character_labels"
    )
  
  values <- character_labels[character_labels$locale == locale,][[element_full]]
  values <- unlist(values, use.names = TRUE)
  
  names(values) <- gsub("^value\\.", "", names(values))
  
  as.list(values)
}

#' Get localized values from the [characters] dataset
#'
#' @description
#' The [characters] table contains information on the usage of characters
#' and exemplar character sets across `r length(all_locales)` locales. The
#' `cldr_characters()` function allows one to extract element values from the
#' table by supplying the `locale` and one of the following element names:
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
#' @param locale The locale ID for which to obtain the data from the
#'   [characters] table.
#' @param element The element from which information will be obtained for the
#'   specified `locale`.
#' 
#' @return Either a named list or a length one character vector, depending on
#'   the `element` value.
#' 
#' @export
cldr_characters <- function(
    locale = "en",
    element = characters_elements$exemplar_characters
) {
  
  values <- characters[characters$locale == locale, ][[element]]
  
  if (is.list(values)) {
    
    values <- unlist(values, use.names = TRUE)
    
    names(values) <- gsub("^value\\.", "", names(values))
    
    values <- as.list(values)
  }
  
  values
}
