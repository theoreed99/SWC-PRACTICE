#Setting the initial parameters
rm=0.05
rn=-0.1
K=1000000
steps=1:450
MO=1

#create an empty matrix and set columns
output1<-matrix(data=NA,nrow=(1+length(steps)),ncol=3)
output1[1,2]=99
output1[1,3]=1

output1[,1]=c(steps,0)

#run the simulation
for (i in 1:length(steps))
{
  output1[(i+1),2]=output1[(i),2]+rn*output1[(i),2]*(1-(output1[(i),2]+output1[(i),3])/K)
  output1[(i+1),3]=output1[(i),3]+rm*output1[(i),3]*(1-(output1[(i),3]+output1[(i),3])/K)
}

#make the matrix results into a data frame for graphing
output1<-data.frame(column1=)

#plot the data
library(ggplot2)
ggplot(data=output1,aes(x=ncol,y=nrow)) + 
  geom_line() +
  theme_classic()