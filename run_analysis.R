## Getting and Cleaning Data Course Project

library(data.table)
library(reshape2)

## Function that downloads and unzips the data in the wd.

getData <- function() {
    fileUrl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
    download.file(fileUrl, destfile = './HARUSDS.zip', method = 'curl')
    unzip(zipfile = './HARUSDS.zip', exdir = './')
    if (file.exists("./UCI HAR Dataset")) file.remove('./HARUSDS.zip')
}

getData()


## Reading data into R as data.table than merge test and train

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[, 2]

## Gathering test files
test_X <- read.table("./UCI HAR Dataset/test/X_test.txt")
names(test_X) = read.table("./UCI HAR Dataset/features.txt")[, 2]
test_Y <- read.table("./UCI HAR Dataset/test/Y_test.txt")
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test_subject <- as.data.table(test_subject)

## Extracting mean and standard deviation data
test_X = test_X[, grep("mean|std", names(test_X))]

## Adding names to test data
test_Y[, 2] = activity_labels[test_Y[, 1]]
names(test_Y) = c("ActivityID", "Activity")
setnames(test_subject, "V1", "Subject")

## Merging test files
test_compl = cbind(test_subject, test_Y, test_X)

## Gathering train files
train_X <- read.table("./UCI HAR Dataset/train/X_train.txt")
names(train_X) = read.table("./UCI HAR Dataset/features.txt")[, 2]
train_Y <- read.table("./UCI HAR Dataset/train/Y_train.txt")
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train_subject <- as.data.table(train_subject)

## Extracting mean and standard deviation data
train_X = train_X[, grep("mean|std", names(train_X))]

## Adding names to train data
train_Y[, 2] = activity_labels[train_Y[, 1]]
names(train_Y) = c("ActivityID", "Activity")
setnames(train_subject, "V1", "Subject")

## Merging train files
train_compl <- cbind(train_subject, train_Y, train_X)

## Merging test and train
test_train <- rbind(test_compl, train_compl)

## Creating file with means
id_var <- c("Subject", "ActivityID", "Activity")
meas_var <- setdiff(colnames(test_train), id_var)

melt_data <- melt(test_train, id = id_var, measure.vars = meas_var)
final_data <- dcast(melt_data, Subject + Activity ~ variable, mean)
write.table(final_data, file = "./UCI_HAR_tidy.txt", row.name = FALSE)

