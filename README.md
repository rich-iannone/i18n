**i18n**

<!-- badges: start -->
<a href="https://cran.r-project.org/package=i18n"><img src="https://www.r-pkg.org/badges/version/i18n" alt="CRAN status" /></a>
<a href="https://github.com/rich-iannone/i18n/actions"><img src="https://github.com/rich-iannone/i18n/workflows/R-CMD-check/badge.svg" alt="R build status" /></a>
<!-- badges: end -->

With the **i18n** package it’s possible to get *CLDR* (*Common Locale
Data Repository*) data to support your own localization efforts. This package
provides up-to-date datasets from the Unicode's CLDR repositories, and, as an
added bonus, functions to extract elements and sub-elements in a locale-specific
way.

The included datasets are:

- `all_locales`
- `all_currency_codes`
- `default_locales`
- `locale_names`
- `dates`
- `dates_generic`
- `numbers`
- `currencies`
- `characters`
- `character_labels`
- `delimiters`
- `layout`
- `script_metadata`
- `units`
- `tz_exemplar`
- `tz_map`
- `tz_formats`
- `tz_bcp_id`

And the nice-to-have functions are:

- `cldr_locale_names()`
- `cldr_numbers()`
- `cldr_dates()`
- `cldr_currencies()`
- `cldr_characters()`
- `cldr_character_labels()`

## EXAMPLES

If you need to get the decimal mark and grouping separators for the base German
locale `"de"`, then the `cldr_numbers()` function could be used:

```r
cldr_numbers(locale = "de", element = numbers_elements$decimal)
```
```
#> [1] ","
```

```r
cldr_numbers(locale = "de", element = numbers_elements$group)
```
```
#> [1] "."
```

Need to know the `"LU"` territory name from the `"es"` locale?

```r
cldr_locale_names(locale = "es", element = locale_names_elements$territory_names)$LU
```
```
#> [1] "Luxemburgo"
```

Want a list of days-of-the-week names in the `"ko"` locale?

```r
cldr_dates(locale = "ko", element = dates_elements$days_standalone_wide)
```
```
#> $sun
#> [1] "일요일"
#> 
#> $mon
#> [1] "월요일"
#> 
#> $tue
#> [1] "화요일"
#> 
#> $wed
#> [1] "수요일"
#> 
#> $thu
#> [1] "목요일"
#> 
#> $fri
#> [1] "금요일"
#> 
#> $sat
#> [1] "토요일"
```

Need to get the appropriate display name for the Japanese Yen (`"JPY"`)
currency while in the `"zh"` locale?

```r
cldr_currencies(
  locale = "zh",
  currency = currency_code_list$JPY,
  element = currencies_elements$currency_display_name
)
```
```
#> [1] "日元"
```

Would you like the complete set of exemplar characters for the `"fi"` locale?

```r
cldr_characters(locale = "fi", element = characters_elements$exemplar_characters)
```
```
#> [1] "[a b c d e f g h i j k l m n o p q r s š t u v w x y z ž å ä ö]"
```

This is just a small sampling of ways you can easily get at all the data
within the CLDR while using **R**!

## INSTALLATION

Want to try this out? The **i18n** package is available on **CRAN**:

``` r
install.packages("i18n")
```

You can also install the development version of **i18n** from **GitHub**:

``` r
devtools::install_github("rich-iannone/i18n")
```

If you encounter a bug, have usage questions, or want to share ideas to
make this package better, feel free to file an
[issue](https://github.com/rich-iannone/i18n/issues).

## Code of Conduct

Please note that the **i18n** project is released with a [contributor
code of
conduct](https://www.contributor-covenant.org/version/2/0/code_of_conduct/).<br>By
participating in this project you agree to abide by its terms.

## 📄 License

**i18n** is licensed under the MIT license.
See the [`LICENSE.md`](LICENSE.md) file for more details.

## 🏛️ Governance

This project is primarily maintained by [Rich Iannone](https://twitter.com/riannone).

<hr>
