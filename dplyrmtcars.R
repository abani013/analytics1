#analysis of dataset mtcars using dplyr
#learn to use dplyr package for mtcars 

library(dplyr)
?mtcars
mtcars
# structure of dataset
str(mtcars)
head(mtcars)
tail(mtcars)
row(mtcars)
col(mtcars)
#give the dimensions in row and col format
dim(mtcars)
#columns
names(mtcars)
colnames(mtcars)
#car name
rownames(mtcars)
#summary of dataset
summary(mtcars)

#summary activities on mtcars
#table(mtcars$am) #check auto and manual

#doing a pie plot
t1= table(mtcars$am)
pie(t1)

pie(t1,labels =c('auto','manual'))

t2= table(mtcars$gear)
pie(t2,col = 1:3)
barplot(t2,col = 1:3)
barplot (t2,col = 1:3,horiz = T)
barplot(t2,col = c('green','blue','yellow'),xlab = 'gear',
        ylab = 'no of cars',ylim = c(0,20))
barplot(t2,col = 1:3,horiz = F)

table(mtcars$gear)


t3=table(mtcars$mpg)
pie(t3)
barplot(t3,col = 1:20)

#using dplyr %>% is chaing function
table(mtcars$mpg)
mtcars %>% select(mpg,gear) %>% slice(c(1:5,10))

#select for cloumns ,slice for the rows
mtcars %>% arrange(mpg)#ascending order opf mileage
mtcars %>% arrange(am,gear,desc(mpg)) %>% select(am,gear,mpg) 
mtcars %>% mutate(rn = rownames(mtcars)) %>% select(rn,mpg,gear)
#random cars selected
mtcars %>% sample_n(3)
mtcars %>% sample_frac(.1)
mtcars %>% select(sample(x=c(1:11),size = 4)) %>% head

sample(x=1:11,size = 5)#samplw works on randomization
#add mileage by 10 percent
mtcars %>% mutate(newmpg=mpg*1.1) %>%select (mpg,newmpg)
mtcars %>% mutate(newmpg=mpg*5.1) %>%select (mpg,newmpg)
mtcars %>% mutate(newmpg=mpg*5.1) %>% head
mtcars %>% group_by()

#type of Tx,mean(mpg)
mtcars %>% group_by(am) %>% summarise(mean(mpg))
mtcars %>% group_by(gear) %>% summarise(mean(mpg),MaxHP= max(hp),MinWT=min(wt))
mtcars %>% group_by(gear) %>% summarise(mean(mpg),max(hp),min(wt))

