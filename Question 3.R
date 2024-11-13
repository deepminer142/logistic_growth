# Load necessary library
library(ggplot2)

# Define parameters
N0 <- 879                # Initial population size
r <- 0.0100086           # Growth rate
K <- 5.979e+10           # Carrying capacity

# Define time values for plotting
time_values <- seq(0, 5000, by = 60)

# Calculate exponential growth values over time
exp_growth <- N0 * exp(r * time_values)

# Calculate logistic growth values over time
logistic_growth <- (N0 * K * exp(r * time_values)) / (K + (N0 * (exp(r * time_values) - 1)))

# Create data frames for each model separately
exp_data <- data.frame(Time = time_values, Population = exp_growth)
logistic_data <- data.frame(Time = time_values, Population = logistic_growth)

# Plot the data with separate layers for each model
ggplot() +
  geom_line(data = exp_data, aes(x = Time, y = Population), color = "pink", size = 2) +
  geom_line(data = logistic_data, aes(x = Time, y = Population), color = "blue", size = 2, linetype = "dashed") +
  scale_y_log10() +  # Logarithmic y-axis to handle large population values
  labs(title = "Comparison of Exponential and Logistic Growth Models",
       x = "Time (minutes)",
       y = "Population Size (log scale)") +
  theme_minimal() +
  theme(legend.position = "bottom")
