options(repos = "https://mran.microsoft.com")

if (!require('jsonlite')) install.packages("jsonlite")
if (!require('stringr')) install.packages("stringr")
library('jsonlite')
library('stringr')
args <- commandArgs(trailingOnly = TRUE)
x <- str_replace_all(args, "\\\\r\\\\n" , "")
print(args)
print(x)
print("--------------")
data <- fromJSON(x)
jdata <- as.data.frame(data)
print(jdata)
d2 <- toJSON(jdata)
print(d2)
