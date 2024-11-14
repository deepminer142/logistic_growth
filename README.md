# Logistic Growth
## Question 1
- Logistic growth models are used to describe population growth in environments with limited resources.
- Experimental set up: 900 μl of growth medi and 100 μl suspended bacterium Escherichia coli in the same media.
- Under the logistic growth model, the bacteria will start multiplying at a fast rate as there is lots of resources available.
- This will continue until resources start to become limited. 
- Therefore, growth rate will start to decrease.
- The population size will reach its carrying capacity (the maximum population size an environment can sustain).

### Graphical representation of the logistic model
- !(raw_data_plot.png) 
- Plot 1: At the beginning, the population seems to grows exponentially, but then slows down and reaches a constant size (equilibrium).
- Plot 2: If we make a semilog-plot (x-axis linear, y-axis log-transformed), we observe an increasing linear relationship at the early time points, while at later time points, the population size remains constant.

- Observation
- Observation #1. When K is much greater than N0 and t is small, the population grows exponentially
- Observation #2. In the limit t→∞, N(t) →K

- Calculations 
- Use these observations to estimate the values of N0, r and k using a linear approximation.
	• The initial population size at time t = 0 was N0 = 879  (Value taken from excel data (named Experiment.csv)).
	• The intrinsic rate of growth represents how quickly the population grows in an ideal environment (with abundant resources) - Calculated fitting a linear model to log-transformed N to approximate early growth rate approximation when K >> N0 and t (1500),  r = 0.0100086
	• The carrying capacity (K) - Calculated when t is large (2000) and assuming the population size remains constant using a linear model, K = 5.979e+10
	
- Interpretations
	a. Early Growth Phase: When t is small, the population grows almost exponentially because resources are abundant relative to the population size.
	b. Growth Deceleration: As t increases, the population size approaches the carrying capacity K, and growth begins to slow. This deceleration aligns with resource depletion, as predicted by the logistic model.
	c. Carrying Capacity Plateau: Finally, the population reaches a point near the carrying capacity, and growth nearly stops as the population stabilizes. In the provided data, this is evident around t =2000 when N(t) approaches K closely.
This is a model of density-dependent regulation, where growth rate decreases as population size increases, reflecting real-world limits on resources.![image](https://github.com/user-attachments/assets/c018aad7-a762-42b6-987e-b3d274a5cbfe)

## Question 2
## Question 3
