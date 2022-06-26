X = c(1,0,2,0,3,1,0,1,2,0)
Y = c(16, 9, 17, 12, 22, 13, 8, 15, 19, 11)
n = length(X)

b1hat = sum((X-mean(X))*(Y-mean(Y)))/sum((X-mean(X))^2)
#same with t(X-mean(X))%*%(Y-mean(Y))/sum((X-mean(X))^2)[1]

b0hat = mean(Y) - b1hat*mean(X)
fit.y = b0hat + b1hat*X
mse = 1/(n-2)*sum((Y - fit.y)^2)
se.b1hat = sqrt(mse/sum((X-mean(X))^2))
se.b0hat = sqrt(mse*(1/n+ mean(X)^2/sum((X - mean(X))^2)))

fit = lm(Y~X)
summary(fit)

#coefficients estimated by model:
coef = fit$coefficients
b0hat = coef[1]
b1hat = coef[2]
MSE = summary(fit)$sigma^2
b0hat
b1hat
se.b0hat = summary(fit)$coefficients[1,"Std. Error"]
se.b1hat = summary(fit)$coefficients[2,"Std. Error"]


# Fitted Regression line
plot(x=X, y=Y, xlab='number of transfer',
     ylab='number of ampules found to be broken')
abline(fit, col='red')
abline(b0hat, b1hat,col="black")
points(mean(X),mean(Y),col="blue",pch=2)

#Test statistics:
alpha = 0.01
t.value = (b1hat-1)/se.b1hat
#critical value approach
critical.value= qt(1-alpha/2, df = n - 2)
abs(t.value) > critical.value
#Reject H0 if get TRUE

#p-value
pvalue=(1-pt(t.value, n-2))*2
pvalue<alpha

#confidence interval
lb.b1hat = b1hat - critical.value*se.b1hat
ub.b1hat = b1hat + critical.value*se.b1hat



