# Emp_data -> Build a prediction model for Churn_out_rate

library(readr)
ED <- read_csv("Assignment files/emp_data.csv")
View(ED)


names(ED)[names(ED) == "Salary_hike"] <- "SH"
names(ED)[names(ED) == "Churn_out_rate"] <- "CR"
View(ED)
summary(ED)
var(ED$SH)
sd(ED$SH)
boxplot(ED$SH)
barplot(ED$SH)
qqnorm(ED$SH)
plot(ED)
cor(ED$CR, ED$SH)

# I) First model without transformation

reg1 <- lm(ED$CR ~ ED$SH)
summary(reg1)

# II) We transform the variables to check the predicted values are better

reg2 <- lm(ED$CR ~ log(ED$SH))
summary(reg2)

# III) We transform the variables to check the predicted values are better

reg3 <- lm(log(ED$CR) ~ log(ED$SH))
summary(reg3)

# The Final Model is Predicted with an accuracy of 88.91 %.




