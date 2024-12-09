# Detailed analysis using a logistic growth model observed in `Experiment.csv`.

library(ggplot2)

growth_data <- read.csv("Experiment.csv")

N0 <- 986.51 
r <- 0.0100086   
K <- 5.979e+10    

logistic_fun <- function(t) {
  # Step 4: Calculate N based on logistic growth parameters
  N <- (N0 * K * exp(r * t)) / (K - N0 + N0 * exp(r * t))
  return(N)
}

ggplot(data = growth_data, aes(x = t, y = N)) +
  geom_point(color = "blue") +                 
  geom_function(fun = logistic_fun, colour = "red") +
  xlab("Time (t)") +
  ylab("Population Size (N)") +
  ggtitle("Observed Data and Logistic Growth Model") +
  theme_bw()

population_growth_plot <- ggplot(data = growth_data, aes(x = t, y = N)) +
geom_point(color = "blue") +             
  geom_function(fun = logistic_fun, colour = "red") +
  scale_y_log10() +                           
  xlab("Time (t)") +
  ylab("Population Size (N) (log scale)") +
  ggtitle("Log-Scaled Population Growth with Logistic Model") +
  theme_bw()

ggsave(filename = "log_scaled_population_growth.png", plot = population_growth_plot, width = 8, height = 6, dpi = 300)
