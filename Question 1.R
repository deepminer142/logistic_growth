# This analysis models the population growth observed in `Experiment.csv` using a logistic growth model.

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

#Results
#The plot of observed data and the logistic growth model shows that as time progresses, 
#The population approaches the carrying capacity (K). 
#Growth slows as the population reaches the limits of environmental capacity.


