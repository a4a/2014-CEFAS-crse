% Estimating natural mortality
%
% April 2014

# Natural mortality

m = 0.2

# Other models

See Kenchington, 2013, Fish and Fsheries (29 estimators of m). e.g.

Jensen's second estimator: m = 1.5 K

Jensen's third estimator: m = k^0.66 * t^0.57



# a4aM - the m class

Three components:

* shape (formula - age effect) 
* level (formula - year effect)
* trend (formula - time trend)

The 'm' method multiplies components to give m-at-age

# Modelling uncertainty

Uncertainty comes through parameter uncertainty in each model.

Each model can have a variance-covariance matrix.

Combine this with an assumed distribution, e.g.:

* Multivariate normal
* Multivariate with triangular marginals (copulas)
* Something else using copulas

Result is an a4aM object with iterations.

Sample from this to get an FLQuant of m-at-age with iterations.



