alpha=0.05
n=25
cv=qt(1-alpha/2,n-2)
delta=2
power=pt(-cv,n-2,ncp=delta)+pt(cv,n-2,lower.tail = FALSE,ncp=delta)
power
