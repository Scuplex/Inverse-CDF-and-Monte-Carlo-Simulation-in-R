# Plot setup and variable
par(mfrow = c(2, 3))

# 1) Exponential Inverse CDF
lambda <- 0.1
U <- runif(1e7)
EXDIST <- -log(1-U) / lambda 

x_grid <- seq(0, max(EXDIST), length.out = 1000)
Expo_pdf <- lambda * exp(-lambda * x_grid) 

hist(EXDIST, breaks = 65, prob = TRUE, main = "Exponential", xlab = "")
lines(x_grid, Expo_pdf, col = "red", lwd = 2)

# 2) Pareto Inverse CDF,
alpha <- 20
sigma <- 1
U <- runif(1e7)
PAREDIST <- sigma / ((1 - U)^(1 / alpha))

x_grid <- seq(sigma, max(PAREDIST), length.out = 1000)
Pareto_pdf <- (alpha * sigma^alpha) / (x_grid^(alpha + 1))

hist(PAREDIST, breaks = 70, prob = TRUE, main = "Pareto", xlab = "")
lines(x_grid, Pareto_pdf, col = "red", lwd = 2)

# 3) PowerUtility Inverse CDF
kappa <- 5
delta <- 2
U <- runif(1e7)
POWERDIST <- kappa * U^(1 / delta)

x_grid <- seq(0, kappa, length.out = 1000)
Power_pdf <- (delta / (kappa^delta)) * x_grid^(delta - 1) 

hist(POWERDIST, breaks = 65, prob = TRUE, main = "PowerUtility", xlab="")
lines(x_grid, Power_pdf, col = "red", lwd = 2)



# 4) Beta Inverse CDF
U <- runif(1e7)
BETADIST <- sin(pi/2 * U)^2
G <- 1e4

x_grid <- seq(0, 1, length.out = G)
Beta_0_5_0_5_pdf <- (1/pi) / sqrt( x_grid * ( 1 - x_grid ) )

hist(BETADIST, breaks = 68, prob = TRUE, main = "Beta(1/2, 1/2)", xlab="")
lines(x_grid, Beta_0_5_0_5_pdf, col = "red", lwd = 2)


# 5) Cauchy Inverse CDF
m <- 1
kappa <- 2
L <- 30
G <- 1e4
U <- runif(1e7)
X <- m + kappa * tan(pi * (U - 1/2))
X_truncated <- X[abs(X)<=30]

x_grid <- seq(m - L, m + L, length.out = G)
Cauchy_pdf <- (1 / (pi * kappa)) * 1 / (1 + ((x_grid - m) / kappa)^2)

hist(X_truncated, breaks = 72, xlim = c(m - 30, m + 30),
     main = "Cauchy", prob = TRUE, xlab="")
lines(x_grid, Cauchy_pdf, col = "red", lwd = 2)

# 6) Laplace Inverse CDF
lamda <- 1
m <-2
kappa <- 3
Y1 <- rexp(1e7, lamda)
Y2 <- rexp(1e7, lamda)
X <- Y1 - Y2
LAPLACEDIST <- m + kappa * X

x_grid <- seq(min(LAPLACEDIST), max(LAPLACEDIST), length.out = 1000)
Laplace_pdf <- (1 / (2 * kappa)) * exp(-abs(x_grid - m) / kappa)

hist(LAPLACEDIST, breaks = 60, probability = TRUE, main = "Laplace(μ=2, κ=3)", xlab="")
lines(x_grid, Laplace_pdf, col = "red", lwd = 2)