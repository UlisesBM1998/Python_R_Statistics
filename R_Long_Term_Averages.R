#The sample, as much as it is, the mean is more steady.

x1 = sample(1:6,6,replace = T)
x2 = sample(1:6, 10000, replace = T)


mean(x1)
mean(x2)