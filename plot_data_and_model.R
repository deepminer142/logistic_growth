#Script to plot data and model

growth_data <- read.csv("Experiment.csv")


# Define the logistic growth function
logistic_fun <- function(t) {
  # Calculate N based on logistic growth parameters
  N <- (N0 * K * exp(r * t)) / (K - N0 + N0 * exp(r * t))
  return(N)
}

N0 <- 879 # Initial population size 
r <- 0.0100086   # Growth rate 
K <- 5.979e+10   # Carrying capacity 

# Plotting the data and the logistic model with a logarithmic y-axis

ggplot(data = growth_data, aes(x = t, y = N)) +
  geom_point() +  # Plot observed data points
  geom_function(fun = logistic_fun, colour = "red") + 
  xlab("Time (t)") +
  ylab("Population Size (N)") +
  theme_bw()
