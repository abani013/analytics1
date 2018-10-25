#(gender=sample('M','F'),size=30,replace=T,prob=c(.7,.3)))
#table(gender)
#prop.table(table(gender))


(x=rnorm(100,mean = 60,sd=10))
summary(x) # summary of x
quantile(x) # quantile
quantile(x,seq(0,1,.1)) # decile
quantile(x,seq(0,1,.01)) # percentile
fivenum(x) #five number
boxplot(x) #boxplot
abline(h=fivenum(x))
stem(x)
hist(x)
plot(density(x))
abline(v=60,col('red'))

floor(3.4)
floor(x)
floor(3.7)
ceiling(3.4)
ceiling(x)
ceiling(3.7)
trunc(3.4)
round(3.4)
signif(3.567344,3)

