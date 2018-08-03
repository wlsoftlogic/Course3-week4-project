#
setwd("C:/Training/Data Science/Course 3/Week4/project")

library(data.table)
library(dplyr)

#
# 1. Merges the training and the test sets to create one data set.
#
features <- read.table("UCI HAR Dataset/features.txt", header = FALSE, sep="")

#
# Read train data, test data
# combine the data
#
SubTrainData <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep="")
SubTestData <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep="")
#
# row bind the train and test subject
#
SubRbindData <- rbind(SubTrainData, SubTestData)
dim(SubRbindData)
#
# Assign the column name to the subject
#
colnames(SubRbindData) <- "Subject"

YTrainData <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE, sep="")
YTestData <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE, sep="")
#
# row bind the train and test activity
#
YRbindData <- rbind(YTrainData, YTestData)
#
# Assign column name to the activity
#
colnames(YRbindData) <- "Activity"

XTrainData <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE, sep="")
XTestData <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE, sep="")
#
# row bind the train and test data
#
XRbindData <- rbind(XTrainData, XTestData)
#
# Assign the column names
#
colnames(XRbindData) <- t(features[2])


activity_Labels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE, sep="")

#
# combine three set of data into one.  This is the data to be processed
#
MergedData <- cbind(XRbindData,YRbindData,SubRbindData)
dim(MergedData)
#
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# Extract columns for analysis
#

ColumnsForAnalysis <- grep(".*Mean.*|.*Std.*|Activity|Subject", names(MergedData), ignore.case=TRUE)

RequiredData <- MergedData[,ColumnsForAnalysis]
dim(RequiredData)
#
# 3. Uses descriptive activity names to name the activities in the data set
# Replace activity # with labels
#
RequiredData$Activity[RequiredData$Activity == 1] <- as.character(activityLabels[1,2])
RequiredData$Activity[RequiredData$Activity == 2] <- as.character(activityLabels[2,2])
RequiredData$Activity[RequiredData$Activity == 3] <- as.character(activityLabels[3,2])
RequiredData$Activity[RequiredData$Activity == 4] <- as.character(activityLabels[4,2])
RequiredData$Activity[RequiredData$Activity == 5] <- as.character(activityLabels[5,2])
RequiredData$Activity[RequiredData$Activity == 6] <- as.character(activityLabels[6,2])
#RequiredData$Activity
#
# 4. Appropriately labels the data set with descriptive variable names.
# Label the data set with descripative variable names
#
names(RequiredData)<-gsub("Acc", "Accelerometer", names(RequiredData))
names(RequiredData)<-gsub("Gyro", "Gyroscope", names(RequiredData))
names(RequiredData)<-gsub("Mag", "Magnitude", names(RequiredData))
names(RequiredData)<-gsub("^t", "Time", names(RequiredData))
names(RequiredData)<-gsub("^f", "Freq", names(RequiredData))
names(RequiredData)<-gsub("tBody", "TimeBody", names(RequiredData))
names(RequiredData)<-gsub("-mean\\()", "Mean", names(RequiredData))
names(RequiredData)<-gsub("-std\\()", "StandardDeviation", names(RequiredData))
names(RequiredData)<-gsub("-freq\\()", "Freq", names(RequiredData))
names(RequiredData)<-gsub("-meanFreq\\()", "MeanFreq", names(RequiredData))
names(RequiredData)
#
# 5. From the data set in step 4, creates a second, independent 
#    tidy data set with the average of each variable for each activity and each subject.
# Aggregate to calculate the average of Activity and Subject
#
tidydata <- aggregate(. ~ Subject + Activity, RequiredData, mean)
tidydata <- tidydata[order(tidydata$Subject,tidydata$Activity),]
write.table(tidydata, file = "tidydata.txt", row.names = FALSE, quote=FALSE) 
dim(tidydata)

# [1] 180  88








