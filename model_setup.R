
cat(readLines("stan/model1_null.stan"), sep = "\n")

if(use_cmdstanr) {
  cmdstan_model <- cmdstanr::cmdstan_model("stan/model1_null.stan")
} else {
  rstan_model <- rstan::stan_model("stan/poisson.stan")
}
