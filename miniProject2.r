# Mini Project 2
# Name: Kaden Chan
# Section 1. Answers to the specific questions asked
# Section 2: R code. Your code must be annotated.
# No points may be given if a brief look at the code
# does not tell us what it is doing.

# 1
data <- read.csv("roadrace.csv")
# print(data)

# 1a bargraph - plot # of Mainea and Away racers
maineFreq <- table(data$Maine)
barplot(maineFreq, main = "Maine and Away")

# 1b split into Maine and Away
maineRacers <- data[data$Maine == "Maine", ]
awayRacers <- data[data$Maine == "Away", ]

# get minutes and set limit to Away's x range
minuteMaine <- maineRacers$Time..minutes.
hist(minuteMaine, xlim = c(20, 140))

print(" Maine Time Stats: ")
cat(
  "Mean:",
  mean(minuteMaine),
  "\n",
  "Standard Deviation:",
  sd(minuteMaine),
  "\n",
  "Range:",
  diff(range(minuteMaine)),
  "\n",
  "Median:",
  median(minuteMaine),
  "\n",
  "IQR:",
  IQR(minuteMaine),
  "\n"
)

# get minutes, we're using Away as default scale
minuteAway <- awayRacers$Time..minutes.
hist(minuteAway)

print(" Away Time Stats: ")
cat(
  "Mean:",
  mean(minuteAway),
  "\n",
  "Standard Deviation:",
  sd(minuteAway),
  "\n",
  "Range:",
  diff(range(minuteAway)),
  "\n",
  "Median:",
  median(minuteAway),
  "\n",
  "IQR:",
  IQR(minuteAway),
  "\n"
)

# 1c boxplots - set equal scales
y_limits <- range(c(minuteMaine, minuteAway))
boxplot(minuteMaine, main = "Maine minutes", ylim = y_limits)
boxplot(minuteAway, main = "Away minutes", ylim = y_limits)

# 1d age boxplots
maleRacers <- data[data$Sex == "M", ]
femaleRacers <- data[data$Sex == "F", ]

# isolate age attribute for each gender
ageMales <- maleRacers$Age
ageFemales <- femaleRacers$Age

# plot on the same scale
y_limits <- range(c(ageMales, ageFemales))
boxplot(ageMales, main = "Male Age", ylim = y_limits)
boxplot(ageFemales, main = "Female Age", ylim = y_limits)

print(" Male Age Stats: ")
cat(
  "Mean:",
  mean(ageMales),
  "\n",
  "Standard Deviation:",
  sd(ageMales),
  "\n",
  "Range:",
  diff(range(ageMales)),
  "\n",
  "Median:",
  median(ageMales),
  "\n",
  "IQR:",
  IQR(ageMales),
  "\n"
)

print(" Female Age Stats: ")
cat(
  "Mean:",
  mean(ageFemales),
  "\n",
  "Standard Deviation:",
  sd(ageFemales),
  "\n",
  "Range:",
  diff(range(ageFemales)),
  "\n",
  "Median:",
  median(ageFemales),
  "\n",
  "IQR:",
  IQR(ageFemales),
  "\n"
)

# 2 read and plot Fatal Motorcycle Accidents
data <- read.csv("motorcycle.csv")
# print(data)

boxplot(data$Fatal.Motorcycle.Accidents)
