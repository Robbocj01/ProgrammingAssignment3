# Coursera Getting and Cleaning Data course project

Getting and Cleaning Data Programming Assignment

January 2019

This is the course project for the Getting and Cleaning Data course on Coursera. The code for this project was written in R and stored in the file named run_analysis.R. The R scrip runs the following.

1. Sets working directory to ./Coursera/ProgrammingAssignment3 

2. Download the dataset if it does not alread exisit in the working directory
         
          * Check if zip file has already been downloaded to the working directory?
          * Check if the contents of the zip file have been extracted?
          
3. Load activity (test and train), subject and feature info.  Read data from the files into the objects.

         * Read the activity files.
         * Read the subject files.
         * Read the features files.
          
 4. Merge the training and the test sets to create one data set.
 
         * Concatenate the training activity, subject and features by columns
         * Concatenate the test activity, subject and features by columns
         * Concatenate the training and test files by rows to get a dataset for all data
         
5. Extract only the measurements for the mean and standard deviation for each measurement.

         * Subset the column names by the subject, activity and measurements for mean and standard deviation
         * Subset the data frame by the subsetted column names
         
6. Us the descriptive activity names to name the activities in the data set.

         *
         
 
