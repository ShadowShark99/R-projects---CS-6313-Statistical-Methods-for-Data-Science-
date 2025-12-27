########
# 3.21 #
########
#Probability of X >= 10, equivalent to calculating the probability of X > 9
pbinom(q = 10 - 1, size = 20, prob = 0.4, lower.tail = FALSE)
# > pbinom(q=10-1, size=20, prob=0.4, lower.tail = FALSE)
# [1] 0.2446628
# >
# Alternatively, we can compute P(X >= 10) = 1 - P(X < 10) = 1 - P(X <= 9)
# > 1 - pbinom(q = 9, size = 20, prob = 0.4) # lower.tail = TRUE by default
# [1] 0.2446628
# >
########
# 3.37 #
########
#Probability of X > 4
ppois(q = 4, lambda = 7 * 1, lower.tail = FALSE)
# > ppois(q = 4, lambda = 7 * 1, lower.tail = FALSE)
# [1] 0.8270084
# >
# As before, we can compute P(X > 4) = 1 - P(X <= 4)
# > 1 - ppois(q = 4, lambda = 7 * 1)
# [1] 0.8270084
# >
#######
# 4.9 #
#######
# Approach 1: Computing Poisson probabilities
#(a)#
#Probability of X >= 3,equivalent to calculating the probability of X > 2
ppois(q = 3 - 1, lambda = 9 / 5, lower.tail = FALSE)
# > ppois(q = 3 - 1, lambda = 9/5, lower.tail = FALSE)
# [1] 0.2693789
# >
# As before, P(X >= 3) = 1 - P(X < 3) = 1 - P(X <= 2)
# > 1 - ppois(q = 3 - 1, lambda = 9/5)
# [1] 0.2693789
# >
#(b)#
#Probability of T1 < 3,equivalent to calculating the probability of T1 <= 2
ppois(q = 3 - 1, lambda = 16 / 5)
# > ppois(q = 3 - 1, lambda = 16/5)
# [1] 0.3799037
# >
#Probability of T2 < 3,equivalent to calculating the probability of T2 <= 2
ppois(q = 3 - 1, lambda = 12 / 5)
# > ppois(q = 3 - 1, lambda = 12/5)
# [1] 0.5697087
# >
# Ratio of the above two probabilities
ppois(q = 3 - 1, lambda = 16 / 5) / ppois(q = 3 - 1, lambda = 12 / 5)
# > ppois(q = 3 - 1, lambda = 16/5)/ppois(q = 3 - 1, lambda = 12/5)
# [1] 0.6668385
# >
# Approach 2: Directly computing gamma probabilities, i.e., without
# coverting them into Poisson probabilities
#(a)#
#P(T <= 9), where T follows Gamma (3, 1/5) distribution
pgamma(q = 9, shape = 3, rate = 1 / 5)
# > pgamma(q = 9, shape = 3, rate = 1/5)
# [1] 0.2693789
# >
#(b)#
#P(T > 16)/P(T > 12), where T follows Gamma (3, 1/5) distribution
(1 - pgamma(q = 16, shape = 3, rate = 1 / 5)) /
  (1 - pgamma(q = 12, shape = 3, rate = 1 / 5))
# > (1 - pgamma(q = 16, shape = 3, rate = 1/5))/(1 - pgamma(q = 12, shape = 3, rate = 1/5))
# [1] 0.6668385
# >
########
# 4.23 #
########
pnorm(q = 5012, mean = 5000, sd = 100 / sqrt(400))
# > pnorm(q = 5012, mean = 5000, sd = 100/sqrt(400))
# [1] 0.9918025
# >
########
# 4.31 #
########
# (a) #
pnorm(q = 720, mean = 68 * 15, sd = sqrt(11) * sqrt(68))
# > pnorm(q = 720, mean = 68 * 15, sd = sqrt(11) * sqrt(68))
# [1] 2.69067e-28
# >
# (b) #
#95-th percentile of standard normal distribution
qnorm(p = 0.95, mean = 0, sd = 1)
# > qnorm(p = 0.95, mean = 0, sd = 1)
# [1] 1.644854
# >
