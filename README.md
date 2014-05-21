# README

This is a course project from Getting and Cleaning Data, Johns Hopkins University in Cousera.  
The purpose of project is to prepare a tidy dataset that can be used for later analysis.  
The project consists of three files:  

- README.md         : Explains the outline of this project.  
- CodeBook.md       : Shows information about the variables used in the target dataset.  
- run_analysis.R    : Main script which shows how to create the target dataset.  

## The Original Data
The original data used in the script was obtained at:  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

## Summary of Script
The process in run_analysis.R is described as follows.

0. Preparation (Set Environment, Load Data)
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.