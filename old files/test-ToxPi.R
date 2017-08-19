require(ggplot2)

# function to compute standard error of mean

# set seed for reproducible results
set.seed(9876) 

# create toy data
variable = c('N', 'E', 'S', 'W', 'NW', 'N2', 'E2', 'S2', 'W2', 'NW2')
value = c(9, 4, 2, 6, 5, 3, 5, 7, 6, 1)

DF

plot <- ggplot(DF, aes(variable, value, fill = variable)) +
  geom_bar(width = 1, stat = "identity", color = "white") +
  scale_y_continuous(breaks = 0:nlevels(DF$variable)) +
  theme_gray() +
  theme(axis.ticks = element_blank(),
        axis.text = element_blank(),
        axis.title = element_blank(),
        axis.line = element_blank())
plot 

plot + coord_polar() 





##===========================================================
# library(plotly)

# r = c(77.5, 72.5, 70, 45, 22.5)
# t = c('N', 'E', 'S', 'W', 'NW')
# nms <- c('11-14 m/s', '11-14 m/s', '11-14 m/s', '11-14 m/s', '11-14 m/s')
# test_data_frame = data.frame(r,t,nms)
# test_data_frame

# wind_2 <- wind[c(1:5),]
# wind_2
# polar Area chart
# p <- plot_ly(test_data_frame, r = ~r, t = ~t) %>% add_area(color = ~nms)
# p <- plot_ly(wind_2, r = ~r, t = ~t) %>% add_area(color = ~nms)
#   layout(p, radialaxis = list(ticksuffix = "%"), orientation = 270)