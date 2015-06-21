#import the dplyr library
library("dplyr")
#set the working directory
setwd("E:/Open Course/Coursera Getting and Cleaning Data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset")
#import datasets
x_test = read.table("./test/X_test.txt")
y_test = read.table("./test/Y_test.txt")
subject_test = read.table("./test/subject_test.txt")
x_train = read.table("./train/X_train.txt")
y_train = read.table("./train/Y_train.txt")
subject_train = read.table("./train/subject_train.txt")
activity_labels = read.table("./activity_labels.txt")
features = read.table("./features.txt")
body_acc_x_test = read.table("./test/Inertial Signals/body_acc_x_test.txt")
#Merge the training and test data set to create one data set
data_test = cbind(subject_test,y_test,x_test)
data_train = cbind(subject_train,y_train,x_train)
data = rbind(data_train,data_test)
#Labels the data set with descriptive variable names
names(data) = c("subject","activity",as.character(features$V2))
#Uses descriptive activity names to name the activities in the data set
data$activity = factor(data$activity, levels = activity_labels[[1]],labels = activity_labels[[2]])
#Extracts only the measurements on the mean and standard deviation for each measurement. The extracted data set is named as data_clean
data_mean = data[grep("mean()",names(data),fixed=TRUE)]
data_std = data[grep("std()",names(data),fixed=TRUE)]
data_clean = cbind(data$subject,data$activity,data_mean,data_std)
#Revise the colnames a little bit
names(data_clean)[1:2] = c('subject','activity')
#Creates a second, independent tidy data set with the average of each variable for each activity and each subject. The tidy data set is named as summary_data
summary_data = aggregate(data_clean,by = list(data_clean$subject,data_clean$activity),mean)
#Write the data
write.table(summary_data,file = "tidy_data.txt",row.name=FALSE)
