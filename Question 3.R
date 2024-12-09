library(ggplot2)

N0 <- 986.51                
r <- 0.0100086              
K <- 5.979e+10              

time_values <- seq(0, 5000, by = 60)
exp_growth <- N0 * exp(r * time_values)
logistic_growth <- (N0 * K * exp(r * time_values)) / (K + (N0 * (exp(r * time_values) - 1)))


exp_data <- data.frame(Time = time_values, Population = exp_growth, Model = "Exponential Growth")
logistic_data <- data.frame(Time = time_values, Population = logistic_growth, Model = "Logistic Growth")
combined_data <- rbind(exp_data, logistic_data)

population_growth_plot <- ggplot(data = combined_data, aes(x = Time, y = Population, color = Model)) +
  geom_line() +
  scale_y_log10() +  
  labs(
    title = "Comparison of Exponential and Logistic Growth Models",
    x = "Time (minutes)",
    y = "Population Size (log scale)",
    color = "Model"
  ) +
  theme_minimal() +
  theme(legend.position = "bottom")

ggsave("population_growth_comparison_with_legend.png", plot = population_growth_plot, width = 8, height = 6, dpi = 300)
