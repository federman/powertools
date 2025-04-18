% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coprimary.z.R
\name{coprimary.z}
\alias{coprimary.z}
\title{Power calculations for multiple co-primary continuous endpoints assuming known covariance matrix}
\usage{
coprimary.z(
  K,
  n1 = NULL,
  n.ratio = 1,
  delta = NULL,
  Sigma,
  sd,
  rho,
  alpha = 0.025,
  power = NULL,
  v = FALSE
)
}
\arguments{
\item{K}{The number of endpoints.}

\item{n1}{The sample size for group 1.}

\item{n.ratio}{The ratio n2/n1 between the sample sizes of two groups; defaults to 1 (equal group sizes).}

\item{delta}{A vector of length K of the true mean differences mu1k - mu2k; must all be positive.}

\item{Sigma}{The covariance matrix of the K outcomes, of dimension K x K.}

\item{sd}{A vector of length K of the standard deviations of the K outcomes.}

\item{rho}{A vector of length 0.5\emph{K}(K-1) of the correlations among the K outcomes.}

\item{alpha}{The significance level or type 1 error rate; defaults to 0.025. A one-sided test is assumed.}

\item{power}{The specified level of power.}

\item{v}{Either TRUE for verbose output or FALSE to output computed argument only.}
}
\value{
A list of the arguments (including the computed one).
}
\description{
Computes power for test involving multiple co-primary continuous endpoints, assuming that the
covariance matrix (variances and covariances between endpoints) is known and therefore z-based test
statistics will be used. Studies with co-primary endpoints use “all-or-none” testing procedures and
only declare the trial to be a “success” if all endpoints are affirmed. All true mean differences
must be positive (the scale for some outcomes may need to be reversed
to meet this condition) and upper-tailed one-sided tests are assumed.
For the more realistic case that the covariance matrix is not known, see coprimary.t.

Either sd and rho or Sigma must be specified.
}
\details{
See Crespi et al. (2025) for more details.
This function is based on the power.known.var function from the mpe R package and material from
Sozu T, Sugimoto T, Hamasaki T, Evans SR. (2015) Sample Size Determination in Clinical Trials
with Multiple Endpoints. Springer International Publishing, Switzerland.
}
\examples{
coprimary.z(K = 2, n1 = 100, delta = c(0.4, 0.5), sd = c(1, 1), rho = 0.3,
alpha = 0.025, power = NULL)

Sigma <- matrix(c(1, 0.3, 0.3, 0.3, 1, 0.3, 0.3, 0.3, 1), nrow = 3, ncol = 3)
coprimary.z(K = 3, n1 = NULL, delta = c(0.2, 0.3, 0.4), Sigma = Sigma, alpha = 0.025, power = 0.8)

}
