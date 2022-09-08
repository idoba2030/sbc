#we can then use compute_SBC to fit our simulations with the backend:
results <- compute_SBC(poisson_dataset, poisson_backend, 
                       cache_mode = "results", 
                       cache_location = file.path(cache_dir, "results"))
