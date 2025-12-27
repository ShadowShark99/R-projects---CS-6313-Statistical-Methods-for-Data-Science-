# Mini Project 3
# Name: Kaden Chan
# Section 1. Answers to the specific questions asked
# Section 2: R code. Your code must be annotated.
# No points may be given if a brief look at the code
# does not tell us what it is doing.

# 1c optim maximizing the log-likelihood

x <- c(21.72, 14.65, 50.42, 28.78, 11.23)

neg_loglik <- function(theta) {
  if (theta <= 0) {
    return(Inf)
  } # theta must be positive
  n <- length(x)
  # calculate log likelihood
  ll <- n * log(theta) - (theta + 1) * sum(log(x))
  return(-ll) # negative for minimization
}
result <- optim(
  par = 1,
  fn = neg_loglik,
  method = "Brent",
  lower = 0.0001,
  upper = 10
)
cat("MLE of theta:", result$par, "\n")
