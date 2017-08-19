DF <- read.table(text="
Phenotype data     Data_Quality
Skin    500    100
Eye     400    100
Liver   300    100
Kidney  200    100
Hart    100    100
Joint   350    100
", header=TRUE)

library(reshape2)
DF1 <- melt(DF)
# DF1 <- melt(DF, id.var="Rank")

library(ggplot2)
plot <- ggplot(DF1, aes(x = Phenotype, y = value, fill = variable)) + 
  geom_bar(stat = "identity")
# plot
plot + coord_polar() 