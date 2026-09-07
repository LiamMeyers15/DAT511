install.packages(c("ggplot2","dplyr","readr","tidyverse"))
library(ggplot2)
library(dplyr)

#Exercise 1
num <- 42
char <- "Hello, R!"
logic <- TRUE

class(num)
class(char)
class(logic)

#Exercise 2
students <- data.frame(
  Name = c("Alice","Bob","Charlie"),
  Age = c(23,25,22),
  Passed = c(TRUE,FALSE,TRUE)
)
print(students)

students$Grade <- c('A','B','A')
print(students)

#Exercise 3
ggplot(students,aes(x = Grade))+geom_bar(fill = 'purple2')+theme_minimal()

hist(students$Age,main ="Age Dist",xlab =" Age",col="hotpink")

#Exercise 4
setwd("/Users/liammeyers/Downloads")
data <-read.csv("data.csv")
head(data)

(mean_age <- mean(data$Age))

(passed_students <- subset(data, Passed == TRUE))
class(data$Passed)
(passed_students <- subset(data, Passed == "True"))

#Exercise 5
plot(data$Age,data$Score,main="Score vs Age",xlab="Age",ylab="Score",col='blue2')

hist(data$Score,main ="Score Dist",xlab =" Score",col="darkgreen")

passed_counts <- table(data$Passed)
passed_labels <- paste(names(passed_counts),"(",round(prop.table(passed_counts)*100,1),"%)",sep = "")   
pie(passed_counts,labels = passed_labels,main = "Passed Dist",col = c("red","green2"))   
     


     
     