# venner example 

load("/Users/eilishmcmaster/Documents/MarsLong/venner_example.RData")

library(ggplot2)
library(ggVennDiagram)

# enter into the function the dart data, the grouping variable, and the minor allele frequency limit
# this function finds all the common alleles with maf>0.03, then determines if they are in each group
# it produces a list of lists where each list is the alleles found in that group
# it will not work for groups where n=1
#ggvenn cannot plot more than 7 groups at a time

venn <- venner(dms, dms$meta$analyses[,"venn"], 0.03)

ggVennDiagram(venn, label_alpha = 0, edge_size = 0, label_size=4)+ #label="percent"
  scale_fill_gradient(low="lightblue",high = "white", trans="log")+theme(legend.position = "none")

