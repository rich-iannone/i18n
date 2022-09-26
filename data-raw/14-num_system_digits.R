library(dplyr)
library(jsonlite)
library(readr)

source("data-raw/00-version_tag.R")

num_systems_path <- 
  file.path(
    "https://raw.githubusercontent.com/unicode-org/cldr-json",
    version_tag, "cldr-json/cldr-core/supplemental/numberingSystems.json"
  )

num_systems_data <-
  jsonlite::fromJSON(
    num_systems_path,
    flatten = TRUE,
    simplifyDataFrame = TRUE
  )

num_systems_list <- num_systems_data$supplemental$numberingSystems

num_systems_are_numeric <- 
  vapply(
    num_systems_list,
    FUN.VALUE = logical(1),
    USE.NAMES = FALSE,
    FUN = function(x) {
      x$`_type` == "numeric"
    })

num_systems_numeric_list <- num_systems_list[num_systems_are_numeric]

# Remove `tnsa`
num_systems_numeric_list <-
  num_systems_numeric_list[!names(num_systems_numeric_list) == "tnsa"]

num_system_digits <-
  dplyr::tibble(
    script = character(0),
    digits = list(character(0))
  )

for (i in seq_along(num_systems_numeric_list)) {
  
  script_str_length <- nchar(names(num_systems_numeric_list[i]))
  
  if (script_str_length != 4) next
  
  digits_vec <- unlist(strsplit(num_systems_numeric_list[i][[1]][["_digits"]], ""))
  
  num_system_digits_i <-
    dplyr::tibble(
      script = tools::toTitleCase(names(num_systems_numeric_list[i])),
      digits = list(digits_vec)
    )
  
  num_system_digits <- dplyr::bind_rows(num_system_digits, num_system_digits_i)
}

readr::write_rds(
  num_system_digits,
  file = "data-raw/num_system_digits.rds",
  compress = "xz"
)

rm(
  num_systems_path, num_systems_data, num_systems_list, num_systems_are_numeric,
  num_systems_numeric_list, num_system_digits, i
)
