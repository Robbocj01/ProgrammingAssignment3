# Code book for Coursera Getting and Cleaning Data course project

## Overview
This is a code book that describes the variables, the data, and any transformations or work that was performed to clean up the data.

The data set that this code book pertains to is located in the tidy_data.txt file of this repository. See the README.md file of this repository for background information on this data set.

## Dataset
One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Dataset Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the data captures linear acceleration and angular velocity at a constant rate of 50Hz. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

## Data Files
Files in folder ‘UCI HAR Dataset’ that will be used are:

          SUBJECT FILES
                    test/subject_test.txt
                    train/subject_train.txt
          ACTIVITY FILES
                    test/X_test.txt
                    train/X_train.txt
          DATA FILES
                    test/y_test.txt
                    train/y_train.txt
                    features.txt - Names of column variables
                    activity_labels.txt - Links the class labels with their activity name.

## Transformation details
The following transformations of the data was undertaken:

          Merges the training and the test sets to create one data set
          Extracts only the measurements on the mean and standard deviation for each measurement
          Uses descriptive activity names to name the activities in the data set
          Appropriately labels the data set with descriptive activity names
          Creates a second, independent tidy data set with the average of each variable for each activity and each subject

The collection of the source data and the transformations listed above were implemented by the run_analysis.R script (see README.md file for usage instructions).

