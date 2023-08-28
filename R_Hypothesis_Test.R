#Hypothesis: An institute claims that on average, 75% of the people vote for Mike.

# Null Hypothesis = 0.75
# Alternative Hypothesis < 0.75

#DATA

n = 100
p = 0.77

Z = (p-0.75)/sqrt(0.75*(1-0.75)/n)
Z

#The Z value is 0.461. So we need to look on the Z table the P-value.
#In this case is 0.6772. So as this number is higher than 0.05. So the null hypothesis is true

#SECOND TEST

#On Average, six years old children weight 22kg

#Null hypothesis = 22kg
#Alternative hypothesis > 22kg

n = 100
sixYOChildrenMean = 23
standardDeviation = 4

Z = (sixYOChildrenMean-22)/(standardDeviation/sqrt(n))
Z

#The Z value is 0.25. So we need to look on the Z table the P-value.
#In this case is 0.9938. 
1-0.9938
#So as this number is lower than 0.05. So the null hypothesis is false