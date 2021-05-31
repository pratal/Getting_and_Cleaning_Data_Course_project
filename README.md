### Introduction
This repo is created as part of the course project for Coursera course - Getting
and cleaning data. The goal of this project is to prepare tidy data that can be
used for later analysis.

### Data description
The data collected from the accelerometers using Samsung Galaxy S smartphone. A full description is available at the site from where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Link to the data:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
 
### Project Instructions
To create one R script called run_analysis.R that does the following:

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Files

1. tidydata.txt : a tidy data set as described above 
2. CodeBook.md : a code book that describes the variables, the data, and any transformations or work that was performed to clean up the data 
3. README.md : explains how the scripts work and how they are connected
4. run_analysis.R : R script that performs the operations mentioned in the code 
book. The script downloads the dataset in a directory named data within the 
working directory. The new tidy dataset file named tidydata.txt is created in the same data directory.


