
#Working with Sttratified Sampling
install.packages("sampling")
library("sampling")

#We create a variable with the number of examples that we want for each example.

portion = 25

#From the iris dataset, we separate by Species, and extract 25 examples for the three different category
# the method is srxwor. so it is a simple sample without replacement

sampleIris = strata(data = iris, stratanames = c("Species"), size=c(rep(portion,3)), method = "srswor")
summary(sampleIris)

#Same example but with different recollection metrics

sampleInfer = strata(data=infert, stratanames = c("education"), size= c(5,48,47), method="srswor")
summary(sampleInfer)