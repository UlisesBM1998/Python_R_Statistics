
#Getting a simple sample from 0 to 1, 150 examples, with replacement with a probability of 50%

simpleSample1 = sample(c(0,1), 150, replace = TRUE, prob = c(0.5,0.5))
simpleSample1
summary(as.factor(simpleSample1))

#Getting a simple sample from 0 to 1, 150 examples, with replacement with a probability of 70%/30%

simpleSample2 = sample(c(0,1), 150, replace = TRUE, prob = c(0.7,0.3))
simpleSample2
summary(as.factor(simpleSample2))

#Getting a simple sample from 0 to 1.000, 150 examples, without replacement

simpleSample3 = sample(c(1:1000), 150, replace = FALSE)
summary((simpleSample3))

#1.Create the sample for the Iris dataset

sampleForIris = sample(c(0,1), 150, replace = TRUE, prob = c(0.7,0.3))
summary(as.factor(sampleForIris))

#1.1 Now we are going to separate the rows that has the value of 1 and let the columns without modification

sampleIris = iris[sampleForIris==1,]
sampleIris

#1.2 We compared both outputs
summary(as.factor(sampleForIris))
dim(sampleIris)
