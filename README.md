# Statistical Distributions and Monte Carlo Simulation in R

This repository contains R scripts for exploring various methods of random number generation, primarily focusing on the **Inverse Cumulative Distribution Function (Inverse CDF)** technique for several common and specialized probability distributions.

Additionally, it includes two distinct implementations of the **Monte Carlo method** to estimate the mathematical constant $\pi$ (pi).

## 1. Inverse CDF Method for Random Number Generation

The script implements the Inverse CDF method to generate random variates from a standard uniform distribution $U \sim \mathcal{U}(0, 1)$.

The following distributions are modeled using their respective Inverse CDF formulas:

| Distribution | Purpose | 
 | ----- | ----- | 
| **Exponential** | Used for modeling the time until an event occurs. | 
| **Pareto** | Often used in economics to model wealth distribution, characterized by heavy tails. | 
| **Power-Utility Function** | A custom distribution derived from a power-utility function. | 
| **Beta (Custom)** | A non-standard $\sin^2$ transformation of the uniform distribution for experimentation. | 
| **Cauchy** | A heavy-tailed distribution known for having an undefined mean and variance. | 

### R Implementation Details

Each section of the script generates a large number of uniform random numbers (`runif(1e5)` or `runif(1e6)`) and transforms them using the inverse CDF formula to produce the target distribution. The resulting distributions are then visualized using the `hist()` function.

## 2. Monte Carlo Estimation of $\pi$

The repository includes two classic Monte Carlo methods for estimating the value of $\pi$.

### Monte Carlo I (Integration Method)

This method estimates $\pi$ by calculating the expected value of a function related to the integral:

$$
\pi = \int_{0}^{1} \frac{1}{\sqrt{x(1-x)}} \, dx
$$

The script uses the formula $h(U) = \frac{1}{\sqrt{U(1-U)}}$ and calculates the average $\text{mean}(h(U))$ over $M = 10^6$ steps.

### Monte Carlo II (Geometric Method / Dartboard)

This method estimates $\pi$ geometrically by generating $M$ random points $(X, Y)$ within a $2 \times 2$ square and checking how many fall within the inscribed unit circle ($X^2 + Y^2 \le 1$).

The estimation is calculated as:

$$
\pi \approx 4 \times \frac{\text{Number of points inside circle}}{\text{Total number of points (M)}}
$$

## 3. Lognormal Distribution Analysis

The script also contains an analysis of the **Lognormal Distribution** by exponentiating standard normal variates. It calculates and prints the empirical mean, variance, and skewness of the resulting lognormal sample.

## 🚀 How to Run the Script

You need to have **R** installed on your system to run the analysis.

1. **Clone the repository:**

   ```bash
   git clone [https://github.com/YourUsername/YourRepoName.git](https://github.com/YourUsername/YourRepoName.git)
   cd YourRepoName