#SBC provides helper functions SBC_generator_function and generate_datasets which takes a generator function and calls it repeatedly to create a valid SBC_datasets object.

set.seed(54882235)
n_sims <- 100  # Number of SBC iterations to run

poisson_generator <- SBC_generator_function(poisson_generator_single, N = 40)
poisson_dataset <- generate_datasets(
  poisson_generator, 
  n_sims)
