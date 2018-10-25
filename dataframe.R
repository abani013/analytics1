# data frame
(rollno=1:30)
(sname= paste('student',1:30,sep = ''))
(gender=sample(c('M','F'),size = 30,replace = T,prob = c(.7,.3)))
table(gender)
(marks= floor(rnorm(30,mean = 50,sd=10)))
(marks2=ceiling(rnorm(30,mean=50,sd=10)))
# (marks2=ceiling(rnorm(30,40,5)))
(course=sample(c('BBA','MBA','BTECH'),size = 30, replace = T,prob = c(.5,.3,.2)))
table(course)
rollno;sname;gender
marks;marks2;course

