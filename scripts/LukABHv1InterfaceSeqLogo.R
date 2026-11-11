library(ggplot2)
library(ggseqlogo)
library(Biostrings)

#ggseqlogo help pages:
#https://cran.r-project.org/web/packages/ggseqlogo/refman/ggseqlogo.html
#https://omarwagih.github.io/ggseqlogo/

setwd("C:/Users/rprest/OneDrive - St. Jude Children's Research Hospital/Documents/LukAB_R")

LukAfasta <- readAAStringSet("LukAInterface_LukA.fasta")
LukAvector <- as.character(LukAfasta)

LukALogo <- ggseqlogo(LukAvector)
print(LukALogo)  

ggsave(
  filename = "LukALogo.svg", 
  plot = LukALogo,
  dpi=300
)

Sfasta <- readAAStringSet("LukAInterface_Sonly.fasta")
Svector <- as.character(Sfasta)

SLogo <- ggseqlogo(Svector) +
  ylim(0,2)
print(SLogo)  

ggsave(
  filename = "SLogo_ylim2.svg", 
  plot = SLogo,
  dpi=300
)

LukBfasta <- readAAStringSet("LukBInterface_LukB.fasta")
LukBvector <- as.character(LukBfasta)

LukBLogo <- ggseqlogo(LukBvector)
print(LukBLogo)  

ggsave(
  filename = "LukBLogo.svg", 
  plot = LukBLogo,
  dpi=300
)

Ffasta <- readAAStringSet("LukBInterface_Fonly.fasta")
Fvector <- as.character(Ffasta)

FLogo <- ggseqlogo(Fvector) +
  ylim(0,2)
print(FLogo)  

ggsave(
  filename = "FLogo_ylim2.svg", 
  plot = FLogo,
  dpi=300
)


# Only CC8 and CC45

LukAfasta <- readAAStringSet("LukAInterface_LukACC8and45.fasta")
LukAvector <- as.character(LukAfasta)

LukALogo <- ggseqlogo(LukAvector)
print(LukALogo)  

ggsave(
  filename = "LukALogo8and45.svg", 
  plot = LukALogo,
  dpi=300
)


LukBfasta <- readAAStringSet("LukBInterface_LukBCC8and45.fasta")
LukBvector <- as.character(LukBfasta)

LukBLogo <- ggseqlogo(LukBvector)
print(LukBLogo)  

ggsave(
  filename = "LukBLogo8and45.svg", 
  plot = LukBLogo,
  dpi=300
)
