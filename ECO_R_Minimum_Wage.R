#Defining my directory
setwd("C:/Users/ulise/Desktop/Specializations/Econometrics")
#Get the data
dataset = read.csv("njmin3.csv")

summary(dataset)

#Dealing with missing data
dataset$fte = ifelse(is.na(dataset$fte), 
                     ave(dataset$fte, FUN = function(x)mean(x,na.rm =TRUE)) ,
                     dataset$fte)

dataset$demp = ifelse(is.na(dataset$demp), 
                     ave(dataset$demp, FUN = function(x)mean(x,na.rm =TRUE)) ,
                     dataset$demp)

#Creating the first regression model
model_a = lm(fte ~ NJ + POST_APRIL92 + NJ_POST_APRIL92, data = dataset)

summary(model_a)

#Creating the second regression model
model_b = lm(fte ~ NJ + POST_APRIL92 + NJ_POST_APRIL92+ bk+kfc+wendys, data = dataset)

summary(model_b)

#Creating the third regression model
model_c = lm(fte ~ NJ + POST_APRIL92 + NJ_POST_APRIL92+ 
               bk+kfc+wendys+ co_owned + centralj + southj, 
             data = dataset)

summary(model_c)

#Visualizing results
install.packages("stargazer")
library(stargazer)

stargazer(model_a, model_b, model_c, type = "text",
          title = "Impact of minimum wage on employment",
          no.space = TRUE, keep.stat = "n", digits = 2)
