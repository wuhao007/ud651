getwd()
setwd('~/GoogleDrive/192.168.1.76/GitHub/ud651/')install.packages('ggplot2', dependencies = T) 
library(ggplot2) 


statesInfo <- read.csv('stateData.csv')

stateSubset <- subset(statesInfo, state.region == 1)
head(stateSubset, 2)
dim(stateSubset)

stateSubsetBracket <- statesInfo[statesInfo$state.region == 1, ]
head(stateSubsetBracket, 2)
dim(stateSubsetBracket)

reddit <- read.csv('reddit.csv')
table(reddit$employment.status)
summary(reddit)

str(reddit)
levels(reddit$age.range)
qplot(data = reddit, x = age.range)
qplot(data = reddit, x = income.range)
reddit$age.range <- ordered(reddit$age.range, levels = c("Under 18", "18-24", "25-34", "35-44", "45-54", "55-64", "65 or Above"))

reddit$age.range <- factor(reddit$age.range, levels = c("Under 18", "18-24", "25-34", "35-44", "45-54", "55-64", "65 or Above"), ordered =T)


