#Script to plot the logistic growth data

# Step 1: Load the data
growth_data <- read.csv("Experiment.csv")

# Step 2: Install and load packages
install.packages("ggplot2")
library(ggplot2)

# Step 3: Plot the data with raw scale for y-axis
ggplot(data = growth_data, aes(x = t, y = N)) +
  geom_point() +
  xlab("Time (t)") +
  ylab("Population Size (N)") +
  theme_bw()

# Step 4: Plot the data with logarithmic scale on y-axis
ggplot(data = growth_data, aes(x = t, y = N)) +
  geom_point() +
  xlab("Time (t)") +
  ylab("Population Size (log scale)") +
  scale_y_continuous(trans='log10') +
  theme_bw()

