library(dplyr)
library(jsonlite)
library(readr)

source("data-raw/00-version_tag.R")
source("data-raw/01-locales.R")

locale_names_tbl <- dplyr::tibble()

for (i in seq_along(all_locales)) {
  
  languages <- 
    file.path(
      "https://raw.githubusercontent.com/unicode-org/cldr-json",
      version_tag, "cldr-json/cldr-localenames-full/main",
      all_locales[i],
      "languages.json"
    )
  
  languages_data <-
    jsonlite::fromJSON(
      languages,
      flatten = TRUE,
      simplifyDataFrame = TRUE
    )
  
  scripts <- 
    file.path(
      "https://raw.githubusercontent.com/unicode-org/cldr-json",
      version_tag, "cldr-json/cldr-localenames-full/main",
      all_locales[i],
      "scripts.json"
    )
  
  scripts_data <-
    jsonlite::fromJSON(
      scripts,
      flatten = TRUE,
      simplifyDataFrame = TRUE
    )
  
  territories <- 
    file.path(
      "https://raw.githubusercontent.com/unicode-org/cldr-json",
      version_tag, "cldr-json/cldr-localenames-full/main",
      all_locales[i],
      "territories.json"
    )
  
  territories_data <-
    jsonlite::fromJSON(
      territories,
      flatten = TRUE,
      simplifyDataFrame = TRUE
    )
  
  variants <- 
    file.path(
      "https://raw.githubusercontent.com/unicode-org/cldr-json",
      version_tag, "cldr-json/cldr-localenames-full/main",
      all_locales[i],
      "variants.json"
    )
  
  variants_data <-
    jsonlite::fromJSON(
      variants,
      flatten = TRUE,
      simplifyDataFrame = TRUE
    )
  
  # languages_values
  languages_values <- languages_data$main[[1]]$localeDisplayNames$languages
  
  # scripts_values
  scripts_values <- scripts_data$main[[1]]$localeDisplayNames$scripts
  
  # territories_values
  territories_values <- territories_data$main[[1]]$localeDisplayNames$territories
  
  # variants_values
  variants_values <- variants_data$main[[1]]$localeDisplayNames$variants
  
  locale_names_tbl_row <-
    dplyr::tibble(
      locale = all_locales[i],
      lang_names = list(name = languages_values),
      script_names = list(name = scripts_values),
      territory_names = list(name = territories_values),
      variant_names = list(name = variants_values)
    )
  
  # Append row to main table
  locale_names_tbl <- dplyr::bind_rows(locale_names_tbl, locale_names_tbl_row)
}

readr::write_rds(
  locale_names_tbl,
  file = "data-raw/locale_names.rds",
  compress = "xz"
)
