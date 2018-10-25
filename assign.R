# Starting to work on R
# assign ----
x1 = 3
x2 <- 3
#print values
x1
x2
# Assign and print
(x3=3)
# environment
# variables in env
ls()
# datasets available for use
data()
?women
mtcars
attach(mtcars)
mgp
# libraries currently loaded
library()
#Elements
#ls()
rm(list = ls())
rm(list = ls(all = TRUE))
#help

?mean
x <- c(0:10, 50)
x
print(x)
xm <- mean(x)
xm
c(xm, mean(x, trim = 0.10))

?mode

# create values
22:100

seq(0,200, by=2)
seq(1,200, by=2)

seq(1,10, length.out = 5)
x=c(0:10)

rep(c(1 ,10), times=10)
rep(c(1 ,10), each=10)
rep(c(1,4), times=c(2,6))

Sys.Date()

source('test1.R')



?wo
?iris

require(graphics)
plot(women, xlab = "Height (in)", ylab = "Weight (lb)",
     main = "women data: American women aged 30-39")men
