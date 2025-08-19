
setwd("C:\\Users\\it24100294\\Desktop\\IT24100294")

#Q1
branch_data<-read.table("Exercise.txt",header = TRUE, sep =",")

#Q2
fix(branch_data)
str(branch_data)
attach(branch_data)

#Q3

boxplot(branch_data$Sales_Xl, main="Box plot for sales",outline=TRUE,outpch=8,horizontal=TRUE)

#Q4
summary(Advertising_X2)
IQR(Advertising_X2)

#Q5
get.outliers<-function(z){
  q1<-quantile(z)[2]
  q3<-quantile(z)[4]
  iqr<-q3-q1
  
  upperbound<-q3 + 1.5*iqr
  lowerbound<-q1-1.5*iqr
  
  
  print(paste("Upper Bound = ",upperbound))
  print(paste("LOwer Bound = ",lowerbound))
  print(paste("Outliers:",paste(sort(z[z<lowerbound | z>upperbound]),collapse = ",")))
}
  get.outliers(Years_X3)