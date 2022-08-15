test_that("The `cldr_*()` functions work", {
  
  expect_type(
    cldr_locale_names(
      locale =  locale_list$fr,
      element = locale_names_elements$lang_names
    ),
    "list"
  )
  
  expect_type(
    cldr_numbers(
      locale =  locale_list$fr,
      element = numbers_elements$decimal
    ),
    "character"
  )
  
  expect_type(
    cldr_numbers(
      locale =  locale_list$fr,
      element = numbers_elements$other_numbering_systems
    ),
    "list"
  )
  
  expect_type(
    cldr_dates(
      locale =  locale_list$fr,
      element = dates_elements$months_format_wide
    ),
    "list"
  )
  
  expect_type(
    cldr_currencies(
      locale =  locale_list$de,
      currency = currency_code_list$BEL,
      element = currencies_elements$currency_display_name
    ),
    "character"
  )
  
  expect_type(
    cldr_characters(
      locale =  locale_list$tr,
      element = characters_elements$numbers
    ),
    "character"
  )
  
  expect_type(
    cldr_character_labels(
      locale =  locale_list$tr,
      element = "patterns"
    ),
    "list"
  )
})
