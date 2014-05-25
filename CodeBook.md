## Coursera - Getting and Cleaning Data
## Code Book for the Course Project
### Variables
* subject: subject ID number, 1-30.
* activityName: the name of the activity performed by the subject (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
* tBodyAccMeanX: mean value estimated from the time domain body acceleration signals in the X direction.
* tBodyAccMeanY: mean value estimated from the time domain body acceleration signals in the Y direction.
* tBodyAccMeanZ: mean value estimated from the time domain body acceleration signals in the Z direction.
* tBodyAccStdX: standard deviation estimated from the time domain body acceleration signals in the X direction.
* tBodyAccStdY: standard deviation estimated from the time domain body acceleration signals in the Y direction.
* tBodyAccStdZ: standard deviation estimated from the time domain body acceleration signals in the Z direction.
* tGravityAccMeanX: mean value estimated from the time domain gravity acceleration signals in the X direction.
* tGravityAccMeanY: mean value estimated from the time domain gravity acceleration signals in the Y direction.
* tGravityAccMeanZ: mean value estimated from the time domain gravity acceleration signals in the Z direction.
* tGravityAccStdX: standard deviation estimated from the time domain gravity acceleration signals in the X direction.
* tGravityAccStdY: standard deviation estimated from the time domain gravity acceleration signals in the Y direction.
* tGravityAccStdZ: standard deviation estimated from the time domain gravity acceleration signals in the Z direction.
* tBodyAccJerkMeanX: mean value estimated from the time domain body acceleration Jerk signals in the X direction.
* tBodyAccJerkMeanY: mean value estimated from the time domain body acceleration Jerk signals in the Y direction.
* tBodyAccJerkMeanZ: mean value estimated from the time domain body acceleration Jerk signals in the Z direction.
* tBodyAccJerkStdX: standard deviation estimated from the time domain body acceleration Jerk signals in the X direction.
* tBodyAccJerkStdY: standard deviation estimated from the time domain body acceleration Jerk signals in the Y direction.
* tBodyAccJerkStdZ: standard deviation estimated from the time domain body acceleration Jerk signals in the Z direction.
* tBodyGyroMeanX: mean value estimated from the time domain angular velocity signals from the gyroscope in the X direction.
* tBodyGyroMeanY: mean value estimated from the time domain angular velocity signals from the gyroscope in the Y direction.
* tBodyGyroMeanZ: mean value estimated from the time domain angular velocity signals from the gyroscope in the Z direction.
* tBodyGyroStdX: standard deviation estimated from the time domain angular velocity signals from the gyroscope in the X direction.
* tBodyGyroStdY: standard deviation estimated from the time domain angular velocity signals from the gyroscope in the Y direction.
* tBodyGyroStdZ: standard deviation estimated from the time domain angular velocity signals from the gyroscope in the Z direction.
* tBodyGyroJerkMeanX: mean value estimated from the time domain angular velocity Jerk signals from the gyroscope in the X direction.
* tBodyGyroJerkMeanY: mean value estimated from the time domain angular velocity Jerk signals from the gyroscope in the Y direction.
* tBodyGyroJerkMeanZ: mean value estimated from the time domain angular velocity Jerk signals from the gyroscope in the Z direction.
* tBodyGyroJerkStdX: standard deviation estimated from the time domain angular velocity Jerk signals from the gyroscope in the X direction.
* tBodyGyroJerkStdY: standard deviation estimated from the time domain angular velocity Jerk signals from the gyroscope in the Y direction.
* tBodyGyroJerkStdZ: standard deviation estimated from the time domain angular velocity Jerk signals from the gyroscope in the Z direction.
* tBodyAccMagMean: mean value estimated from the magnitude of the time domain body acceleration signals.
* tBodyAccMagStd: standard deviation estimated from the magnitude of the time domain body acceleration signals.
* tGravityAccMagMean: mean value estimated from the magnitude of the time domain gravity acceleration signals.
* tGravityAccMagStd: standard deviation estimated from the magnitude of the time domain gravity acceleration signals.
* tBodyAccJerkMagMean: mean value estimated from the magnitude of the time domain body acceleration Jerk signals.
* tBodyAccJerkMagStd: standard deviation estimated from the magnitude of the time domain body acceleration Jerk signals.
* tBodyGyroMagMean: mean value estimated from the magnitude of the time domain angular velocity signals from the gyroscope.
* tBodyGyroMagStd: standard deviation estimated from the magnitude of the time domain angular velocity signals from the gyroscope.
* tBodyGyroJerkMagMean: mean value estimated from the magnitude of the time domain angular velocity Jerk signals from the gyroscope.
* tBodyGyroJerkMagStd: standard deviation estimated from the magnitude of the time domain angular velocity Jerk signals from the gyroscope.
* fBodyAccMeanX: mean value estimated from the frequency domain body acceleration signals in the X direction.
* fBodyAccMeanY: mean value estimated from the frequency domain body acceleration signals in the Y direction.
* fBodyAccMeanZ: mean value estimated from the frequency domain body acceleration signals in the Z direction.
* fBodyAccStdX: standard deviation estimated from the frequency domain body acceleration signals in the X direction.
* fBodyAccStdY: standard deviation estimated from the frequency domain body acceleration signals in the Y direction.
* fBodyAccStdZ: standard deviation estimated from the frequency domain body acceleration signals in the Z direction.
* fBodyAccJerkMeanX: mean value estimated from the frequency domain body acceleration Jerk signals in the X direction.
* fBodyAccJerkMeanY: mean value estimated from the frequency domain body acceleration Jerk signals in the Y direction.
* fBodyAccJerkMeanZ: mean value estimated from the frequency domain body acceleration Jerk signals in the Z direction.
* fBodyAccJerkStdX: standard deviation estimated from the frequency domain body acceleration Jerk signals in the X direction.
* fBodyAccJerkStdY: standard deviation estimated from the frequency domain body acceleration Jerk signals in the Y direction.
* fBodyAccJerkStdZ: standard deviation estimated from the frequency domain body acceleration Jerk signals in the Z direction.
* fBodyGyroMeanX: mean value estimated from the frequency domain angular velocity signals from the gyroscope in the X direction.
* fBodyGyroMeanY: mean value estimated from the frequency domain angular velocity signals from the gyroscope in the Y direction.
* fBodyGyroMeanZ: mean value estimated from the frequency domain angular velocity signals from the gyroscope in the Z direction.
* fBodyGyroStdX: standard deviation estimated from the frequency domain angular velocity signals from the gyroscope in the X direction.
* fBodyGyroStdY: standard deviation estimated from the frequency domain angular velocity signals from the gyroscope in the Y direction.
* fBodyGyroStdZ: standard deviation estimated from the frequency domain angular velocity signals from the gyroscope in the Z direction.
* fBodyAccMagMean: mean value estimated from the magnitude of the frequency domain body acceleration signals.
* fBodyAccMagStd: standard deviation estimated from the magnitude of the frequency domain body acceleration signals.
* fBodyAccJerkMagMean: mean value estimated from the magnitude of the frequency domain body acceleration Jerk signals.
* fBodyAccJerkMagStd: standard deviation estimated from the magnitude of the frequency domain body acceleration Jerk signals.
* fBodyGyroMagMean: mean value estimated from the magnitude of the frequency domain angular velocity signals from the gyroscope.
* fBodyGyroMagStd: standard deviation estimated from the magnitude of the frequency domain angular velocity signals from the gyroscope.
* fBodyGyroJerkMagMean: mean value estimated from the magnitude of the frequency domain angular velocity Jerk signals from the gyroscope.
* fBodyGyroJerkMagStd: standard deviation estimated from the magnitude of the frequency domain angular velocity Jerk signals from the gyroscope.

### Data
The file varMean.txt contains the average of each estimated variable for each activity and each subject. It is actually a comma-seperated-value (CSV) file which is written by write.csv(). The TXT extension is used so that the file can be accepted by the Coursera website as an upload. The file is created by the R script run_analysis.R which does the following.

1. Downloads the dataset zip file.
2. Unzips the data files.
3. Merges the training and test sets to create one data set.
4. Extracts only the measurements on the mean and standard deviation for each measurement, i.e., the variables with "mean()" or "std()".
5. Replaces the activity labels in the data set with descriptive activity names.
6. Cleans up the variable names so that they conform to the tidy data standards by doing the following.
 * Fixing typos in the variables names.
 * Using the camel case for easier reading. To avoid super long variable names, abbreviations are used instead of whole words. 
 * Removing non-alphanumeric characters in the variable names.
7. Calculates the average of each estimated variable for each activity and each subject.
8. Writes the output data file varMean.txt.
