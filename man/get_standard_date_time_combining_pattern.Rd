% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_symbols_patterns.R
\name{get_standard_date_time_combining_pattern}
\alias{get_standard_date_time_combining_pattern}
\title{Get the locale-specific standard date-time combining pattern}
\usage{
get_standard_date_time_combining_pattern(locale, width = NULL)
}
\arguments{
\item{locale}{an optional output locale to use for formatting the \code{input}
value according to the specified locale's rules. Example locale names
include \code{"en_US"} for English (United States) and \code{"fr_FR"} for French
(France). If a locale isn't provided and certain require locale- based
formatting then the \code{"en_US"} locale is used for this purpose.}

\item{width}{One of four standardized widths for the output representation.
These are either of \code{"short"}, \code{"medium"}, \code{"long"}, or \code{"full"}. Some
locales will provide unique values for each of these options but it is
often the case that the \code{"short"} and \code{"medium"} forms will be equivalent
(as is the case with the \code{"long"} and the \code{"full"} forms) due to a lack of
variation.}
}
\description{
Get the locale-specific standard date-time combining pattern
}
