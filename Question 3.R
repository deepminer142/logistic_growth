# Step 1: Load necessary library
library(ggplot2)

# Step 2: Define parameters
N0 <- 879                # Initial population size
r <- 0.0100086           # Growth rate
K <- 5.979e+10           # Carrying capacity

# Step 3: Define time values for plotting
time_values <- seq(0, 5000, by = 60)

# Step 4: Calculate exponential growth values over time
exp_growth <- N0 * exp(r * time_values)

# Step 5: Calculate logistic growth values over time
logistic_growth <- (N0 * K * exp(r * time_values)) / (K + (N0 * (exp(r * time_values) - 1)))

# Step 6: Create data frames for each model separately
exp_data <- data.frame(Time = time_values, Population = exp_growth)
logistic_data <- data.frame(Time = time_values, Population = logistic_growth)

# Step 6: Plot the data with separate layers for each model
population_growth_plot <- ggplot() +
  geom_line(data = exp_data, aes(x = Time, y = Population), color = "blue") +
  geom_line(data = logistic_data, aes(x = Time, y = Population), color = "red", linetype = "dashed") +
  scale_y_log10() +  
  labs(title = "Comparison of Exponential and Logistic Growth Models",
       x = "Time (minutes)",
       y = "Population Size (log scale)") +
  theme_minimal() +
  theme(legend.position = "bottom")

# Step 7: Save the specific plot as PNG
ggsave("population_growth_comparison.png", plot = population_growth_plot, width = 8, height = 6, dpi = 300)
