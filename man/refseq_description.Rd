% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/refseq_description.R
\name{refseq_description}
\alias{refseq_description}
\title{Get the sequence Description}
\usage{
refseq_description(id)
}
\arguments{
\item{id}{A character string of the XP, XM, or Gene id.}
}
\value{
A character vector containing the sequence description corresponding to the specified sequence as \code{id}.
}
\description{
\code{refseq_description()} Returns the sequence description from a single XM, XP, or Gene id. accession.
}
\examples{
 # Get the sequence descriptions from a set of XM accessions
 xm = c("XM_004487701")
 sapply(xm, function(x) refseq_description(x), USE.NAMES = FALSE)

 # Get the sequence descriptions from a set of XP accessions
 xp = c("XP_004487758")
 sapply(xp, function(x) refseq_description(x), USE.NAMES = FALSE)

\donttest{
#' # Get the sequence descriptions from a set of Gene accessions
locs <- c("LOC101512347", "LOC101506901")
sapply(locs, function(x) refseq_description(x), USE.NAMES = FALSE)}

}
\seealso{
\code{\link{refseq_XMfromXP}} to obtain the XM ids that encode a set of XP ids.

\code{\link{refseq_XPfromXM}} to obtain the XP ids encoded by a set of XM ids.
}
\author{
Jose V. Die
}
