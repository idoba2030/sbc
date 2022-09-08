data {
   int<lower=0> N;
   vector<lower=0>[N] y;
   vector[N] x;
}
parameters {
   real a;
   real b;
   real<lower=0> sigma;
}
model {
   vector[N] mu = a + b * x;
   a ~ normal(5, 3);
   b ~ normal(0, 1);
   sigma ~ normal(0, 2);
   y ~ lognormal(mu, sigma);
}