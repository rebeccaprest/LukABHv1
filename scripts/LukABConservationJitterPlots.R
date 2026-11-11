# Leukocidin and LukAB variant sequences were aligned by CLUSTAL within Jalview
# 2.11.5.0 (Waterhouse et al. (2009)). The alignment conservation annotation
# (Livingstone and Barton (1993)) and percent identity for each position within
# the alignment were exported to the referenced .csv files.The alignment
# conservation annotation scores each position within the alignment from 0-11,
# where 0 is the most unconserved, 10 indicates all amino acid properties are
# conserved, and 11 indicates that amino acid identity is conserved across all
# queried sequences.Jitterplots were used to represent the data because of the
# large number of overlaying data points that would make traditional
# scatterplots difficult to interpret.

library(ggplot2)

setwd("C:/Users/rprest/OneDrive - St. Jude Children's Research Hospital/Documents/LukAB_R")
Lookup <- read.csv("PREST_pIDparaortho.csv")

#For all alignment positions, separated by S- and F- components
#Make and view basic jitterplots by conservation score, export as .svg
S_ScorePlot <- ggplot(Lookup, aes(x=A_ParaScore, y=A_OrthoScore)) + 
  geom_jitter(size=5, alpha=0.4) +
  theme(
    axis.ticks = element_blank(),
    panel.background = element_rect(fill='transparent'),
    panel.grid.major = element_line(color='black'),
    panel.grid.minor = element_blank()) +
  scale_x_continuous(n.breaks=12) +
  scale_y_continuous(n.breaks=12) +
  coord_fixed()
print(S_ScorePlot)

ggsave(
  filename = "ScorePlot_S_defaultjitter_300dpi_transparent.svg", 
  plot = S_ScorePlot,
  dpi=300
)

F_ScorePlot <- ggplot(Lookup, aes(x=B_ParaScore, y=B_OrthoScore)) + 
  geom_jitter(size=5, alpha=0.4) +
  theme(
    axis.ticks = element_blank(),
    panel.background = element_rect(fill='transparent'),
    panel.grid.major = element_line(color='black'),
    panel.grid.minor = element_blank()) +
  scale_x_continuous(n.breaks=12) +
  scale_y_continuous(n.breaks=12) +
  coord_fixed()
print(F_ScorePlot)

ggsave(
  filename = "ScorePlot_F_defaultjitter_300dpi_transparent.svg", 
  plot = F_ScorePlot,
  dpi=300
)



#For Interface Residues Only, combined S- and F- components
LookupInt <- read.csv("PREST_pIDparaorthoInterface.csv")

IntScorePlot <- ggplot(LookupInt, aes(x=Para_Score, y=Ortho_Score, shape = ID)) + 
  geom_jitter(size=10, alpha=0.4) +
  theme(
    axis.ticks = element_blank(),
    panel.background = element_rect(fill='transparent'),
    panel.grid.major = element_line(color='black'),
    panel.grid.minor = element_blank()) +
  scale_x_continuous(limits = c(0, NA), n.breaks=12) +
  scale_y_continuous(n.breaks=12) +
  coord_fixed()
print(IntScorePlot)

ggsave(
  filename = "ScorePlot_Interface_defaultjitter_300dpi_transparent.svg", 
  plot = IntScorePlot,
  dpi=300
)
