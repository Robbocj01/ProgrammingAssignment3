# FILE NAME
#   run_analysis.R
#
# OVERVIEW
#   Using data collected from the accelerometers from the Samsung Galaxy S 
#   smartphone, work with the data and make a clean data set, outputting the
#   resulting tidy data to a file named "tidy_data.txt".
#
#   See README.md for additional details.
#

library(dplyr)
library(data.table)

# Sets working directory to Coursera Assignment Directory
setwd("C:/Users/rober/Coursera/ProgrammingAssignment3")

## Downloading and Extracting Datasets ##

# Download zip file containing datasets. Check to ensure it has not been already downloaded
zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFilepath <- "UCI HAR Dataset.zip"

if (!file.exists(zipFilepath)) {
    download.file(zipUrl, zipFilepath, mode = "wb")
}

# Unzip zip file containing data if data directory does not already exist
datafilepath <- "UCI HAR Dataset"

if (!file.exists(datafilepath)) {
    unzip(zipFilepath)
}

## Reading Downloaded Datafiles ##

# Read training data
trainingsubjects <- read.table(file.path(datafilepath, "train", "subject_train.txt"),header=FALSE)
trainingset <- read.table(file.path(datafilepath, "train", "X_train.txt"),header=FALSE)
traininglabels <- read.table(file.path(datafilepath, "train", "y_train.txt"),header=FALSE)

# Read test data
testsubjects <- read.table(file.path(datafilepath, "test", "subject_test.txt"),header=FALSE)
testset <- read.table(file.path(datafilepath, "test", "X_test.txt"),header=FALSE)
testlabels <- read.table(file.path(datafilepath, "test", "y_test.txt"),header=FALSE)

# read features
features <- read.table(file.path(datafilepath, "features.txt"), as.is = TRUE)

# read activity labels
activities <- read.table(file.path(datafilepath, "activity_labels.txt"))
colnames(activities) <- c("activityId", "activitylabel")


## Combine the training and the test sets to create one data set ##

# combine datasets
trainingmerged <- cbind(trainingsubjects,trainingset, traininglabels)
testmerged <- cbind(testsubjects,testset, testlabels)
totalactivity <- rbind(trainingmerged, testmerged)

#add column names
colnames(totalactivity) <- c("subject", features[,2], "activity")

## Extract mean and standard deviation columns. 

# Idenify required subject, mean, std and activity columns
requiredcolumns <- grepl("subject|mean|std|activity", colnames(totalactivity))

# Updated dataset to keep these columns
totalactivity <- totalactivity[, requiredcolumns]

## Cleanup dataset and update with descriptive names

# Replace activity values with names
totalactivity$activity <- factor(totalactivity$activity, levels = activities[, 1], labels = activities[, 2])

# Label the data set columns with descriptive variable names
totalactivityCols <- colnames(totalactivity)

# Remove special characters
totalactivityCols <- gsub("[\\(\\)-]", "", totalactivityCols)

#Cleanup column names
totalactivityCols <- gsub("^f", "frequencyDomain", totalactivityCols)
totalactivityCols <- gsub("std", "StandardDeviation", totalactivityCols)
totalactivityCols <- gsub("Acc", "Accelerometer", totalactivityCols)
totalactivityCols <- gsub("^t", "timeDomain", totalactivityCols)
totalactivityCols <- gsub("Gyro", "Gyroscope", totalactivityCols)
totalactivityCols <- gsub("Mag", "Magnitude", totalactivityCols)
totalactivityCols <- gsub("mean", "Mean", totalactivityCols)
totalactivityCols <- gsub("Freq", "Frequency", totalactivityCols)
totalactivityCols <- gsub("BodyBody", "Body", totalactivityCols)

# use new labels as column names
colnames(totalactivity) <- totalactivityCols

##  Create a tidy data set with the average of each variable for each activity and each subject

# Group by subject and activity and summarise using mean
totalactivityMeans <- totalactivity %>% 
    group_by(subject, activity) %>%
    summarise_all(funs(mean))

# output to file "tidy_data.txt"
write.table(totalactivityMeans, "tidy_data.txt", row.names = FALSE, 
            quote = FALSE,sep = ",")

