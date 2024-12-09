
N0 <- 986.51               
r <- 0.0100086           
t <- 4980                
K <- 5.979e+10           

N_exponential <- N0 * exp(r * t)

N_logistic <- (N0 * K * exp(r * t)) / (K + (N0 * (exp(r * t) - 1)))

cat("Population size under exponential growth:", N_exponential, "\n")
cat("Population size under logistic growth:", N_logistic, "\n")
