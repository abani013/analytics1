#Partition using vector

studentname=paste('student',1:10,sep = '-')

#x=1:1000
x=studentname
#length(x)
(index = sample(length(studentname),size=.6 * length(studentname)))
#(index = sample(length(studentname),size=.6 *33))
length(index)
train1=x[index]#index conatins 60% of 10000
test1=x[-index] # it will show the remaining value i.e. -index=1000-index
train1
test1