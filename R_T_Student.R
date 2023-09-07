#The average salary for a Data Scientist is $20 per hour. Sample = 9 people and Standard Deviation = 10. 
#What is the probability of getting a salary below that $30.

#Getting t:
t = (30-20)/10/sqrt(9)

pt(t, 8) #eight because degree of freedom is n-1

#Probability of being higher than $30

pt(t,8, lower.tail = F)
#Another way to do it
1-pt(t,9)

total = pt(t, 8) + pt(t,8, lower.tail = F)
total