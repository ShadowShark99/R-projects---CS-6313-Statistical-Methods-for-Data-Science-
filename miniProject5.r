# Mini Project 5
# Name: Kaden Chan
# Section 1. Answers to the specific questions asked
# Section 2: R code. Your code must be annotated.
# No points may be given if a brief look at the code
# does not tell us what it is doing.

# 1
data <- read.csv("bodytemp-heartrate.csv")

# 1a seperate male and female body_temperature
maleBodyTemp <- data[data$gender == 1, ]$body_temperature
femaleBodyTemp <- data[data$gender == 2, ]$body_temperature

# print mean
cat(mean(maleBodyTemp) - mean(femaleBodyTemp))
meanMale <- mean(maleBodyTemp)
meanFemale <- mean(femaleBodyTemp)

s2Male <- 0 # Calc Standard Error (SE) squared for male
for (p in maleBodyTemp) {
  s2Male <- s2Male + (p - meanMale) * (p - meanMale)
}
s2Male <- s2Male / (length(maleBodyTemp) - 1)

s2Female <- 0 # Calc Standard Error (SE) squared for female
for (p in femaleBodyTemp) {
  s2Female <- s2Female + (p - meanFemale) * (p - meanFemale)
}
s2Female <- s2Female / (length(femaleBodyTemp) - 1)

# calc SE of 2 variables
diffSE <- sqrt(
  s2Male / length(maleBodyTemp) + s2Female / length(femaleBodyTemp)
)

cat("mean diff SE:", diffSE)
# calc T
T <- (mean(maleBodyTemp) - mean(femaleBodyTemp)) / diffSE
cat(T)

# calc cutoff
cutoff <- qnorm(1 - 0.05 / 2)
cat(cutoff)
if (abs(T) < cutoff) {
  cat("fail to reject")
} else {
  cat("reject")
}

# 1 b
maleHeartRate <- data[data$gender == 1, ]$heart_rate
femaleHeartRate <- data[data$gender == 2, ]$heart_rate

# print mean
cat(mean(maleHeartRate) - mean(femaleHeartRate))
meanMale <- mean(maleHeartRate)
meanFemale <- mean(femaleHeartRate)

s2Male <- 0 # Calc Standard Error (SE) squared for male
for (p in maleHeartRate) {
  s2Male <- s2Male + (p - meanMale) * (p - meanMale)
}
s2Male <- s2Male / (length(maleHeartRate) - 1)

s2Female <- 0 # Calc Standard Error (SE) squared for female
for (p in femaleHeartRate) {
  s2Female <- s2Female + (p - meanFemale) * (p - meanFemale)
}
s2Female <- s2Female / (length(femaleHeartRate) - 1)

# calc SE of 2 variables
diffSE <- sqrt(
  s2Male / length(maleHeartRate) + s2Female / length(femaleHeartRate)
)
cat(diffSE)
#calc T
T <- (mean(maleHeartRate) - mean(femaleHeartRate)) / diffSE
cat(T)

# calc cutoff
cutoff <- qnorm(1 - 0.05 / 2)
cat(cutoff)
if (abs(T) < cutoff) {
  cat("fail to reject")
} else {
  cat("reject")
}

# 1c
bodyTemp <- data[]$body_temperature
heartRate <- data[]$heart_rate

# plot points for bodyTemp and heartRate
plot(bodyTemp, heartRate)
corr <- cor(bodyTemp, heartRate)
cat(corr)
