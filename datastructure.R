# data structures in R
#vectors
x=1:10
x
x1 <- 1:20
x1
(x1=1:30)
(x2=c(1,2,13,4,5))
class(x2)
class(x1)
(x3=letters[1:10])
class(x3)
LETTERS[1:26]
(x3b = c('a',"Abanindra","8"))
class(x3b)

(x4=c(T,FALSE,TRUE,T,F))
class(x4)

LETTERS[1:26]
LETTERS[seq(1,26,2)]

class(x2)
class(x1)

x5=c(3,5)
class(x5)

(x5b = c(1,'a',T,4L))
class(x5b)

#access elements
(x6=seq(0,100,by=4))
length(x6)
-- # accessing the 20th element

x6[20] 

x6[seq(1,length(x6),3)]
x6[c(2,4)]
x6[-1]
x6
x6[-c(1:10,15:20)]
#canniot mix positive and negative numbers
x6[c(2,-4)]
   x6[c(2,4,3.54)]
x6[-c(1,5,20)]

#sort order
x6a=sample(1:20)
sort(x6a)
sort(x6a[-c(1,2)])
sort(x6a,decreasing = T)
rev(x6a)

#sort order seed
set.seed(123)
x6b=sample(1:20)
sort(x6b)
sort(x6b[-c(1,2)])
sort(x6b,decreasing = T)
rev(x6b)

(x=1:10)
x<5
x[x<4 | x>6]
x[x<4 | x>6]=100;x
x
length(x[x==100])

x
x=x[1:4];x

x
x=NULL
x


#matrix
100:111
(m1=matrix(100:111,nrow = 4))
(m2=matrix(100:111,ncol=3,byrow=T))
x=101:124
length(x)
matrix(x,ncol=4)
class(m1)
attributes(m1)
dim(m1)
m1

#access metrix
m1
m1[1,] # 1ts row
m1[,1] #1st column
m1[1,2:3]
m1[c(1,3),  ]
m1[,-c(1,3)]

#names to row and columns
paste("C","D",sep="-")
paste('C',1:100,sep = )
(colnames(m1)=paste('C',1:3,sep = ''))
m1
(rownames(m1)=paste('R',1:4,sep = ''))
m1

#row and col wise operations
m1
colSums(m1)
rowSums(m1)
colMeans(m1)
rowMeans(m1)
attributes(m1)
dim(m1)
t(m1) #transpose
m1
sweep(m1,MARGIN = 1,STATS = c(2,3,4,5),FUN="+") #rowwise
sweep(m1,MARGIN = 2,STATS = c(2,3,4),FUN="*") #colwise

#addmargins
m1
?addmargins
addmargins(m1,margin = 1,sum) #rowwise function
rbind(m1,colSums(m1))
round(addmargins(m1,1,sd),2)

addmargins(m1,2,mean) #rowwise function
addmargins(m1,c(1,2),mean)

addmargins(m1,c(1,2),list(list(mean,sum,max),list(var,sd))) # row and col
addmargins(m1,1,sd) #colswise function
addmargins()

