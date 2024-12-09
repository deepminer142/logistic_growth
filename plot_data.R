#Script to plot the logistic growth data

growth_data <- read.csv("Experiment.csv")

install.packages("ggplot2")
library(ggplot2)

raw_data_plot <- ggplot(data = growth_data, aes(x = t, y = N)) +
  geom_point(color = "blue") +   
  xlab("Time (t)") +
  ylab("Population Size (N)") +
  theme_bw()

print(raw_data_plot)

ggsave("raw_data_plot.png", plot = raw_data_plot, width = 8, height = 6, dpi = 300)

raw_data_on_log_plot <- ggplot(data = growth_data, aes(x = t, y = N)) +
  geom_point(color = "blue") +   
  xlab("Time (t)") +
  ylab("Population Size (log scale)") +
  scale_y_continuous(trans='log10') +
  theme_bw()

print(raw_data_on_log_plot)

ggsave("raw_data_on_log_plot.png", plot = raw_data_on_log_plot, width = 8, height = 6, dpi = 300)

