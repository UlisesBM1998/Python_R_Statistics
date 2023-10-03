#Importing the data
install.packages("haven")
library(haven)

dataset = read_dta("eitc.dta")

#Creating dummy variables
dataset$post93 = ifelse(dataset$year > 1993, 1,0)
dataset$mom = ifelse(dataset$children > 0,1,0)
dataset$mom_post93 = dataset$post93 * dataset$mom

#Creating first logistic regression model
model_a = glm(work~post93 + mom + mom_post93,
              family = "binomial",
              data = dataset)

summary(model_a)

#Creating second logistic regression model
model_b = glm(work~post93 + mom + mom_post93+ nonwhite + ed,
              family = "binomial",
              data = dataset)

summary(model_b)

#Visualizing regression results
library("stargazer")

stargazer(model_a, model_b, type = "text", align=  TRUE,
          covariante.labels = c("After 1993", "Is mom", "Is mom after 1993",
                                "Hispanic or white", "Year of education"
                                ), digits = 2, no.space = TRUE)

#Creating placebo variables

dataset$post92 = ifelse(dataset$year > 1992, 1,0)
dataset$mom_post92 =  dataset$post92  * dataset$mom

#Creating placebo dataset
dataset_placebo = subset(dataset, dataset$year < 1994)

#Creating placebo logistic regression model
model_placebo = glm(work~post92 + mom + mom_post92,
              family = "binomial",
              data = dataset_placebo)
summary(model_placebo)
