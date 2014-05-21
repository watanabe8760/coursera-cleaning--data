# 0. Preparation

## 0.1. Set Environment
### Working Directory
setwd("./Coursera - Getting and Cleaning Data/Project")
### File Paths
fp_activity_labels <- "./data/activity_labels.txt"
fp_features <- "./data/features.txt"
fp_subject_test <- "./data/test/subject_test.txt"
fp_x_test <- "./data/test/X_test.txt"
fp_y_test <- "./data/test/Y_test.txt"
fp_subject_train <- "./data/train/subject_train.txt"
fp_x_train <- "./data/train/X_train.txt"
fp_y_train <- "./data/train/Y_train.txt"

## 0.2. Load Data
### Basic information
activity_labels <- read.table(fp_activity_labels,
                              col.names = c("label", "name"),
                              colClasses = c("factor", "factor"))
features <- read.table(fp_features,
                       col.names = c("col", "name"),
                       colClasses = c("numeric", "character"))
### Test group
subject_test <- as.numeric(readLines(fp_subject_test))
x_test <- read.table(fp_x_test, header = FALSE, colClasses = rep("numeric", length(features)))
y_test <- as.numeric(readLines(fp_y_test))
### Training group
subject_train <- as.numeric(readLines(fp_subject_train))
x_train <- read.table(fp_x_train, header = FALSE, colClasses = rep("numeric", length(features)))
y_train <- as.numeric(readLines(fp_y_train))


# 1. Merges the training and the test sets to create one data set.
merged <- rbind(x_train, x_test)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
meanstd <- merged[, grep("mean\\(\\)*|std\\(\\)", features$name)]

# 3. Uses descriptive activity names to name the activities in the data set
meanstd <- cbind(c(y_train, y_test), meanstd)
meanstd[, 1] <- activity_labels$name[meanstd[, 1]]

# 4. Appropriately labels the data set with descriptive activity names.
## 4.1. Clean up label names 
colname.temp1 <- grep("mean\\(\\)*|std\\(\\)", features$name, value = TRUE)
colname.temp2 <- sub("tBody", "time.body.", colname.temp1)
colname.temp3 <- sub("tGravity", "time.gravity.", colname.temp2)
colname.temp4 <- sub("fBody", "freq.body.", colname.temp3)
colname.temp5 <- sub("Acc", "acc.", colname.temp4)
colname.temp6 <- sub("Gyro", "gyro.", colname.temp5)
colname.temp7 <- sub("Jerk", "jerk.", colname.temp6)
colname.temp8 <- sub("Mag", "mag.", colname.temp7)
colname.temp9 <- sub("-mean\\(\\)-", "mean.", colname.temp8)
colname.temp10 <- sub("-std\\(\\)-", "std.", colname.temp9)
colname.temp11 <- sub("-mean\\(\\)", "mean", colname.temp10)
colname.temp12 <- sub("-std\\(\\)", "std", colname.temp11)
colname.temp13 <- tolower(colname.temp12)
colname.comp <- sub("body.body", "body.", colname.temp13)

## 4.2. Set label names on the dataset
names(meanstd) <- c("activity", colname.comp)

# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
## 5.1. Add subject as a new colomn
meanstd <- cbind(c(subject_train, subject_test), meanstd)
names(meanstd)[1] <- "subject"

## 5.2. Create a dataset by calculating average per activity per subject
tidy <- aggregate(meanstd[, 3:length(meanstd)], list(meanstd$subject, meanstd$activity), mean)
names(tidy)[1:2] <- c("subject", "activity")

## 5.3. Output the dataset to text file
write.table(tidy, file = "./tidy_data.txt", sep = ",", 
            row.names = FALSE, col.names = TRUE)
