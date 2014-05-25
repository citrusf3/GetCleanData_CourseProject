setInternet2(use = TRUE)

# download the dataset zip file
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipfile <- "UCI HAR Dataset.zip"
download.file(fileurl, destfile=zipfile, method="auto")

# unzip the file
unzipfile <- unzip(zipfile)
# check the data files
# > unzipfile
# [1] "./UCI HAR Dataset/activity_labels.txt"                         
# [2] "./UCI HAR Dataset/features.txt"                                
# [3] "./UCI HAR Dataset/features_info.txt"                           
# [4] "./UCI HAR Dataset/README.txt"                                  
# [5] "./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt"   
# [6] "./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt"   
# [7] "./UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt"   
# [8] "./UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt"  
# [9] "./UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt"  
# [10] "./UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt"  
# [11] "./UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt"  
# [12] "./UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt"  
# [13] "./UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt"  
# [14] "./UCI HAR Dataset/test/subject_test.txt"                       
# [15] "./UCI HAR Dataset/test/X_test.txt"                             
# [16] "./UCI HAR Dataset/test/y_test.txt"                             
# [17] "./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt" 
# [18] "./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt" 
# [19] "./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt" 
# [20] "./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt"
# [21] "./UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt"
# [22] "./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt"
# [23] "./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt"
# [24] "./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt"
# [25] "./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt"
# [26] "./UCI HAR Dataset/train/subject_train.txt"                     
# [27] "./UCI HAR Dataset/train/X_train.txt"                           
# [28] "./UCI HAR Dataset/train/y_train.txt"                           

# read the training set
xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
# read the test set
xTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
# merge the training and the test sets to create one data set
x <- rbind(xTrain, xTest)

# read the list of features 
features <- read.table("./UCI HAR Dataset/features.txt")
# use the list of features to name the merged data set
names(x) <- features[,2]
# extract only the variables with "mean()" or "std()"
xCut <- x[, grepl("mean\\(\\)", names(x)) | grepl("std\\(\\)", names(x))]

# read the subjects for the training set
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
# read the subjects for the test set
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
# merge the subjects for the training and the test sets
subject <- rbind(subjectTrain, subjectTest)

# read the training labels
yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
# read the test labels
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
# merge the training and the test labels
y <- rbind(yTrain, yTest)
# read the list of activity labels
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
# match the labels to activity names
activityNames <- activityLabels$V2[match(y$V1, activityLabels$V1)]

# combine the subjects, activity names and the extracted data set
xCut <- cbind("subject"=subject$V1, "activityName"=activityNames, xCut)

# clean up the variable names. as some of the variable names are pretty
# long, use the camel case.
# "BodyBody" in variable names seems to be a typo
names(xCut) <- gsub(pattern="BodyBody", replacement="Body", names(xCut))
# replace "mean" in variable names with "Mean"
names(xCut) <- gsub(pattern="mean", replacement="Mean", names(xCut))
# replace "std" in variable names with "Std"
names(xCut) <- gsub(pattern="std", replacement="Std", names(xCut))
# remove non-alphanumeric characters in the variable names
names(xCut) <- gsub(pattern="[^[:alnum:]]",replacement="", names(xCut))

library(reshape2)

# create a tidy data set with the average of each variable for 
# each activity and each subject
xCutMelt <- melt(xCut, id=c("subject", "activityName"))
varMean <- dcast(xCutMelt, subject + activityName ~ variable, mean)
write.csv(varMean, file="varMean.txt", row.names=FALSE)
