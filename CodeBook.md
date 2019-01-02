# Code book for Coursera Getting and Cleaning Data course project

## Overview
This is a code book that describes the variables, the data, and any transformations or work that was performed to clean up the data.

The data set that this code book pertains to is located in the tidy_data.txt file of this repository.
See the README.md file of this repository for background information on this data set.

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
          features.txt - Names of column variables in the dataTable
          activity_labels.txt - Links the class labels with their activity name.

## Transformation details
The following transformations of the data was undertaken:

          Merges the training and the test sets to create one data set
          Extracts only the measurements on the mean and standard deviation for each measurement
          Uses descriptive activity names to name the activities in the data set
          Appropriately labels the data set with descriptive activity names
          Creates a second, independent tidy data set with the average of each variable for each activity and each subject

The collection of the source data and the transformations listed above were implemented by the run_analysis.R script (see README.md file for usage instructions).

## Data Variables

Codebook

name	label	data_type	ordered	value_labels	missing	complete	n	n_unique	top_counts	mean	sd	p0	p25	p50	p75	p100	hist
subject	The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.	integer			0	180	180			15.5	8.68	1	8	15.5	23	30	
activity	Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.	factor	FALSE	1. LAYING,2. SITTING,3. STANDING,4. WALKING,5. WALKING_DOWNSTAIRS,6. WALKING_UPSTAIRS	0	180	180	6	LAY: 30, SIT: 30, STA: 30, WAL: 30								
timeDomainBodyAccelerometerMeanX		numeric			0	180	180			0.27	0.012	0.22	0.27	0.28	0.28	0.3	
timeDomainBodyAccelerometerMeanY		numeric			0	180	180			-0.018	0.0058	-0.041	-0.02	-0.017	-0.015	-0.0013	
timeDomainBodyAccelerometerMeanZ		numeric			0	180	180			-0.11	0.0096	-0.15	-0.11	-0.11	-0.1	-0.075	
timeDomainBodyAccelerometerStandardDeviationX		numeric			0	180	180			-0.56	0.45	-1	-0.98	-0.75	-0.2	0.63	
timeDomainBodyAccelerometerStandardDeviationY		numeric			0	180	180			-0.46	0.5	-0.99	-0.94	-0.51	-0.031	0.62	
timeDomainBodyAccelerometerStandardDeviationZ		numeric			0	180	180			-0.58	0.4	-0.99	-0.95	-0.65	-0.23	0.61	
timeDomainGravityAccelerometerMeanX		numeric			0	180	180			0.7	0.49	-0.68	0.84	0.92	0.94	0.97	
timeDomainGravityAccelerometerMeanY		numeric			0	180	180			-0.016	0.35	-0.48	-0.23	-0.13	0.088	0.96	
timeDomainGravityAccelerometerMeanZ		numeric			0	180	180			0.074	0.29	-0.5	-0.12	0.024	0.15	0.96	
timeDomainGravityAccelerometerStandardDeviationX		numeric			0	180	180			-0.96	0.025	-1	-0.98	-0.97	-0.95	-0.83	
timeDomainGravityAccelerometerStandardDeviationY		numeric			0	180	180			-0.95	0.033	-0.99	-0.97	-0.96	-0.94	-0.64	
timeDomainGravityAccelerometerStandardDeviationZ		numeric			0	180	180			-0.94	0.04	-0.99	-0.96	-0.95	-0.92	-0.61	
timeDomainBodyAccelerometerJerkMeanX		numeric			0	180	180			0.079	0.013	0.043	0.074	0.076	0.083	0.13	
timeDomainBodyAccelerometerJerkMeanY		numeric			0	180	180			0.0076	0.014	-0.039	0.00047	0.0095	0.013	0.057	
timeDomainBodyAccelerometerJerkMeanZ		numeric			0	180	180			-0.005	0.013	-0.067	-0.011	-0.0039	0.002	0.038	
timeDomainBodyAccelerometerJerkStandardDeviationX		numeric			0	180	180			-0.59	0.42	-0.99	-0.98	-0.81	-0.22	0.54	
timeDomainBodyAccelerometerJerkStandardDeviationY		numeric			0	180	180			-0.57	0.43	-0.99	-0.97	-0.78	-0.15	0.36	
timeDomainBodyAccelerometerJerkStandardDeviationZ		numeric			0	180	180			-0.74	0.28	-0.99	-0.98	-0.88	-0.51	0.031	
timeDomainBodyGyroscopeMeanX		numeric			0	180	180			-0.032	0.054	-0.21	-0.047	-0.029	-0.017	0.19	
timeDomainBodyGyroscopeMeanY		numeric			0	180	180			-0.074	0.036	-0.2	-0.09	-0.073	-0.061	0.027	
timeDomainBodyGyroscopeMeanZ		numeric			0	180	180			0.087	0.036	-0.072	0.075	0.085	0.1	0.18	
timeDomainBodyGyroscopeStandardDeviationX		numeric			0	180	180			-0.69	0.29	-0.99	-0.97	-0.79	-0.44	0.27	
timeDomainBodyGyroscopeStandardDeviationY		numeric			0	180	180			-0.65	0.35	-0.99	-0.96	-0.8	-0.42	0.48	
timeDomainBodyGyroscopeStandardDeviationZ		numeric			0	180	180			-0.62	0.37	-0.99	-0.96	-0.8	-0.31	0.56	
timeDomainBodyGyroscopeJerkMeanX		numeric			0	180	180			-0.096	0.023	-0.16	-0.1	-0.099	-0.091	-0.022	
timeDomainBodyGyroscopeJerkMeanY		numeric			0	180	180			-0.043	0.0095	-0.077	-0.046	-0.041	-0.038	-0.013	
timeDomainBodyGyroscopeJerkMeanZ		numeric			0	180	180			-0.055	0.012	-0.092	-0.062	-0.053	-0.049	-0.0069	
timeDomainBodyGyroscopeJerkStandardDeviationX		numeric			0	180	180			-0.7	0.3	-1	-0.98	-0.84	-0.46	0.18	
timeDomainBodyGyroscopeJerkStandardDeviationY		numeric			0	180	180			-0.76	0.27	-1	-0.98	-0.89	-0.59	0.3	
timeDomainBodyGyroscopeJerkStandardDeviationZ		numeric			0	180	180			-0.71	0.3	-1	-0.98	-0.86	-0.47	0.19	
timeDomainBodyAccelerometerMagnitudeMean		numeric			0	180	180			-0.5	0.47	-0.99	-0.96	-0.48	-0.092	0.64	
timeDomainBodyAccelerometerMagnitudeStandardDeviation		numeric			0	180	180			-0.54	0.43	-0.99	-0.94	-0.61	-0.21	0.43	
timeDomainGravityAccelerometerMagnitudeMean		numeric			0	180	180			-0.5	0.47	-0.99	-0.96	-0.48	-0.092	0.64	
timeDomainGravityAccelerometerMagnitudeStandardDeviation		numeric			0	180	180			-0.54	0.43	-0.99	-0.94	-0.61	-0.21	0.43	
timeDomainBodyAccelerometerJerkMagnitudeMean		numeric			0	180	180			-0.61	0.4	-0.99	-0.98	-0.82	-0.25	0.43	
timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation		numeric			0	180	180			-0.58	0.42	-0.99	-0.98	-0.8	-0.22	0.45	
timeDomainBodyGyroscopeMagnitudeMean		numeric			0	180	180			-0.57	0.4	-0.98	-0.95	-0.66	-0.22	0.42	
timeDomainBodyGyroscopeMagnitudeStandardDeviation		numeric			0	180	180			-0.63	0.34	-0.98	-0.95	-0.74	-0.36	0.3	
timeDomainBodyGyroscopeJerkMagnitudeMean		numeric			0	180	180			-0.74	0.28	-1	-0.99	-0.86	-0.51	0.088	
timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation		numeric			0	180	180			-0.76	0.27	-1	-0.98	-0.88	-0.58	0.25	
frequencyDomainBodyAccelerometerMeanX		numeric			0	180	180			-0.58	0.43	-1	-0.98	-0.77	-0.22	0.54	
frequencyDomainBodyAccelerometerMeanY		numeric			0	180	180			-0.49	0.48	-0.99	-0.95	-0.59	-0.063	0.52	
frequencyDomainBodyAccelerometerMeanZ		numeric			0	180	180			-0.63	0.36	-0.99	-0.96	-0.72	-0.32	0.28	
frequencyDomainBodyAccelerometerStandardDeviationX		numeric			0	180	180			-0.55	0.46	-1	-0.98	-0.75	-0.2	0.66	
frequencyDomainBodyAccelerometerStandardDeviationY		numeric			0	180	180			-0.48	0.47	-0.99	-0.94	-0.51	-0.079	0.56	
frequencyDomainBodyAccelerometerStandardDeviationZ		numeric			0	180	180			-0.58	0.39	-0.99	-0.95	-0.64	-0.27	0.69	
frequencyDomainBodyAccelerometerMeanFrequencyX		numeric			0	180	180			-0.23	0.19	-0.64	-0.39	-0.26	-0.061	0.16	
frequencyDomainBodyAccelerometerMeanFrequencyY		numeric			0	180	180			0.012	0.14	-0.38	-0.081	0.0079	0.086	0.47	
frequencyDomainBodyAccelerometerMeanFrequencyZ		numeric			0	180	180			0.044	0.19	-0.52	-0.036	0.066	0.18	0.4	
frequencyDomainBodyAccelerometerJerkMeanX		numeric			0	180	180			-0.61	0.4	-0.99	-0.98	-0.81	-0.28	0.47	
frequencyDomainBodyAccelerometerJerkMeanY		numeric			0	180	180			-0.59	0.41	-0.99	-0.97	-0.78	-0.2	0.28	
frequencyDomainBodyAccelerometerJerkMeanZ		numeric			0	180	180			-0.71	0.3	-0.99	-0.98	-0.87	-0.47	0.16	
frequencyDomainBodyAccelerometerJerkStandardDeviationX		numeric			0	180	180			-0.61	0.4	-1	-0.98	-0.83	-0.25	0.48	
frequencyDomainBodyAccelerometerJerkStandardDeviationY		numeric			0	180	180			-0.57	0.43	-0.99	-0.97	-0.79	-0.17	0.35	
frequencyDomainBodyAccelerometerJerkStandardDeviationZ		numeric			0	180	180			-0.76	0.26	-0.99	-0.98	-0.9	-0.54	-0.0062	
frequencyDomainBodyAccelerometerJerkMeanFrequencyX		numeric			0	180	180			-0.069	0.25	-0.58	-0.29	-0.061	0.18	0.33	
frequencyDomainBodyAccelerometerJerkMeanFrequencyY		numeric			0	180	180			-0.23	0.2	-0.6	-0.4	-0.23	-0.047	0.2	
frequencyDomainBodyAccelerometerJerkMeanFrequencyZ		numeric			0	180	180			-0.14	0.21	-0.63	-0.31	-0.092	0.039	0.23	
frequencyDomainBodyGyroscopeMeanX		numeric			0	180	180			-0.64	0.35	-0.99	-0.97	-0.73	-0.34	0.47	
frequencyDomainBodyGyroscopeMeanY		numeric			0	180	180			-0.68	0.33	-0.99	-0.97	-0.81	-0.45	0.33	
frequencyDomainBodyGyroscopeMeanZ		numeric			0	180	180			-0.6	0.38	-0.99	-0.96	-0.79	-0.26	0.49	
frequencyDomainBodyGyroscopeStandardDeviationX		numeric			0	180	180			-0.71	0.27	-0.99	-0.98	-0.81	-0.48	0.2	
frequencyDomainBodyGyroscopeStandardDeviationY		numeric			0	180	180			-0.65	0.36	-0.99	-0.96	-0.8	-0.42	0.65	
frequencyDomainBodyGyroscopeStandardDeviationZ		numeric			0	180	180			-0.66	0.34	-0.99	-0.96	-0.82	-0.39	0.52	
frequencyDomainBodyGyroscopeMeanFrequencyX		numeric			0	180	180			-0.1	0.15	-0.4	-0.21	-0.12	0.0027	0.25	
frequencyDomainBodyGyroscopeMeanFrequencyY		numeric			0	180	180			-0.17	0.18	-0.67	-0.29	-0.16	-0.043	0.27	
frequencyDomainBodyGyroscopeMeanFrequencyZ		numeric			0	180	180			-0.057	0.17	-0.51	-0.15	-0.051	0.042	0.38	
frequencyDomainBodyAccelerometerMagnitudeMean		numeric			0	180	180			-0.54	0.45	-0.99	-0.96	-0.67	-0.16	0.59	
frequencyDomainBodyAccelerometerMagnitudeStandardDeviation		numeric			0	180	180			-0.62	0.35	-0.99	-0.95	-0.65	-0.37	0.18	
frequencyDomainBodyAccelerometerMagnitudeMeanFrequency		numeric			0	180	180			0.076	0.14	-0.31	-0.015	0.081	0.17	0.44	
frequencyDomainBodyAccelerometerJerkMagnitudeMean		numeric			0	180	180			-0.58	0.43	-0.99	-0.98	-0.79	-0.19	0.54	
frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation		numeric			0	180	180			-0.6	0.41	-0.99	-0.98	-0.81	-0.27	0.32	
frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency		numeric			0	180	180			0.16	0.14	-0.13	0.045	0.17	0.28	0.49	
frequencyDomainBodyGyroscopeMagnitudeMean		numeric			0	180	180			-0.67	0.32	-0.99	-0.96	-0.77	-0.41	0.2	
frequencyDomainBodyGyroscopeMagnitudeStandardDeviation		numeric			0	180	180			-0.67	0.29	-0.98	-0.95	-0.77	-0.43	0.24	
frequencyDomainBodyGyroscopeMagnitudeMeanFrequency		numeric			0	180	180			-0.036	0.18	-0.46	-0.17	-0.054	0.082	0.41	
frequencyDomainBodyGyroscopeJerkMagnitudeMean		numeric			0	180	180			-0.76	0.26	-1	-0.98	-0.88	-0.58	0.15	
frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation		numeric			0	180	180			-0.77	0.25	-1	-0.98	-0.89	-0.61	0.29	
frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency		numeric			0	180	180			0.13	0.11	-0.18	0.054	0.11	0.21	0.43	

