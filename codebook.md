# How the data was manipulated

Keeping all the rows in the same order, the subject_train, y_train and X_train data sets were joined together. 
The X_train column names came from the features data. 
Some features names were incorrect having "BodyBody" in the name instead of just "Body". These were corrected.
A character column "activity" was created from the activity_code var using the activity_labels.txt file to decode.
These steps were repeated for the test data sets before the train and the test datasets were merged together.
From this complete dataset only the features containing "mean()" or "std()" were kept together with the activity and subject columns. 
The dataset was grouped by subject and activity and the mean of all the other variables was found.
This is the data in the final dataset.




Position | Column Name          | Description|
|:------:|-----------------------|------------|
| 1 | subject | The subject
| 2 | activity | The activity performed
| 3 | tbodyaccmeanx | Average value of tBodyAcc-mean()-X for the activity
| 4 | tbodyaccmeany | Average value of tBodyAcc-mean()-Y for the activity
| 5 | tbodyaccmeanz | Average value of tBodyAcc-mean()-Z for the activity
| 6 | tgravityaccmeanx | Average value of tGravityAcc-mean()-X for the activity
| 7 | tgravityaccmeany | Average value of tGravityAcc-mean()-Y for the activity
| 8 | tgravityaccmeanz | Average value of tGravityAcc-mean()-Z for the activity
| 9 | tbodyaccjerkmeanx | Average value of tBodyAccJerk-mean()-X for the activity
| 10 | tbodyaccjerkmeany | Average value of tBodyAccJerk-mean()-Y for the activity
| 11 | tbodyaccjerkmeanz | Average value of tBodyAccJerk-mean()-Z for the activity
| 12 | tbodygyromeanx | Average value of tBodyGyro-mean()-X for the activity
| 13 | tbodygyromeany | Average value of tBodyGyro-mean()-Y for the activity
| 14 | tbodygyromeanz | Average value of tBodyGyro-mean()-Z for the activity
| 15 | tbodygyrojerkmeanx | Average value of tBodyGyroJerk-mean()-X for the activity
| 16 | tbodygyrojerkmeany | Average value of tBodyGyroJerk-mean()-Y for the activity
| 17 | tbodygyrojerkmeanz | Average value of tBodyGyroJerk-mean()-Z for the activity
| 18 | tbodyaccmagmean | Average value of tBodyAccMag-mean() for the activity
| 19 | tgravityaccmagmean | Average value of tGravityAccMag-mean() for the activity
| 20 | tbodyaccjerkmagmean | Average value of tBodyAccJerkMag-mean() for the activity
| 21 | tbodygyromagmean | Average value of tBodyGyroMag-mean() for the activity
| 22 | tbodygyrojerkmagmean | Average value of tBodyGyroJerkMag-mean() for the activity
| 23 | fbodyaccmeanx | Average value of fBodyAcc-mean()-X for the activity
| 24 | fbodyaccmeany | Average value of fBodyAcc-mean()-Y for the activity
| 25 | fbodyaccmeanz | Average value of fBodyAcc-mean()-Z for the activity
| 26 | fbodyaccjerkmeanx | Average value of fBodyAccJerk-mean()-X for the activity
| 27 | fbodyaccjerkmeany | Average value of fBodyAccJerk-mean()-Y for the activity
| 28 | fbodyaccjerkmeanz | Average value of fBodyAccJerk-mean()-Z for the activity
| 29 | fbodygyromeanx | Average value of fBodyGyro-mean()-X for the activity
| 30 | fbodygyromeany | Average value of fBodyGyro-mean()-Y for the activity
| 31 | fbodygyromeanz | Average value of fBodyGyro-mean()-Z for the activity
| 32 | fbodyaccmagmean | Average value of fBodyAccMag-mean() for the activity
| 33 | fbodyaccjerkmagmean | Average value of fBodyAccJerkMag-mean() for the activity
| 34 | fbodygyromagmean | Average value of fBodyGyroMag-mean() for the activity
| 35 | fbodygyrojerkmagmean | Average value of fBodyGyroJerkMag-mean() for the activity
| 36 | tbodyaccstdx | Average value of tBodyAcc-std()-X for the activity
| 37 | tbodyaccstdy | Average value of tBodyAcc-std()-Y for the activity
| 38 | tbodyaccstdz | Average value of tBodyAcc-std()-Z for the activity
| 39 | tgravityaccstdx | Average value of tGravityAcc-std()-X for the activity
| 40 | tgravityaccstdy | Average value of tGravityAcc-std()-Y for the activity
| 41 | tgravityaccstdz | Average value of tGravityAcc-std()-Z for the activity
| 42 | tbodyaccjerkstdx | Average value of tBodyAccJerk-std()-X for the activity
| 43 | tbodyaccjerkstdy | Average value of tBodyAccJerk-std()-Y for the activity
| 44 | tbodyaccjerkstdz | Average value of tBodyAccJerk-std()-Z for the activity
| 45 | tbodygyrostdx | Average value of tBodyGyro-std()-X for the activity
| 46 | tbodygyrostdy | Average value of tBodyGyro-std()-Y for the activity
| 47 | tbodygyrostdz | Average value of tBodyGyro-std()-Z for the activity
| 48 | tbodygyrojerkstdx | Average value of tBodyGyroJerk-std()-X for the activity
| 49 | tbodygyrojerkstdy | Average value of tBodyGyroJerk-std()-Y for the activity
| 50 | tbodygyrojerkstdz | Average value of tBodyGyroJerk-std()-Z for the activity
| 51 | tbodyaccmagstd | Average value of tBodyAccMag-std() for the activity
| 52 | tgravityaccmagstd | Average value of tGravityAccMag-std() for the activity
| 53 | tbodyaccjerkmagstd | Average value of tBodyAccJerkMag-std() for the activity
| 54 | tbodygyromagstd | Average value of tBodyGyroMag-std() for the activity
| 55 | tbodygyrojerkmagstd | Average value of tBodyGyroJerkMag-std() for the activity
| 56 | fbodyaccstdx | Average value of fBodyAcc-std()-X for the activity
| 57 | fbodyaccstdy | Average value of fBodyAcc-std()-Y for the activity
| 58 | fbodyaccstdz | Average value of fBodyAcc-std()-Z for the activity
| 59 | fbodyaccjerkstdx | Average value of fBodyAccJerk-std()-X for the activity
| 60 | fbodyaccjerkstdy | Average value of fBodyAccJerk-std()-Y for the activity
| 61 | fbodyaccjerkstdz | Average value of fBodyAccJerk-std()-Z for the activity
| 62 | fbodygyrostdx | Average value of fBodyGyro-std()-X for the activity
| 63 | fbodygyrostdy | Average value of fBodyGyro-std()-Y for the activity
| 64 | fbodygyrostdz | Average value of fBodyGyro-std()-Z for the activity
| 65 | fbodyaccmagstd | Average value of fBodyAccMag-std() for the activity
| 66 | fbodyaccjerkmagstd | Average value of fBodyAccJerkMag-std() for the activity
| 67 | fbodygyromagstd | Average value of fBodyGyroMag-std() for the activity
| 68 | fbodygyrojerkmagstd | Average value of fBodyGyroJerkMag-std() for the activity
