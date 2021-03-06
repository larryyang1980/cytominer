% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/drop_na_columns.R
\name{drop_na_columns}
\alias{drop_na_columns}
\title{Remove variables with NA values.}
\usage{
drop_na_columns(population, variables, cutoff = 0.05)
}
\arguments{
\item{population}{tbl with grouping (metadata) and observation variables.}

\item{variables}{character vector specifying observation variables.}

\item{cutoff}{threshold between [0,1]. Variables with an \code{NA} frequency > \code{cutoff} are returned.}
}
\value{
character vector specifying observation variables to be excluded.
}
\description{
\code{drop_na_columns} returns list of variables which have greater than a specified threshold number of \code{NA}s.
}
\examples{
 population <- tibble::data_frame(
   Metadata_group = c("control", "control", "control", "control",
                      "experiment", "experiment", "experiment", "experiment"),
   Metadata_batch = c("a", "a", "b", "b", "a", "a", "b", "b"),
   AreaShape_Area = c(10, 12, 15, 16, 8, 8 ,7, 7),
   AreaShape_Length = c(2, 3, NA, NA, 4, 5, 1, 5)
 )
variables <- c('AreaShape_Area','AreaShape_Length')
drop_na_columns(population, variables)

}
