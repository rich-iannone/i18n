library(pointblank)

test_that("Datasets have the expected types", {
  
  expect_type(all_locales, "character")
  expect_type(all_currency_codes, "character")
  expect_s3_class(default_locales, "data.frame")
  expect_s3_class(locale_names, "data.frame")
  expect_s3_class(dates, "data.frame")
  expect_s3_class(numbers, "data.frame")
  expect_s3_class(currencies, "data.frame")
  expect_s3_class(character_labels, "data.frame")
  expect_s3_class(characters, "data.frame")
})

test_that("Tabular datasets have the expected dimensions", {
  
  expect_col_count_match(default_locales, 2)
  expect_row_count_match(default_locales, 226)
  
  expect_col_count_match(locale_names, 5)
  expect_row_count_match(locale_names, length(all_locales))
  expect_equal(locale_names$locale, all_locales)

  expect_col_count_match(dates, 29)
  expect_row_count_match(dates, length(all_locales))
  expect_equal(dates$locale, all_locales)
  
  expect_col_count_match(numbers, 26)
  expect_row_count_match(numbers, length(all_locales))
  expect_equal(numbers$locale, all_locales)
  
  expect_col_count_match(currencies, 7)
  expect_row_count_match(currencies, length(all_locales) * length(all_currency_codes))
  
  expect_col_count_match(character_labels, 3)
  expect_row_count_match(character_labels, length(all_locales))
  expect_equal(character_labels$locale, all_locales)

  expect_col_count_match(characters, 12)
  expect_row_count_match(characters, length(all_locales))
  expect_equal(characters$locale, all_locales)
})
