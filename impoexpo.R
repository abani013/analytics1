#import and export files
dir('./Data2')
list.files('./Data')
list.files('./Data2')
data = scan("./Data2/hhe.txt",what="character")
data = scan("./Data2/hhe.txt",what="integer")
head(data)
class(data)
file.exists("./Data/mtcars.csv")

#csv read from CSv
head(iris)
?iris
write.csv(iris, "./Data/iris.csv", row.names = F)
read1 =read.csv(file = "./Data/iris.csv", header = TRUE,sep = ",")
str(read1)
class(read1)
head(read1)


#csv from web
read_web1= read.csv('http://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat')
head(read_web1)

#google sheet importing
library(gsheet)
url_gsheet = "https://docs.google.com/spreadsheets/d/1QogGSuEab5SZyZIw1Q8h-0yrBNs1Z_eEBJG7oRESW5k/edit#gid=107865534"
df_gsheet = as.data.frame(gsheet2tbl(url_gsheet))
head(df_gsheet)

#excel
library(xlsx)
Sys.setenv(JAVA_HOME='C:\Program Files (x86)\Java\jre1.8.0_191')
df_excel1 = read.xlsx("./Data2/myexcel.xlsx", 1)
df_excel1
# read in the worksheet named mysheet
df_excel2a = read.xlsx("./Data2/myexcel.xlsx", sheetName = "bowlers")
df_excel2a
df_excel2b = read.xlsx("./Data2/myexcel.xlsx", sheetIndex = 2)
df_excel2b
