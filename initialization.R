library(SBC);

use_cmdstanr <- getOption("SBC.vignettes_cmdstanr", TRUE)

if(use_cmdstanr) {
  library(cmdstanr)
} else {
  library(rstan)
  rstan_options(auto_write = TRUE)
}

options(mc.cores = parallel::detectCores())

# Enabling parallel processing via future
library(future)
plan(multisession)

# The fits are very fast,
# so we force a minimum chunk size to reduce overhead of
# paralellization and decrease computation time.
options(SBC.min_chunk_size = 5)

# Setup caching of results
if(use_cmdstanr) {
  cache_dir <- "./_basic_usage_SBC_cache"
} else {
  cache_dir <- "./_basic_usage_rstan_SBC_cache"
}
if(!dir.exists(cache_dir)) {
  dir.create(cache_dir)
}
