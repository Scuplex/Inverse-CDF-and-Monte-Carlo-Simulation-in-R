# Different distributions Inverse CDF

#expontential
U <- runif(1e5,0,1)
lambda <-0.1
EXDIST <- -log(1-U) / lambda

#Pareto
alpha <- 20
sigma <- 1
U <- runif(1e5,0,1)
PAREDIST <- sigma / ( (1 - U)^(1 / alpha) )
hist(PAREDIST,1000)

#power-util function
kappa <- 5
delta <- 2
U <- runif(1e5,0,1)
POWERDIST <- kappa * U^(1 / delta)
hist(POWERDIST,1000)

#beta
pi <- 3.14
U <- runif(1e5,0,1)
BETADIST <- sin(2/pi*U)^2
hist(BETADIST,1000)

#cauchy
m <- 1
kappa <- 10
pi <- 3.14
U <- runif(1e5,0,1)
CAUCHYDIST <- m + kappa*tan(pi*(U-1/2))
hist(CAUCHYDIST,1000)

# university

# Monte carlo gia selida 6

M <- 1e6

U <- runif(M,0,1) # apo tin katanomi u kanw to monte carlo  M einai ta steps opou tha kanei 
h_U <- 1/ sqrt( U*(1-U) ) # edw pera ipologizw to H apo tin askisi stin selida 4 
pi_est_I <- mean( h_U ) # edw pera vriskoume ton meso 
print(pi_est_I)
cat('π estimate I = ' , pi_est_I , "\n")


# Monte carlo gia selida 7

X <- runif(M, -1,1) # paragw to x 1 ekatommirio fores stin omoiomorfi -1,1
Y <- runif(M, -1,1) # paragw to y 1 ekatommirio fores stin omoiomorfi -1,1

Z <- X^2 + Y^2 # edw vrisko ton arithmo gia to x^2 + y^2 <= 1

W <- (Z<=1) # edw vlepw an peftei mesa i oxi 

pi_est_II <- 4* mean(W) # edw einai o mesos oros *4 gia na ginei i kanonikopoihsi
cat('π estimate II = ' , pi_est_II , "\n") # emfanizw to apotelesma 


# lognormal distribution

M <- 1e6
X <- rnorm(M, 0.1,0.2)
Y <- exp(X)


mlog <- mean(Y)
vlog <- var(Y)
slog <- skewness(Y)
cat('The variance is = ' , vlog , "\n" , 'The mean is = ', mlog , "\n" , 'The skewness is = ' , slog)


print("hello world")





# antistrofi sinartisi

lambda <-0.1
U <- runif(1e6)
X <- -log(1-U) / lambda
hist(X,100)




 
# 5) Cauchy
m <- 1
kappa <- 2
U <- runif(1e6)
X <- m + kappa * tan(pi * (U - 1/2))
X_truncated <- X[abs(X)<=30]
hist(X_truncated, breaks = 300, xlim =c(m-30,m+30),  main = "Cauchy")

