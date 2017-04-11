# Getting_Cleaning_Data_Course_Project
This is the course project for the Getting and Cleaning Data Coursera course.
The R script, `run_analysis.R`, does the following:


1. Loads the libraries "reshape2", "plyr"
2. Downloads and extracts a zip file with datasets into working directory, **WARNING** You should set working directory to your own **own_WD** "../UCI HAR Dataset", it means you shoud change parametr **own_WD** in the script to your own.
3. Loads both the training and test datasets and merges the training and test sets to create one data set
4. Extracts only the measurements on the mean and standard deviation for each measurement

5. Uses descriptive activity names to name the activities in the data set
6. Appropriately labels the data set with descriptive variable names
7. Creates a tidy dataset that consists of the average (mean) value of each
   variable for each subject and activity pair, using ddply function from "plyr"
8. Writes the result into `tidy_data.txt` file




