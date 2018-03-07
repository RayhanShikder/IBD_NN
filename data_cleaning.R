rm(list=ls())
all_data <- read.csv("total_data.csv", header=TRUE, row.names = 1)

is.data.frame(all_data)
#mean(c(0,1,0,NA))

#remove all zeros
N0<-apply(all_data,2,function(X){sum(X==0)})
sum(N0==184)
Cleaned_Data<-all_data[,N0!=nrow(all_data)]  # what this is doing??? anyone can answer?

#remove col with all equal values
N0<-apply(Cleaned_Data,2,function(X){sum(X==X[1])}) #check if all the values are same in a column
sum(N0==184)
Cleaned_Data<-Cleaned_Data[,N0!=nrow(all_data)]  # what this is doing??? anyone can answer?

dim(Cleaned_Data)

colnames(Cleaned_Data)[5451:5451]

colnames(Cleaned_Data)[25700:25703]

length(colnames(Cleaned_Data)[8:5451])

length(colnames(Cleaned_Data)[5452:25703])

#save the cleaned data
write.csv(Cleaned_Data,"cleaned_data.csv",row.names=TRUE)


