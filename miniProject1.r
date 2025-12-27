# Mini Project 1
# Name: Kaden Chan
# Section 1. Answers to the specific questions asked
# Section 2: R code. Your code must be annotated.
# No points may be given if a brief look at the code
# does not tell us what it is doing.

# 1b i. Simulate 1 draw for A and B block lifetimes
A <- rexp(1, rate = 1 / 10)
B <- rexp(1, rate = 1 / 10)

# Lifetime T is max (A,B)
T <- max(A, B)
cat("1b (i): T = ", T)

# 1b ii. Simulate 1000
Tarr <- numeric(1000)
for (i in 1:1000) {
  A <- rexp(1, rate = 1 / 10)
  B <- rexp(1, rate = 1 / 10)
  Tarr[i] <- max(A, B)
}

#1b iii. Histogram
hist(Tarr, breaks = 20, probability = TRUE)

#super impose pdf
curve(
  0.2 * exp(-0.1 * x) - 0.2 * exp(-0.2 * x),
  add = TRUE,
  col = "red",
  lwd = 2,
  n = 1000
)

#1b iv. estimate E(T) with mean of Tarr
cat("\n1b (iv): mean of simulation: ", mean(Tarr))

#1b v. calc proportion of lifetimes above 15
above15 <- 0
for (i in 1:1000) {
  if (Tarr[i] > 15) {
    above15 <- above15 + 1
  }
}

cat(
  "\n1b (v): simulated probability for satelite lasting > 15 yrs: ",
  above15 / 1000
)

#1b vi. E(T) and > 15 estimate 4 more times
cat("\n 1b (vi): Calc 4 more times")
above15.1 <- 0
Tarr1 <- numeric(1000)
for (i in 1:1000) {
  A <- rexp(1, rate = 1 / 10)
  B <- rexp(1, rate = 1 / 10)
  Tarr1[i] <- max(A, B)
  if (Tarr1[i] > 15) {
    above15.1 <- above15.1 + 1
  }
}
cat("\n1. mean of simulation: ", mean(Tarr1))
cat("\nsimulated probability for satelite lasting > 15 yrs: ", above15.1 / 1000)

above15.2 <- 0
Tarr2 <- numeric(1000)
for (i in 1:1000) {
  A <- rexp(1, rate = 1 / 10)
  B <- rexp(1, rate = 1 / 10)
  Tarr2[i] <- max(A, B)
  if (Tarr2[i] > 15) {
    above15.2 <- above15.2 + 1
  }
}
cat("\n2. mean of simulation: ", mean(Tarr2))
cat("\nsimulated probability for satelite lasting > 15 yrs: ", above15.2 / 1000)
above15.3 <- 0
Tarr3 <- numeric(1000)
for (i in 1:1000) {
  A <- rexp(1, rate = 1 / 10)
  B <- rexp(1, rate = 1 / 10)
  Tarr3[i] <- max(A, B)
  if (Tarr3[i] > 15) {
    above15.3 <- above15.3 + 1
  }
}
cat("\n3. mean of simulation: ", mean(Tarr3))
cat("\nsimulated probability for satelite lasting > 15 yrs: ", above15.3 / 1000)

above15.4 <- 0
Tarr4 <- numeric(1000)
for (i in 1:1000) {
  A <- rexp(1, rate = 1 / 10)
  B <- rexp(1, rate = 1 / 10)
  Tarr4[i] <- max(A, B)
  if (Tarr4[i] > 15) {
    above15.4 <- above15.4 + 1
  }
}
cat("\n4. mean of simulation: ", mean(Tarr4))
cat("\nsimulated probability for satelite lasting > 15 yrs: ", above15.4 / 1000)

#1c 100 trials - E(T) and > 15 estimate 5 times
cat("\n\n1c: 100 TRIALS")
above15.1 <- 0
Tarr1 <- numeric(100)
for (i in 1:100) {
  A <- rexp(1, rate = 1 / 10)
  B <- rexp(1, rate = 1 / 10)
  Tarr1[i] <- max(A, B)
  if (Tarr1[i] > 15) {
    above15.1 <- above15.1 + 1
  }
}
cat("\n1. mean of simulation: ", mean(Tarr1))
cat("\nsimulated probability for satelite lasting > 15 yrs: ", above15.1 / 100)

above15.2 <- 0
Tarr2 <- numeric(100)
for (i in 1:100) {
  A <- rexp(1, rate = 1 / 10)
  B <- rexp(1, rate = 1 / 10)
  Tarr2[i] <- max(A, B)
  if (Tarr2[i] > 15) {
    above15.2 <- above15.2 + 1
  }
}
cat("\n2. mean of simulation: ", mean(Tarr2))
cat("\nsimulated probability for satelite lasting > 15 yrs: ", above15.2 / 100)
above15.3 <- 0
Tarr3 <- numeric(100)
for (i in 1:100) {
  A <- rexp(1, rate = 1 / 10)
  B <- rexp(1, rate = 1 / 10)
  Tarr3[i] <- max(A, B)
  if (Tarr3[i] > 15) {
    above15.3 <- above15.3 + 1
  }
}
cat("\n3. mean of simulation: ", mean(Tarr3))
cat("\nsimulated probability for satelite lasting > 15 yrs: ", above15.3 / 100)

above15.4 <- 0
Tarr4 <- numeric(100)
for (i in 1:100) {
  A <- rexp(1, rate = 1 / 10)
  B <- rexp(1, rate = 1 / 10)
  Tarr4[i] <- max(A, B)
  if (Tarr4[i] > 15) {
    above15.4 <- above15.4 + 1
  }
}
cat("\n4. mean of simulation: ", mean(Tarr4))
cat("\nsimulated probability for satelite lasting > 15 yrs: ", above15.4 / 100)

above15.5 <- 0
Tarr5 <- numeric(100)
for (i in 1:100) {
  A <- rexp(1, rate = 1 / 10)
  B <- rexp(1, rate = 1 / 10)
  Tarr5[i] <- max(A, B)
  if (Tarr5[i] > 15) {
    above15.5 <- above15.5 + 1
  }
}
cat("\n5. mean of simulation: ", mean(Tarr5))
cat("\nsimulated probability for satelite lasting > 15 yrs: ", above15.5 / 100)

#1c 10000 trials - E(T) and > 15 estimate 5 times
cat("\n\n1c: 10000 TRIALS")
above15.1 <- 0
Tarr1 <- numeric(10000)
for (i in 1:10000) {
  A <- rexp(1, rate = 1 / 10)
  B <- rexp(1, rate = 1 / 10)
  Tarr1[i] <- max(A, B)
  if (Tarr1[i] > 15) {
    above15.1 <- above15.1 + 1
  }
}
cat("\n1. mean of simulation: ", mean(Tarr1))
cat(
  "\nsimulated probability for satelite lasting > 15 yrs: ",
  above15.1 / 10000
)

above15.2 <- 0
Tarr2 <- numeric(10000)
for (i in 1:10000) {
  A <- rexp(1, rate = 1 / 10)
  B <- rexp(1, rate = 1 / 10)
  Tarr2[i] <- max(A, B)
  if (Tarr2[i] > 15) {
    above15.2 <- above15.2 + 1
  }
}
cat("\n2. mean of simulation: ", mean(Tarr2))
cat(
  "\nsimulated probability for satelite lasting > 15 yrs: ",
  above15.2 / 10000
)
above15.3 <- 0
Tarr3 <- numeric(10000)
for (i in 1:10000) {
  A <- rexp(1, rate = 1 / 10)
  B <- rexp(1, rate = 1 / 10)
  Tarr3[i] <- max(A, B)
  if (Tarr3[i] > 15) {
    above15.3 <- above15.3 + 1
  }
}
cat("\n3. mean of simulation: ", mean(Tarr3))
cat(
  "\nsimulated probability for satelite lasting > 15 yrs: ",
  above15.3 / 10000
)

above15.4 <- 0
Tarr4 <- numeric(10000)
for (i in 1:10000) {
  A <- rexp(1, rate = 1 / 10)
  B <- rexp(1, rate = 1 / 10)
  Tarr4[i] <- max(A, B)
  if (Tarr4[i] > 15) {
    above15.4 <- above15.4 + 1
  }
}
cat("\n4. mean of simulation: ", mean(Tarr4))
cat(
  "\nsimulated probability for satelite lasting > 15 yrs: ",
  above15.4 / 10000
)

above15.5 <- 0
Tarr5 <- numeric(10000)
for (i in 1:10000) {
  A <- rexp(1, rate = 1 / 10)
  B <- rexp(1, rate = 1 / 10)
  Tarr5[i] <- max(A, B)
  if (Tarr5[i] > 15) {
    above15.5 <- above15.5 + 1
  }
}
cat("\n5. mean of simulation: ", mean(Tarr5))
cat(
  "\nsimulated probability for satelite lasting > 15 yrs: ",
  above15.5 / 10000
)

#2 Estimate Pi by guessing for square range and checking circle
insideCircle <- 0
for (i in 1:10000) {
  x <- runif(1)
  y <- runif(1)
  # find distance from (.5, .5)
  d <- sqrt((x - .5) * (x - .5) + (y - .5) * (y - .5))
  if (d < .5) {
    insideCircle <- insideCircle + 1
  }
}
cat("\n2. Probability inside circle (simulated): ", insideCircle / 10000)
cat("\nEstimated pi: ", 4 * insideCircle / 10000)
