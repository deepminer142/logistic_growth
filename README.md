# Logistic Growth
## Question 1
- Logistic growth models are used to describe population growth in environments with limited resources.
- Experimental set up: 900 μl of growth medi and 100 μl suspended bacterium Escherichia coli in the same media.
- Under the logistic growth model, the bacteria will start multiplying at a fast rate as there is lots of resources available.
- This will continue until resources start to become limited. 
- Therefore, growth rate will start to decrease.
- The population size will reach its carrying capacity (K) (the maximum population size an environment can sustain).

### Graphical representation of Data
![My Image Description](raw_data_plot.png) 
- This plot of my raw dat shows exponetial population growth at the start, which slows and then reaches the carrying capacity. 
![My Image Description](raw_data_on_log_plot.png)
- I have now log-transformed the y-axis to show an increasing linear relationship at the start, which then becomes constant.

### Observation
1. When K is much greater than N^0^ and t is small, the population grows exponentially.
2. When t tends towards infinity N(t) → K

### Estimates 
- Using my observations I can estimate the values of N0, r and k using a linear approximation.
- The initial population size **at time t = 0 was N0 = 879** - Value taken from excel data (named Experiment.csv)
- The intrinsic rate of growth (r) (growth rate in an ideal environment (i.e., no resource limitation) **r = 0.0100086** - Calculated fitting a linear model to log-transformed N to approximate early growth rate approximation when K >> N0 and t (1500)
- The carrying capacity **(K) = 5.979e+10** - Calculated when t is large (2000) and assuming the population size remains constant using a linear model. 

### Interpretations
- The population reaches a point near the carrying capacity, and growth nearly stops as the population stabilizes.
- In the provided data, this is evident around t =2000 when N(t) approaches K closely.
- This is a model of density-dependent regulation, where growth rate decreases as population size increases, reflecting real-world limits on resources.

## Question 2
### Set Parameters 
N0 = 879
r =  0.0100086
When t = 4980

## Question 3
