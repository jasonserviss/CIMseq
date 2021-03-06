% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CIMseqSwarm.R
\name{appropriateSinglets}
\alias{appropriateSinglets}
\title{appropriateSinglets}
\usage{
appropriateSinglets(singlets, idx, features = NULL)
}
\arguments{
\item{singlets}{A CIMseqSinglets object.}

\item{idx}{numeric; Singlet indices to subset. Generated with the 
\code{\link{sampleSinglets}} function. THIS IS ZERO BASED since upstream 
calculations are done in C++.}

\item{features}{numeric; Indices of selected features used for deconvolution.
If null, all genes are used.}

\item{...}{additional arguments to pass on}
}
\value{
Appropriated singlets.
}
\description{
Sets up the singlets in long form for C++ calculation.
}
\examples{

classes <- getData(CIMseqSinglets_test, "classification")
idx <- purrr::map(1:10, ~sampleSinglets(classes))
out <- singletSubset <- appropriateSinglets(CIMseqSinglets_test, idx, 1:20)

}
\author{
Jason T. Serviss
}
