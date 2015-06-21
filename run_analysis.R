## Getting and Cleaning Data Course Project

## Asking the user if data download is required.

userInput <- tolower(readline("Do you want to download and unzip the UCI HAR Dataset to your current working directory? Y/N: "))

if (userInput == 'y') {
    getData()
} else if (file.exists("./UCI HAR Dataset")) {
    print('Data is in working directory')
} else {
    print("Data not found in working directory") 
}

## Function that downloads and unzips the data in the wd.

getData <- function() {
    fileUrl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
    download.file(fileUrl, destfile = './HARUSDS.zip', method = 'curl')
    unzip(zipfile = './HARUSDS.zip', exdir = './')
    if (file.exists("./UCI HAR Dataset")) file.remove('./HARUSDS.zip')
}

## Reading data into R as data.table than merge test and train

library(data.table)
library(reshape2)

test_X <- read.table("./UCI HAR Dataset/test/X_test.txt")
names(test_X) <- read.table("./UCI HAR Dataset/features.txt")[, 2]
test_Y <- read.table("./UCI HAR Dataset/test/Y_test.txt")
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test_compl <- cbind(test_subject, test_Y, test_X)

train_X <- read.table("./UCI HAR Dataset/train/X_train.txt")
names(train_X) <- read.table("./UCI HAR Dataset/features.txt")[,2]
train_Y <- read.table("./UCI HAR Dataset/train/Y_train.txt")
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train_compl <- cbind(train_subject, train_Y, train_X)


feautures <- read.table("./UCI HAR Dataset/features.txt") ##REDUNDANT
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")



## (1) Merging of the training set and test set

test_train <- rbind(test_compl, train_compl)

## (2) Extract the mean and standard deviation for each measurement

test_train_mean_stdev <- test_train[, grep("mean|std", names(test_train))]

## (3) Use descriptive activity names

## (4) Descriptive variable names

## (5) A second independent data set with the average of each variable for each activity and each subject
