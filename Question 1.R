# This analysis models the population growth observed in `Experiment.csv` using a logistic growth model.

### Model Parameters
N0 <- 879                # Initial population size
r <- 0.0100086           # Growth rate
t <- 4980                # Time in minutes
K <- 5.979e+10           # Carrying capacity for logistic growth

# The logistic growth model is defined by the formula:
  
N_logistic <- (N0 * K * exp(r * t)) / (K + (N0 * (exp(r * t) - 1)))

#Results
#The plot of observed data and the logistic growth model shows that as time progresses, 
#The population approaches the carrying capacity (K). 
#Growth slows as the population reaches the limits of environmental capacity.


