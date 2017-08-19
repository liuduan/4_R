DF <- read.table(text="Rank F1     F2
N    500    100
E    400    100
S    300    100
W    200    100", header=TRUE)

library(reshape2)
DF1 <- melt(DF)
# DF1 <- melt(DF, id.var="Rank")

library(ggplot2)
plot <- ggplot(DF1, aes(x = Rank, y = value, fill = variable)) + 
  geom_bar(stat = "identity")
plot
# plot + coord_polar() 