setwd("/Users/theoreed/Desktop/Biocomputing2020_Tutorial12")
library(ggplot2)
library(cowplot)

#Challenge 1

# Load in file
broadwaydata <- read.csv("broadway.csv", header = TRUE)
graph <- ggplot(data=broadwaydata, aes(x=Show.Type,y=Statistics.Gross))

# Makes the scatter plot
ggplot(data=broadwaydata, aes(x=Show.Type,y=Statistics.Gross))+
  geom_point()+
  stat_smooth(method="lm")+
  xlab("Show Type")+
  ylab("Gross Revenue")+
  theme_classic()

#Challenge 2
datafile <- read.table("data.txt",header=TRUE,sep=",")
ggplot(data=datafile,aes(x=region,y=observations))+
  geom_bar+
  stat_summary(fun.y="mean")
ggplot(data=datafile,aes(x=region,y=observations))+
  geom_bar()+
  stat_summary(fun.y="mean")
ggplot(data=data,aes(x=region,y=observations))+
  geom_jitter()
ggplot(data=datafile,aes(x=region,y=observations))+
  geom_jitter()
ggplot(data=datafile,aes(x=region,y=observations))+
  geom_scatterplot(alpha=0.05)
ggplot(data=datafile,aes(x=region,y=observations))+
  geom_point(alpha=0.05)