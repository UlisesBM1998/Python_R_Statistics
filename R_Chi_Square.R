df = matrix(c(19,6,43,32), nrow=2, byrow=T)
rownames(df) = c("Male", "Female")
colnames(df) = c("Present", "Ausent")
df

chisq.test(df) #On this test the p value is 0.15. So we can confirm that there is not a significant different between men and women

df = matrix(c(22,3,43,32), nrow=2, byrow=T)
rownames(df) = c("Male", "Female")
colnames(df) = c("Present", "Ausent")
df
chisq.test(df) #On this test the p value is 0.01. So we can confirm that there is a significant different between men and women
