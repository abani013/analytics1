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
#create dataframe
df1=data.frame(rollno,sname,gender,marks,marks2,course,stringsAsFactors = F)
head(df1)
str(df1) #structure of df
head(df1) # top 6 rows
head(df1,n=3) # top 3 rows
tail(df1) # last 6 rows
class(df1) # DF
summary(df1)
df1$gender= factor(df1$gender)
df1$course=factor(df1$course)
str(df1)
summary(df1)
# summary(x)
df1
df1[ marks > 50 & gender=='F',c(1:4)]
df1[ marks>50 | gender=='M',c(1:5)]

#max score from each gender
aggregate(df1$marks,by=list(df1$gender),FUN=max)
aggregate(marks~ gender,data = df1,FUN = max)

(df2= aggregate(cbind(marks,marks2)~gender+course))


df1$gender

# divide the branches and then sort them as per top 3 marks scored in thrie respective department

MBA                    
3 rows (name,marks)
BTech
3 rows (name,marks)
BBA
3 rows (name,marks)