% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/All-classes.R, R/CIMseqData.R,
%   R/initialize-methods.R, R/show-methods.R
\docType{class}
\name{CIMseqMultiplets-class}
\alias{CIMseqMultiplets-class}
\alias{getData,CIMseqMultiplets-method}
\alias{getData<-,CIMseqMultiplets-method}
\alias{c,CIMseqMultiplets-method}
\alias{CIMseqMultiplets}
\alias{CIMseqMultiplets,missing-method}
\alias{CIMseqMultiplets,matrix-method}
\alias{initialize,CIMseqMultiplets-method}
\alias{show,CIMseqMultiplets-method}
\title{CIMseqMultiplets}
\usage{
\S4method{getData}{CIMseqMultiplets}(x, n = NULL)

\S4method{getData}{CIMseqMultiplets}(x, n = NULL) <- value

\S4method{c}{CIMseqMultiplets}(x, ...)

CIMseqMultiplets(counts, ...)

\S4method{CIMseqMultiplets}{missing}(counts, ...)

\S4method{CIMseqMultiplets}{matrix}(counts, counts.ercc, features, ...)

\S4method{initialize}{CIMseqMultiplets}(.Object, ..., counts, counts.log,
  counts.cpm, counts.ercc, features)

\S4method{show}{CIMseqMultiplets}(object)
}
\arguments{
\item{x}{CIMseqMultiplets; CIMseqMultiplets object.}

\item{n}{Data to extract from CIMseqMultiplets object.}

\item{value}{Replacment value.}

\item{...}{additional arguments to pass on}

\item{counts}{matrix; Counts matrix with samples as columns and genes as rows.}

\item{counts.ercc}{matrix; A matrix containing ercc spike-in reads.}

\item{features}{numeric; The indexes of the features/genes for use in 
deconvolution.}

\item{.Object}{Internal object.}

\item{counts.log}{matrix; Log2 normalized counts per million.}

\item{counts.cpm}{matrix; Normalized counts per million.}

\item{object}{CIMseqMultiplets; A CIMseqMultiplets to show.}
}
\value{
CIMseqMultiplets object.
}
\description{
Subtitle
}
\details{
Imports count, count.ercc, and feature data
to a CIMseqSinglets object for sequenced multiplets.
}
\examples{

s <- grepl("^s", colnames(testCounts))
ercc <- grepl("^ERCC\\\\-[0-9]*$", rownames(testCounts))
features <- selectTopMax(testCounts[!ercc, s], 2000)
cObj <- CIMseqMultiplets(testCounts[!ercc, !s], testCounts[ercc, !s], features)

}
\author{
Jason T. Serviss
}
