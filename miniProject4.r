# Mini Project 4
# Name: Kaden Chan
# Section 1. Answers to the specific questions asked
# Section 2: R code. Your code must be annotated.
# No points may be given if a brief look at the code
# does not tell us what it is doing.

# 1
data <- read.csv("VOLTAGE.csv")

# 1a distributions at each location
remotePilot <- data[data$location == 0, ]$voltage
localPilot <- data[data$location == 1, ]$voltage

hist(remotePilot, breaks = 9)
hist(localPilot, breaks = 9)

# 1b calc mean, se, and confidence interval
remoteMean <- mean(remotePilot)
localMean <- mean(localPilot)
cat("difference in sample location means", remoteMean - localMean, "\n")

sampleSDRemote <- 0 #Standard Error (SE) squared
for (r in remotePilot) {
  sampleSDRemote <- sampleSDRemote + (r - remoteMean) * (r - remoteMean)
}
sampleSDRemote <- sampleSDRemote / (length(remotePilot) - 1)

sampleSDLocal <- 0 #Standard Error (SE) squared
for (r in localPilot) {
  sampleSDLocal <- sampleSDLocal + (r - localMean) * (r - localMean)
}
sampleSDLocal <- sampleSDLocal / (length(localPilot) - 1)

diffSE <- sqrt(
  sampleSDRemote / length(remotePilot) + sampleSDLocal / length(localPilot)
)

cat("mean diff SE:", diffSE)
T <- (remoteMean - localMean) / diffSE
cat(T)
cutoff <- qt(1 - .05 / 2, length(remotePilot) + length(localPilot) - 2)
if (T > cutoff) {
  cat("T is high, reject null hypothesis")
} else {
  cat("T is low, fail to reject null hypothesis")
}

# 2 analysis of if experimental = theoretical
data <- read.csv("VAPOR.csv")
theData <- data$theoretical
expData <- data$experimental

theMean <- mean(theData)
expMean <- mean(expData)

# diff in sample mean
cat("difference in sample vapor means:", theMean - expMean)

# sampleSDThe <- 0 #Standard Error (SE) squared
# for (r in theData) {
#   sampleSDThe <- sampleSDThe + (r - theMean) * (r - theMean)
# }
# sampleSDThe <- sampleSDThe / (length(theData) - 1)

# sampleSDExp <- 0 #Standard Error (SE) squared
# for (r in expData) {
#   sampleSDExp <- sampleSDExp + (r - expMean) * (r - expMean)
# }
# sampleSDExp <- sampleSDExp / (length(expData) - 1)

diffData <- theData - expData
diffMean <- mean(diffData)
cat(diffMean) # the same as the difference in means

sampleSDDiff <- 0 # Standard Error (SE) squared
for (r in diffData) {
  sampleSDDiff <- sampleSDDiff + (r - diffMean) * (r - diffMean)
}
sampleSDDiff <- sampleSDDiff / (length(diffData) - 1) # s^2
diffSE <- sqrt(sampleSDDiff / length(diffData)) # s/sqrt(n)
cat("SE of D: ", diffSE)

T <- (diffMean) / diffSE
cat(T)
cutoff <- qt(1 - .05 / 2, length(diffData) - 1)
cat(cutoff)
if (T > cutoff) {
  cat("T is high, reject null hypothesis")
} else {
  cat("T is low, fail to reject null hypothesis")
}
