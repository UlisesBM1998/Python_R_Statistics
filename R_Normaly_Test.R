#DATA WITH NORMALITY DISTRIBUTION

#TEST 1
set.seed(123)

x = rnorm(1000)

qqnorm(x)

qqline(x)

#TEST 2
#Shapiro Test
#We notice the the p-value is over 0.05, so our null is correct.
shapiro.test(x)

#TEST 3
#Hist with a density line
hist(x, main="")
par(new = TRUE)
plot(density(x), ylab = "", xlab = "", axes = F, lwd=2.5)

#DATA WITHOUT NORMALITY DISTRIBUTION
library(semTools)
m = mvrnonnorm(1000, c(1,2), matrix(c(10,2,2,5), 2,2), skewness = c(5,2), kurtosis = c(3,3))
qqnorm(m)
qqline(m)

#P value less than 0.05

shapiro.test(m)

hist(m, main="")
par(new = TRUE)
plot(density(m), ylab = "", xlab = "", axes = F, lwd=2.5)