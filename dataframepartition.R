#Data frame partition
sname=paste('s',1:100,sep = '-')
gender=sample(x=c('male','female'),size=100,prob = c(.6,.4),replace = T)
marks=ceiling(rnorm(1000,60,10))
df=data.frame(sname,gender,marks)
head(df)
table(df$gender)
length(df)
nrow(df)
#now divide into 70:30 ratio
index2=sample(x=nrow(df),size=.7* nrow(df))
index2
length(index2)
df[1:5,] #1 to 5 values will be displayed
df[c(1,5,8),]#1,5,and 8th element will be displayed
train2=df[index2,]
nrow(train2)
test2=df[-index2,]
nrow(test2)

#using caret
library(caret)
table(df$gender);
prop.table(table(df$gender))
(index3=createDataPartition(y=df$gender,p=0.7,list=F))
length(index3);nrow(index3)
(train3=df[index3,])
(test3=df[-index3,])

  (t3a=table(train3$gender))
prop.table(t3a)
  (t3b=table(train3$gender))
prop.table(t3b)
# proportion of AM is almost same in both the samples
nrow(train2)
nrow(test2)
(cb=cbind(table(train2$gender),table(test2$gender)))
prop.table()

  
