# Inverse CDF for Distributions in R: Sampling and PDF Validation

This repository contains an R script (`InverseCDF_dists.R`) dedicated to exploring and validating the **Inverse Cumulative Distribution Function (Inverse CDF)** method for generating random variates from various probability distributions.

The key feature of this script is the visual validation: it generates a large sample from the target distribution using the Inverse CDF method and then overlays the **theoretical Probability Density Function (PDF)** to confirm the accuracy of the sampling technique.

## 1. Inverse CDF Sampling & PDF Overlay

The script generates $10^7$ random numbers ($$U \sim \mathcal{U}(0, 1)$$) and transforms them using the Inverse CDF formula specific to each distribution. The resulting empirical distribution is plotted as a histogram, with the corresponding theoretical PDF plotted as a red line overlay.

The following distributions are implemented and validated:

| Distribution | Parameters Used | Sampling Method | Validation Focus |
| :--- | :--- | :--- | :--- |
| **Exponential** | $\lambda = 0.1$ | Inverse CDF | Time until an event occurs. |
| **Pareto** | $\alpha = 20, \sigma = 1$ | Inverse CDF | Heavy-tailed distribution (wealth modeling). |
| **Power-Utility** | $\kappa = 5, \delta = 2$ | Inverse CDF | Distribution derived from a utility function. |
| **Beta (Custom)** | $\text{Implied } \alpha=1/2, \beta=1/2$ | $\sin^2$ transformation | Demonstrates non-standard Beta forms. |
| **Cauchy** | $m=1, \kappa=2$ | Inverse CDF | Heavy tails, truncated for visualization (`|X| \le 30$). |
| **Laplace** | $\mu=2, \kappa=3$ | Sum of Exponentials (Alternative) | Uses transformation of two independent Exponential variables. |

### R Implementation Details

* The `par(mfrow = c(2, 3))` command is used to display all six validation plots simultaneously in a single image output.
* For each distribution, the `hist()` function is used with `prob = TRUE` (density plotting) to correctly scale the histogram bars for comparison with the theoretical PDF line (`lines()`).

## 2. How to Run the Script

You need to have **R** installed on your system to run the analysis.

1. **Save the file:** Ensure the file is saved as `InverseCDF_dists.R`.

2. **Run the R script from your terminal:**

   ```bash
   Rscript InverseCDF_dists.R