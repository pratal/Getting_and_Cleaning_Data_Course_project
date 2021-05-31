library(dplyr)

# Download the dataset 
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileName <- "./data/UCI_HAR_Dataset.zip"
if (!file.exists("./data")) {
    dir.create("./data")
}
#------>>> download.file(fileURL, fileName)

# Unzip the dataset
#------>>> unzip("./data/UCI_HAR_Dataset.zip", exdir = "./data")

#------------------------------------------------------------------------------#
# Merge the training and the test sets to create one data set.
#------------------------------------------------------------------------------#

# Read the training data set
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# Read the test data set
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Read the feature vector
features <- read.table("./data/UCI HAR Dataset/features.txt")

# Read the activity labels
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

# Merge the training and test data sets
x_all <- rbind(x_train, x_test)
y_all <- rbind(y_train, y_test)
subject_all <- rbind(subject_train, subject_test)

#------------------------------------------------------------------------------#
# Extracts only the measurements on the mean and standard deviation for each
# measurement. 
#------------------------------------------------------------------------------#
mean_and_std_feature_rows <- grep("mean|std", features[,2], ignore.case=TRUE)
features_selected <- features[mean_and_std_feature_rows,]
x_all <- x_all[, features_selected[,1]]

#------------------------------------------------------------------------------#
# Uses descriptive activity names to name the activities in the data set
#------------------------------------------------------------------------------#
colnames(y_all) <- "activityID"
y_all$activity <- 
    factor(y_all$activityID, 
           levels = activity_labels[,1],
           labels = as.character(activity_labels[,2]))
activity <- y_all[, -1]

#------------------------------------------------------------------------------#    
# Appropriately labels the data set with descriptive variable names.
#------------------------------------------------------------------------------#
colnames_x <- features_selected[,2]

# Expand feature names and clean up typos
colnames_x <- gsub("[\\(\\)-]|,", "", colnames_x)
colnames_x <- gsub("BodyBody", "Body", colnames_x)
colnames_x <- gsub("Acc", "Accelerometer", colnames_x)
colnames_x <- gsub("Gyro", "Gyroscope", colnames_x)
colnames_x <- gsub("Mag", "Magnitude", colnames_x)
colnames_x <- gsub("^t", "Time", colnames_x)
colnames_x <- gsub("^f", "Frequency", colnames_x)
colnames_x <- gsub("tBody", "TimeBody", colnames_x)
colnames_x<-gsub("mean", "Mean", colnames_x, ignore.case = TRUE)
colnames_x<-gsub("std", "StandardDeviation", colnames_x, ignore.case = TRUE)
colnames_x<-gsub("freq", "Frequency", colnames_x, ignore.case = TRUE)
colnames_x<-gsub("angle", "Angle", colnames_x)
colnames_x<-gsub("gravity", "Gravity", colnames_x)

colnames(x_all) <- colnames_x
colnames(subject_all) <- "subjectID"

#------------------------------------------------------------------------------#
# From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
#------------------------------------------------------------------------------#
combined_dataset <- cbind(activity, subject_all, x_all)
mean_by_group <- 
    combined_dataset %>% 
    group_by(activity, subjectID) %>%
    summarize_each(funs(mean))
write.table(
    mean_by_group, 
    file = "./data/UCI HAR Dataset/tidydata.txt", 
    row.names = FALSE, 
    col.names = TRUE,
    sep = ","
)
    