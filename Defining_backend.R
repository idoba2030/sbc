if(use_cmdstanr) {
  poisson_backend <- SBC_backend_cmdstan_sample(
    cmdstan_model, iter_warmup = 1000, iter_sampling = 1000, chains = 2)
} else {
  poisson_backend <- SBC_backend_rstan_sample(
    rstan_model, iter = 2000, warmup = 1000, chains = 2)  
}
