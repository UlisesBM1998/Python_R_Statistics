install.packages("semTools")
library(semTools)

#Create a list of 0s 500 times
z = rep(0,500)

#On that list, we are going to add non normalized data of 1000 values
for (i in 1:500){
  m = mvrnonnorm(1000, c(1,2), matrix(c(10,2,2,5), 2,2), skewness = c(5,2), kurtosis = c(3,3))
  z[i] = mean(m)

#We are going to grab the first tree non normalized histograms  
  if (i<4){
    hist(m, breaks = 50, main = paste0("Histogram ", i))
  }
}

#Now with the mean of the dataset with non normalized data, se can see that becomes normalized data.
hist(z)

