## author: Trish Kernan
## prerequisites: download the following packages: downloader, dplyr
library(downloader)
library(dplyr)

## Download and unzip the data for the project
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download(url, dest="dataset.zip", mode="wb") 
unzip("dataset.zip", exdir = "./Assignment4")

## Read in files and create data frame tables for subject data sets
## Name variable "subject"
subject_train <- tbl_df(read.table("Assignment4/UCI HAR Dataset/train/subject_train.txt")) %>%
  rename(subject = V1)
subject_test <- tbl_df(read.table("Assignment4/UCI HAR Dataset/test/subject_test.txt")) %>%
  rename(subject = V1)

## Create the X data frame tables (these contain the values for all the features)
## First create a vector from the features.txt file for the names of the columns in X
features <- read.table("Assignment4/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
features_vector <- features[[2]]
## Correct error where "BodyBody" entered instead of "Body"
features_vector <- gsub("BodyBody", "Body", features_vector)

## Read in X files, create data frame tables and name the columns
X_train <- tbl_df(read.table("Assignment4/UCI HAR Dataset/train/X_train.txt")) 
colnames(X_train) <- features_vector
X_test <- tbl_df(read.table("Assignment4/UCI HAR Dataset/test/X_test.txt"))
colnames(X_test) <- features_vector

## Read in the y files and create data frame tables
## the y files contain the activity codes
y_train <- tbl_df(read.table("Assignment4/UCI HAR Dataset/train/y_train.txt")) %>%
  rename(activitycode = V1)
y_test <- tbl_df(read.table("Assignment4/UCI HAR Dataset/test/y_test.txt")) %>%
  rename(activitycode = V1)

## REQUIREMENT 3: Uses descriptive activity names to name the activities in the data set
## Create a new column with the activity label for y_train taken from "Assignment4/UCI HAR Dataset/activity_labels.txt"
## Function for creating corresponding value
makelabel <- function(x) {
  if (x == 1) {
    "WALKING"
  } else if (x == 2) {
    "WALKING_UPSTAIRS"
  } else if (x == 3) {
    "WALKING_DOWNSTAIRS"
  } else if (x == 4) {
    "SITTING"
  } else if (x == 5) {
    "STANDING"
  } else if (x == 6) {
    "LAYING"
  }
}
## apply fuction to y data frame tables
y_train$activity <- sapply(y_train$activitycode, makelabel)
y_test$activity <- sapply(y_test$activitycode, makelabel)

## Combine the subject, activity and results data frame tables
traindata <- bind_cols(subject_train, y_train, X_train)
testdata <- bind_cols(subject_test, y_test, X_test)

## REQUIREMENT 1: Merges the training and the test sets to create one data set.

## merge the train and test data frames
alldata <- bind_rows(traindata, testdata)
sorteddata <- arrange(alldata, subject, activity)

## REQUIREMENT 2: Extracts only the measurements on the mean and standard deviation for each measurement.

## Select the relevant columns 
## Note: Did not select columns where meanFreq was included in the name
## Also dropped activitycode and just kept activity
pattern1 <- "mean()"
meanvector <- grep(pattern1, features_vector, fixed = TRUE, value = TRUE)
pattern2 <- "std()"
stdvector <- grep(pattern2, features_vector, fixed=TRUE, value = TRUE)
addvars <- c("subject", "activity")
colselection <- c(addvars, meanvector, stdvector)

thedata <- sorteddata[,colselection]

## REQUIREMENT 4: Appropriately labels the data set with descriptive variable names
varnames <- colnames(thedata)
varnames <- tolower(varnames)
varnames <- gsub("_", "", varnames)
varnames <- gsub("-", "", varnames)
varnames <- gsub("\\(\\)", "", varnames)
colnames(thedata) <- varnames

## REQUIREMENT 5: From the data set in step 4, creates a second, independent tidy data set with 
## the average of each variable for each activity and each subject

grouping <- group_by(thedata, subject, activity)
res <- summarise_all(grouping, mean)
write.table(res, "tidyds.txt", sep = "\t")
