% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/refseq_fromGene.R
\name{refseq_fromGene}
\alias{refseq_fromGene}
\title{Get the mRNA or protein accession}
\usage{
refseq_fromGene(GeneID, sequence)
}
\arguments{
\item{GeneID}{A character string of the GeneID.}

\item{sequence}{A character string of the mRNA or protein accession to fetch data from mRNA or protein databases, respectively.}
}
\value{
A character vector containing the mRNA or protein accession corresponding to the especified \code{GeneID}.
}
\description{
\code{refseq_fromGene()} Returns the mRNA or protein accession from a single GeneID.
}
\examples{
\donttest{
# Get the XM accessions from a set of gene ids
locs <- c("LOC101512347")
sapply(locs, function(x) refseq_fromGene (x, sequence = "transcript"), USE.NAMES = FALSE)

# Get the XP accessions from a set of gene ids
locs <- c("LOC101512347")
sapply(locs, function(x) refseq_fromGene (x, sequence = "protein"), USE.NAMES = FALSE)}

}
\seealso{
\code{\link{refseq_protein2RNA}} to obtain the transcript accessions that encode a set of protein accessions.

\code{\link{refseq_RNA2protein}} to obtain the protein accessions encoded by a set of transcript accessions.
}
\author{
Jose V. Die
}
