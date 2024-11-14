#Script to plot the logistic growth data

# Step 1: Load the data
growth_data <- read.csv("Experiment.csv")

# Step 2: Install and load packages
install.packages("ggplot2")
library(ggplot2)

# Step 3: Plot the data with raw scale for y-axis
raw_data_plot <- ggplot(data = growth_data, aes(x = t, y = N)) +
  geom_point() +
  xlab("Time (t)") +
  ylab("Population Size (N)") +
  theme_bw()

print(raw_data_plot)

# Step 4: Save the plot as PNG
ggsave("raw_data_plot.png", plot = raw_data_plot, width = 8, height = 6, dpi = 300)

# Step 5: Plot the data with logarithmic scale on y-axis
raw_data_on_log_plot <- ggplot(data = growth_data, aes(x = t, y = N)) +
  geom_point() +
  xlab("Time (t)") +
  ylab("Population Size (log scale)") +
  scale_y_continuous(trans='log10') +
  theme_bw()

print(raw_data_on_log_plot)

# Step 6: Save the plot as PNG
ggsave("raw_data_on_log_plot.png", plot = raw_data_on_log_plot, width = 8, height = 6, dpi = 300)

