#factors

gender=sample(c('M','F'),size = 20,replace = T)
summary(gender)

genderF=factor(gender)
summary(genderF)
genderF #nominal type of data ()

likscale=sample(c('Ex','Good','Satisfactory','Poor'),size = 20,replace = T)
summary(likscale)
likscaleF=factor(likscale)
summary(likscaleF)
class(likscaleF)
likscaleOF=factor(likscale, ordered = T,levels = c('Poor','Satisfactory','Good','Ex'))
summary(likscaleOF)
likscaleOF
barplot(table(likscaleF),col = 1:4)
barplot(table(likscaleOF),col=5:8)
bar=cbind(likscaleF,likscaleOF)
barplot(table(bar),col=9:13)

