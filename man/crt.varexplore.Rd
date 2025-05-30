% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/crt.varexplore.R
\name{crt.varexplore}
\alias{crt.varexplore}
\title{Variance exploration for cluster randomized trials with binary outcomes}
\usage{
crt.varexplore(pc, pt, print = TRUE)
}
\arguments{
\item{pc}{The probability of the outcome in control clusters.}

\item{pt}{The probability of the outcome in treatment clusters.}

\item{print}{Whether or not to print the results in a table; defaults to TRUE. To retrieve the results even when print = FALSE, assign the function output to an object.}
}
\value{
A list of the arguments and a dataframe of outputs.
}
\description{
This function can be used to help select a plausible value for the variance/SD of the
random intercept for cluster in a cluster randomized trial with a binary outcome.
Based on user-supplied values of the outcome proportions in the two arms,
the function outputs, for a range of possible values of the SD of the
random intercept, the intervals within which we expect about 95\% of the cluster-level
proportions to lie in each arm.
}
\details{
The use of this function is illustrated in Crespi CM (2025) Power and Sample Size in R.
}
\examples{
crt.varexplore(pc = 0.25, pt = 0.15)
output <- crt.varexplore(pc = 0.25, pt = 0.15, print = FALSE)
output$pc
}
