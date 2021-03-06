% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shading.R
\name{dyShading}
\alias{dyShading}
\title{dygraph region shading}
\usage{
dyShading(dygraph, from, to, color = "#EFEFEF", axis = "x")
}
\arguments{
\item{dygraph}{Dygraph to add shading to}

\item{from}{Date/time or numeric to shade from (for date/time this must be a
\code{as.POSIXct} object or another object convertible via
\code{as.POSIXct}).}

\item{to}{Date/time or numeric to shade to (for date/time this must be a
\code{as.POSIXct} object or another object convertible via
\code{as.POSIXct}).}

\item{color}{Color of shading. This can be of the form "#AABBCC" or 
"rgb(255,100,200)" or "yellow". Defaults to a very light gray.}

\item{axis}{Axis to apply shading.  Choices are "x" or "y".}
}
\value{
A dygraph with the specified shading
}
\description{
Specify that a region of a dygraph be drawn with a background shading
}
\note{
See the
  \href{https://rstudio.github.io/dygraphs/gallery-annotations.html}{online
  documentation} for additional details and examples.
}
\examples{
library(dygraphs)

dygraph(nhtemp, main = "New Haven Temperatures") \%>\% 
  dyShading(from = "1920-1-1", to = "1930-1-1") \%>\%
  dyShading(from = "1940-1-1", to = "1950-1-1")
  
dygraph(nhtemp, main = "New Haven Temperatures") \%>\% 
  dyShading(from = "48", to = "52", axis = "y") \%>\%
  dyShading(from = "50", to = "50.1", axis = "y", color = "black")
    
}

