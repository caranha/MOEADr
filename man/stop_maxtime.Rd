% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stop_maxtime.R
\name{stop_maxtime}
\alias{stop_maxtime}
\title{Stop criterion: maximum runtime}
\usage{
stop_maxtime(stopcrit, iter.times, ...)
}
\arguments{
\item{stopcrit}{list containing the parameters defining the stop
handling method. See Section \code{Constraint Handling} of the \code{\link[=moead]{moead()}}
documentation for details.}

\item{iter.times}{vector containing the times spent by each iteration of the
moead() routine, up to the current one.}

\item{...}{other parameters (included for compatibility with generic call)}
}
\value{
boolean value: \code{TRUE} if this criterion has been met, \code{FALSE}
otherwise.
}
\description{
Verifies stop criterion "run time limit" for the MOEADr
package. For internal use only, not to be called directly by the user.
}
\details{
When this stop criterion is used, one element of the \code{stopcrit}
parameter (see \code{\link[=moead]{moead()}}) must have the following structure:
\itemize{
\item \code{stopcrit$name = "maxtime"}
\item \code{stopcrit$maxtime}, containing a positive integer representing the
desired time limit (in seconds).
}
}
\section{Warning}{

This function uses Sys.time() for verifying the total run time, i.e., it
counts wall-clock time, not CPU time.
}

