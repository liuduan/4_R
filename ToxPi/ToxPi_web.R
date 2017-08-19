
args <- commandArgs(TRUE)	# this line will take the command line parameter into args.
a = args[1]			# this line will send args[1] to a
a
# mydata = read.csv("a.csv") 
# mydata

DF1 <- read.table(text="
Phenotype    value   Legend 		V5
Eye          400     Eye_data  	yellow
Hart         100     Hart_data  	orange
Joint 	 350     Joint_data  	purple
Liver        300     Liver_data   	blue
Kidney       200     Kidney_data   	white
Skin         500     Skin_data  	red
Skin 	       100     zData_Quality  white
Eye 	       100     zData_Quality  white
Liver 	 100     zData_Quality  white
Kidney 	 100 	   zData_Quality  white
Hart 	       100     zData_Quality  white
Joint 	 100     zData_Quality  white
", header=TRUE)

DF1[1,1]

library(reshape2)
DF <- melt(DF1, id=c("Phenotype", "Legend", "V5"))
class(DF[,5])
DF[,6]<-as.factor(DF[,3])
class(DF[,6])
DF


library(ggplot2)
setwd("C:\\4_R\\ToxPi\\ToxPi_Temp")
# file_name = paste(".\\Figs\\Cardio_total_cell_24h", i, ".png", sep="")
png("ToxPi.png") 		### if you need to save to a file
plot <- ggplot(DF, aes(x = Phenotype, y = value, fill = Legend)) + 
  	geom_bar(width = 1, stat = "identity", color = "white") +
	theme(axis.title.x=element_blank(),
      axis.text.x=element_blank(),
      axis.ticks.x=element_blank(),
	axis.title.y=element_blank(),
      axis.text.y=element_blank(),
      axis.ticks.y=element_blank())

# plot
plot + coord_polar() 
dev.off()		### if you need to save to a fiel.
