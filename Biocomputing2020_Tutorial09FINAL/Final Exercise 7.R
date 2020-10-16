#(1) Writing the code that replicates the function of head
#Variable a will be the path to the file you want to use
#For this example, wages.csv will be used
#setwd "/User/theoreed/Desktop/Biocomputing2020_Tutorial09"
#first variable a will be the file, in this case wages.csv
a <- read.csv("wages.csv")
#Variable b will be the number of lines from the top that are returned
b <- 5
#The final step is using variable b to print the lines from whatever file is selected in a
head(a,b)

#(2) Load the data contained in iris.csv
setwd("/Users/theoreed/Desktop/Biocomputing2020_Tutorial09")
iris <- read.csv("iris.csv", header=TRUE)

#Print the last 2 rows in the last 2 columns to the R terminal
iris[c(149,150),c(3,4)]

#Get the number of observations for each species in the data set
dim(iris)

#Get rows with Sepal.Width > 3.5
iris[iris$Sepal.Width > 3.5,]

#Write the data for the species setosa to a csv file
write.csv(iris[iris$Species=="setosa",], "setosa.csv")

#Calculate mean, min, and max of Petal.Length for observations from virginica
virginica <- iris[iris$Species=="virginica",]
petal_length_virginica <- virginica[,3]
mean(petal_length_virginica)
min(petal_length_virginica)
max(petal_length_virginica)
 