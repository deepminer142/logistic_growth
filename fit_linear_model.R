
install.packages("dplyr") 
library(dplyr)

growth_data <- read.csv("Experiment.csv")

#Case 1. K >> N0, t is small

threshold_t1 <- 1500

data_subset1 <- growth_data %>%
  filter(t < threshold_t1) %>%
  mutate(N_log = log(N))

model1 <- lm(N_log ~ t, data = data_subset1)
summary(model1)

#Case 2. N(t) = K

threshold_t2 <- 2000

data_subset2 <- growth_data %>%
  filter(t > threshold_t2)

model2 <- lm(N ~ 1, data = data_subset2)
summary(model2)



