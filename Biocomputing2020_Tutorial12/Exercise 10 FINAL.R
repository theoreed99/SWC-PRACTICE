setwd("/Users/theoreed/Desktop/Biocomputing2020_Tutorial12")
library(ggplot2)
library(cowplot)

#Challenge 1

#Load in file
##broadway.csv was found on git hub
broadwaydata <- read.csv("broadway.csv", header = TRUE)

# Make a scatter plot
ggplot(data=broadwaydata, aes(x=Show.Type,y=Statistics.Gross))+
  geom_point()+
  stat_smooth(method="lm")+
  xlab("Show Type")+
  ylab("Gross Revenue")+
  theme_classic()

#Challenge 2

#Load data
datafile <- read.table("data.txt",header=TRUE,sep=",")

#Create a bar graph
ggplot(data=datafile,aes(x=region,y=observations))+
  geom_bar()+
  stat_summary(fun.y="mean")

#Create a scatter plot using geom_jitter
ggplot(data=datafile,aes(x=region,y=observations))+
  geom_jitter()

#Create a scatter plot using the alpha argument
ggplot(data=datafile,aes(x=region,y=observations))+
  geom_point(alpha=0.05)

#bar graph vs scatter plot
#Both are valid forms of data presentation, but both have data that is presented better on one over the other
#A bar graph is a great visual way to display data that can be grouped into categories
#Scatter plots are better for numerical data, especially sets that exist in continuum
