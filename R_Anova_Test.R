#Importing the dataset
df = read.csv("anova.csv", sep = ";")
df

boxplot(df$Horas  ~ df$Remedio)

#The P value is higher than 0.5 so the null hypothesis is true (Between two variables does not affect which to choose)
an = aov(Horas ~ Remedio, data = df)
summary (an)

#The P value is higher than 0.5 so the null hypothesis is true (Between all variables does not affect which to choose)
an = aov(Horas ~ Remedio * Sexo, data = df) 
summary(an)

#The p adj value is higher than 0.5, so the null hypothesis is true
tukey = TukeyHSD(an)
tukey

plot(tukey)