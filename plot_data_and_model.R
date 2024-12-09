 
growth_data <- read.csv("Experiment.csv")


install.packages("ggplot2")
library(ggplot2)


logistic_fun <- function(t) {

  N <- (N0 * K * exp(r * t)) / (K - N0 + N0 * exp(r * t))
  return(N)
}

N0 <- 986.51
r <- 0.0100086   
K <- 5.979e+10   

ggplot(data = growth_data, aes(x = t, y = N)) +
  geom_point(color = "blue") +   
  geom_function(fun = logistic_fun, colour = "red") + 
  xlab("Time (t)") +
  ylab("Population Size (N)") +
  theme_bw()

