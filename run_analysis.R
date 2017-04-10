# Load the packages
library("dplyr")
library("reshape2")
library("plyr")

# Download and extract a zip file with datasets

URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dest_file <- "Course Project.zip"
download.file(URL, destfile = dest_file, method = "curl")
unzip(dest_file)

# Setting working directory
own_WD<-"C:/Users/Администратор/UCI HAR Dataset"

setwd(own_WD)

### Merging the training and test sets to create one data set

# loading data sets
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

# creating "X" data set
x_data <- rbind(x_train, x_test)

# creating "Y" data set
y_data <- rbind(y_train, y_test)

# creating "Subject" data set
subject_data <- rbind(subject_train, subject_test)


### Extracting only the measurements on the mean and standard deviation for each measurement


features <- read.table("features.txt")

# get only features with mean or std in their names
extract_features <- grep("-(mean|std)", features[, 2]) # length(extract_features) [1] 79


# subsetting the desired columns
x_dataset <- x_data[, extract_features]

# correcting the columns names
names(x_dataset) <- features[extract_features, 2]


### Using descriptive activity names to name the activities in the data set


activities <- read.table("activity_labels.txt")

y_data[, 1] <- activities[y_data[, 1], 2]


###Appropriately labeling the data set with descriptive variable names


# correct column name
names(subject_data) <- "subject"

names(y_data) <- "activity"

# merging all the data in a single tidy data set
tidy_dataset <- cbind(subject_data, y_data, x_dataset)


### Creating a second, independent tidy data set with the average of each variable for each activity and each subject
# dim(tidy_dataset) 
#[1] 10299    81


tidy_data_mean <- ddply(tidy_dataset, .(subject, activity), function(x) colMeans(x[, 3:81]))

write.table(tidy_data_mean, "tidy_data.txt", row.name=FALSE)


