#data analysis using package displayer

df1
library(dplyr)

df1 %>% group_by(gender) %>% summarise(mean(marks))
df1 %>% group_by(gender) %>% summarise(mean(marks2))
df1 %>% group_by(gender) %>% summarise(mean(marks),mean(marks2))
df1 %>% group_by(gender) %>% summarise(max(marks),min(marks2))
df1 %>% group_by(gender,course) %>% summarise(max(marks),min(marks2))
df1 %>% group_by (course,gender) %>% count

