#Script to plot the logistic growth data

growth_data <- read.csv("Experiment.csv")

install.packages("ggplot2")
library(ggplot2)

# Plotting the data with raw scale for y-axis
ggplot(data = growth_data, aes(x = t, y = N)) +
  geom_point() +
  xlab("Time (t)") +
  ylab("Population Size (N)") +
  theme_bw()

# Plotting the data with logarithmic scale on y-axis
ggplot(data = growth_data, aes(x = t, y = N)) +
  geom_point() +
  xlab("Time (t)") +
  ylab("Population Size (log scale)") +
  scale_y_continuous(trans='log10') +
  theme_bw()
