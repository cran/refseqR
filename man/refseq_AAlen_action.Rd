% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/refseq_AAlen_action.R
\name{refseq_AAlen_action}
\alias{refseq_AAlen_action}
\title{Get the amino acid length from a protein accession}
\usage{
refseq_AAlen_action(protein, retries)
}
\arguments{
\item{protein}{A character string of the protein id.}

\item{retries}{A numeric value to control the number of retry attempts to handle internet errors.}
}
\value{
A numeric value representing the aa length of the \code{protein}.
}
\description{
\code{refseq_AA_len_action()} Returns the amino acid length from a single protein accession.

Depending on the function, available accessions in \code{refseqR} include RefSeq models with the prefixes XM_ (mRNA), XR_ (non-coding RNA), and XP_ (protein), as well as subsequently curated RefSeq records with NM_, NR_, or NP_ accession prefixes.
}
\seealso{
\code{\link{refseq_RNA2protein}} to obtain the protein ids encoded by a set of transcript ids.
}
\author{
Jose V. Die
}
