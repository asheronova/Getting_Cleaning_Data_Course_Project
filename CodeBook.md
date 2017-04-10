The data used and available in the Getting_Cleaning_Data_Course_Project repository were gathered from 30 volunteers (ages 19-48) who performed a variety of activities while a smartphone was attached at the waist. The data were recorded by the phone (a Samsung Galaxy SII) during six different activities: walking, walking upstairs, walking downstairs, sitting, standing, and laying. The phone's accelerometer and gyroscope recorded a variety of 3-dimensional measurements of velocity, acceleration, and angle.

The raw time-series data from the smartphone was pre-processed by applying noise filters to smooth the data. A vector of features were recorded from the time and frequency domains of the data, giving a 561-feature vector of time and frequency variables. Data is also included to identify each individual participant and what activity was performed. The entire set of data gives 10299 observations of 561 variables. The goal of run_analysis.R is to create a function to clean and tidy this data and give a summary of certain variables for each activity each subject performed.

The data files are listed here with a brief explanation of what they are. In the primary working folder directory, the following items are necessary, with the test and train subdirectories:

activity_labels.txt: This file gives the dictionary code for which the activities (walking, standing, sitting, etc.) performed by the subjects are labeled in the data files.


features.txt: Included in this file are the column names for the X_*.txt files with the real numerical information gathered by the smartphone device


features_info.txt: This file gives an explanation of the column naming convention given in the column names of features.txt


run_analysis.R: The R function run_analysis() to analyze the data is defined in this .R file


test/: This is a folder containing the "test" data (from 30% of the participants)


train/: This is a folder containing the "train" data (from the other 70% of the participants)


The folders test/ and train/ should contain the following items:



X_test.txt: Contains the rows of observations for a 561-feature vector with time and frequency domain variables, where the features are explained in features.txt and features_info.txt

subject_test.txt: Gives a participant subject identifier number (1 to 30) for each row of observation form X_test.txt

y_test.txt: Gives a participant activity ID number (1 to 6 for 6 different activities) as described in activity_labels.txt





Data Used in run_analysis() script

Signals were obtained from the smartphone sensory information and vectors were created for the following variables (where XYZ refers to separate signals in each X, Y, Z direction). The prefix "t" refers to measurements in the time domain, while the prefix "f" refers to measurements in the frequency domain. The data has been scaled by dividing measurements by the range of values; this means that the variables are technically unitless.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
Further transformations computations were completed to obtain the following set of variables from these signals (descriptions taken from the features.txt file from the UCI database):

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values.
iqr(): Interquartile range
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal
kurtosis(): kurtosis of the frequency domain signal
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.
Additional vectors obtained by calculating the mean for certain signals:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
The data used in run_analysis() is only a subset of the entire dataset described above in order to examine only mean and standard deviation values. This subset was determined by taking any variable that had "mean" or "std" in its name.

The following are the variables that were kept and used to make the tidy dataset (procedure as described in the README file). In addition, the first two variables (columns) indicate for each observation (row) what the subject ID( from 1 yo 30) and activity (walking, standing, sitting, etc.) are for each mean of the measurement. The descriptions of all remaining variables (columns 3 to 81) are as above.

subject_id
activity_name
tBodyAcc_mean_X
tBodyAcc_mean_Y
tBodyAcc_mean_Z
tBodyAcc_std_X
tBodyAcc_std_Y
tBodyAcc_std_Z
tGravityAcc_mean_X
tGravityAcc_mean_Y
tGravityAcc_mean_Z
tGravityAcc_std_X
tGravityAcc_std_Y
tGravityAcc_std_Z
tBodyAccJerk_mean_X
tBodyAccJerk_mean_Y
tBodyAccJerk_mean_Z
tBodyAccJerk_std_X
tBodyAccJerk_std_Y
tBodyAccJerk_std_Z
tBodyGyro_mean_X
tBodyGyro_mean_Y
tBodyGyro_mean_Z
tBodyGyro_std_X
tBodyGyro_std_Y
tBodyGyro_std_Z
tBodyGyroJerk_mean_X
tBodyGyroJerk_mean_Y
tBodyGyroJerk_mean_Z
tBodyGyroJerk_std_X
tBodyGyroJerk_std_Y
tBodyGyroJerk_std_Z
tBodyAccMag_mean
tBodyAccMag_std
tGravityAccMag_mean
tGravityAccMag_std
tBodyAccJerkMag_mean
tBodyAccJerkMag_std
tBodyGyroMag_mean
tBodyGyroMag_std
tBodyGyroJerkMag_mean
tBodyGyroJerkMag_std
fBodyAcc_mean_X
fBodyAcc_mean_Y
fBodyAcc_mean_Z
fBodyAcc_std_X
fBodyAcc_std_Y
fBodyAcc_std_Z
fBodyAcc_meanFreq_X
fBodyAcc_meanFreq_Y
fBodyAcc_meanFreq_Z
fBodyAccJerk_mean_X
fBodyAccJerk_mean_Y
fBodyAccJerk_mean_Z
fBodyAccJerk_std_X
fBodyAccJerk_std_Y
fBodyAccJerk_std_Z
fBodyAccJerk_meanFreq_X
fBodyAccJerk_meanFreq_Y
fBodyAccJerk_meanFreq_Z
fBodyGyro_mean_X
fBodyGyro_mean_Y
fBodyGyro_mean_Z
fBodyGyro_std_X
fBodyGyro_std_Y
fBodyGyro_std_Z
fBodyGyro_meanFreq_X
fBodyGyro_meanFreq_Y
fBodyGyro_meanFreq_Z
fBodyAccMag_mean
fBodyAccMag_std
fBodyAccMag_meanFreq
fBodyBodyAccJerkMag_mean
fBodyBodyAccJerkMag_std
fBodyBodyAccJerkMag_meanFreq
fBodyBodyGyroMag_mean
fBodyBodyGyroMag_std
fBodyBodyGyroMag_meanFreq
fBodyBodyGyroJerkMag_mean
fBodyBodyGyroJerkMag_std
fBodyBodyGyroJerkMag_meanFreq 
