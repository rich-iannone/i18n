#' Get a single localized value from the `currencies` dataset
#'
#' @description
#' The `currencies` table contains information of currency codes and localized
#' display names and symbols across 571 locales. The `get_currency_value()`
#' function allows one to extract a single parameter value from the table by
#' supplying the `locale`, the currency code, and one of the following parameter
#' names.
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
get_currency_value <- function(
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