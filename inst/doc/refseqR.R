## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(refseqR)

## -----------------------------------------------------------------------------
GeneID <- c("LOC101512347")
transcript <- refseq_fromGene(GeneID, sequence = "transcript")
protein <- refseq_fromGene(GeneID, sequence = "protein")

## -----------------------------------------------------------------------------
GeneID <- c("LOC105852298")
transcript <- refseq_fromGene(GeneID, sequence = "transcript")
protein    <- refseq_fromGene(GeneID, sequence = "protein")

## -----------------------------------------------------------------------------
id <- c("LOC101512347")
refseq_description(id)

## -----------------------------------------------------------------------------
mrna_gb <- rentrez::entrez_fetch(db= 'nuccore', id = "XM_004487701", rettype = 'gp') 
strsplit(mrna_gb, "\n")[[1]][1:30]

## ---- eval = F----------------------------------------------------------------
#  transcript = c("XM_004487701", "XM_004488493", "XM_004501904")
#  feat = c("caption", "moltype", "sourcedb", "slen", "title")
#  refseq_mRNAfeat(transcript, feat)

## -----------------------------------------------------------------------------
transcript <- "XM_004487701"
refseq_RNA2protein(transcript)

## -----------------------------------------------------------------------------
refseq_CDScoords(transcript)
refseq_CDSseq(transcript)

## -----------------------------------------------------------------------------
mrna_fasta = rentrez::entrez_fetch(db="nuccore", id=transcript, rettype="fasta")
# take a look at the first 500 chars. 
cat(strwrap(substr(mrna_fasta, 1, 500)), sep="\n")

## -----------------------------------------------------------------------------
substr(toString(refseq_CDSseq(transcript)), 1, 60)

## -----------------------------------------------------------------------------
id <- "XM_004487701"
refseq_description(id)

## -----------------------------------------------------------------------------
protein <- "XP_020244413"
refseq_protein2RNA(protein)

## -----------------------------------------------------------------------------
refseq_AAlen(protein)
refseq_AAmol_wt(protein)

## -----------------------------------------------------------------------------
refseq_AAseq(protein)

## -----------------------------------------------------------------------------
id <- "XP_020244413"
refseq_description(id)

