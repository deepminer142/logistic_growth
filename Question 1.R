# Detailed analysis using a logistic growth model observed in `Experiment.csv`.

# Step 1: Load necessary libraries
library(ggplot2)

# Step 2: Load the data
growth_data <- read.csv("Experiment.csv")

# Step 3: Define Parameters for the logistic growth model
N0 <- 879 # Initial population size 
r <- 0.0100086   # Growth rate 
K <- 5.979e+10   # Carrying capacity 

# Step 4: Define the logistic growth function
logistic_fun <- function(t) {
  # Step 4: Calculate N based on logistic growth parameters
  N <- (N0 * K * exp(r * t)) / (K - N0 + N0 * exp(r * t))
  return(N)
}

# Step 5: Visualize both the observed data and the logistic growth model on a single plot
ggplot(data = growth_data, aes(x = t, y = N)) +
  geom_point(color = "blue") +                 
  geom_function(fun = logistic_fun, colour = "red") +
  xlab("Time (t)") +
  ylab("Population Size (N)") +
  ggtitle("Observed Data and Logistic Growth Model") +
  theme_bw()

# Step 6: Use a logarithmic y-axis scale to better observe the growth trend, especially at lower population sizes
ggplot(data = growth_data, aes(x = t, y = N)) +
  geom_point(color = "blue") +             
  geom_function(fun = logistic_fun, colour = "red") +
  scale_y_log10() +                           
  xlab("Time (t)") +
  ylab("Population Size (N) (log scale)") +
  ggtitle("Log-Scaled Population Growth with Logistic Model") +
  theme_bw()

