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
  
  expect_equal(ncol(default_locales), 2)
  expect_equal(nrow(default_locales), 226)
  
  expect_equal(ncol(locale_names), 5)
  expect_equal(nrow(locale_names), length(all_locales))
  expect_equal(locale_names$locale, all_locales)

  expect_equal(ncol(dates), 29)
  expect_equal(nrow(dates), length(all_locales))
  expect_equal(dates$locale, all_locales)
  
  expect_equal(ncol(numbers), 26)
  expect_equal(nrow(numbers), length(all_locales))
  expect_equal(numbers$locale, all_locales)
  
  expect_equal(ncol(currencies), 7)
  expect_equal(nrow(currencies), length(all_locales) * length(all_currency_codes))
  
  expect_equal(ncol(character_labels), 3)
  expect_equal(nrow(character_labels), length(all_locales))
  expect_equal(character_labels$locale, all_locales)

  expect_equal(ncol(characters), 12)
  expect_equal(nrow(characters), length(all_locales))
  expect_equal(characters$locale, all_locales)
})
