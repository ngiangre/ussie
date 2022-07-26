% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get-matches.R
\name{uss_get_matches}
\alias{uss_get_matches}
\title{Get a league-play tibble}
\usage{
uss_get_matches(country = uss_countries(), ...)
}
\arguments{
\item{country}{`character` scalar, specifies the league.
`uss_countries()` returns choices available from {engsoccerdata}}

\item{...}{<\code{\link[dplyr:dplyr_data_masking]{data-masking}}> Expressions that return a
logical value, and are defined in terms of the variables in \code{.data}.
If multiple expressions are included, they are combined with the \code{&} operator.
Only rows for which all conditions evaluate to \code{TRUE} are kept.}
}
\value{
[tibble][tibble::tibble-package] with columns `country`, `date`,
 `season`, `tier`, `home`, `visitor`, `goals_home`, `goals_visitor`.
}
\description{
Gets league-play data for each game, from {engsoccerdata}, returning
a tibble in a standardised format.
}
\details{
`uss_countries()` returns the available choices; `"england"` is
the default.

This function relies on an internal function, `uss_make_matches()`, to parse
the source data.

This function can take a filter condition in the ... argument for further data filtering
}
\examples{
uss_get_matches("england") |>
dplyr::filter(season==1929)
}
