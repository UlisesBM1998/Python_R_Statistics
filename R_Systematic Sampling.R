
#Working with Systematic Sampling

install.packages("TeachingSampling")
library("TeachingSampling")

#By doing this, we create a list of numbers that goes, by ten by ten, as a maximun of the number 150

sysSample = S.SY(150,10)
sysSample

dim(sysSample)