
# Simple Linear Regression 

calories_consumed<-read.csv('E:\\Sree-Official\\Sree-Personal\\EXCELR\\Data Science\\Assignments\\Simple Linear Regression\\calories_consumed.csv')
View(calories_consumed)

# Visualization
install.packages("lattice")
library(lattice)
dotplot(calories_consumed$Weight.gained..grams., main="Dot Plot of waight gained in grams",col="dodgerblue4")
dotplot(calories_consumed$Calories.Consumed, main="Dot Plot of calories consumed", col="dodgerblue4")
boxplot(calories_consumed$Weight.gained..grams.,col="dodgerblue4")
boxplot(calories_consumed$Calories.Consumed,col="dodgerblue4")

#Regression equation

colnames(calories_consumed)
model<- lm(Weight.gained..grams.~Calories.Consumed,data =calories_consumed)
summary(model)

weight=-625.75+(0.42*5000)
weight


newdata=data.frame(Calories.Consumed=5000)
weight1=predict(model,newdata=newdata)
weight1
