salaries = c(3000,4567,3420,3450,4530,3450,2340,6540,6543,7000)

#CONFIDENT INTERVALS WITH 95%
sample = 10
z = 1.96 #95%
average = mean(salaries)
standardDev = sd(salaries)

marginOfError = z*(standardDev/sqrt(sample))

print(paste("The salaries are between:", round(average - marginOfError, 2), "and", round(average + marginOfError, 2), ".With a confidence of 95%"))


#CONFIDENT INTERVALS WITH 99%
sample = 10
z = 2.58 #99%
average = mean(salaries)
standardDev = sd(salaries)

marginOfError = z*(standardDev/sqrt(sample))

print(paste("The salaries are between:", round(average - marginOfError, 2), "and", round(average + marginOfError, 2), ".With a confidence of 99%"))

#THE SAME PROCESS BUT NOW KNOWING THE VALUE
sample = 1000
z = 1.96
value = 0.7 # 700 people out of 1000 would rather this value

marginOfError = z*sqrt(value*(1-value)/sample)
print(paste("People would choose this value between:", round(value - marginOfError, 2), "and", round(value + marginOfError, 2), ".With a confidence of 95%"))
