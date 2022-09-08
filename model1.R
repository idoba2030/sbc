library(cmdstanr)
N <- 10
x <- rnorm(n = N, mean = 0, sd = 2)
a <- rnorm(n = 1, mean = 5, sd = 3)
b <- rnorm(n = 1, mean = 0, sd = 1)
sigma <- abs(
  rnorm(n = 1, mean = 0, sd = 2))
mu <- a + b * x
y <- rlnorm(n = N, 
            meanlog = mu, sdlog = sigma)
df=matrix(c(y,x,rep(N,10)),ncol=3)
colnames(df)=c("y","x","N")
my_compiledmodel <- cmdstan_model('model1.stan')
fit<- my_compiledmodel$sample(
  data = df, 
  iter_sampling = 100,
  iter_warmup = 50,
  chains           = 4,
  parallel_chains  = 4)  

