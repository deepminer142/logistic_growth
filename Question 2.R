# Step 1: Define parameters
N0 <- 879                # Initial population size
r <- 0.0100086           # Growth rate
t <- 4980                # Time in minutes
K <- 5.979e+10           # Carrying capacity for logistic growth

# Step 2: Exponential growth model calculation
N_exponential <- N0 * exp(r * t)

# Step 3: Logistic growth model calculation
N_logistic <- (N0 * K * exp(r * t)) / (K + (N0 * (exp(r * t) - 1)))

# Step 4: Display the results
cat("Population size under exponential growth:", N_exponential, "\n")
cat("Population size under logistic growth:", N_logistic, "\n")
