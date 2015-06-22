## Human Activity Recognition Using Smartphones Data Set
#### From the course "Getting and Cleaning Data" offered by JohnsHopkins University through Coursera.

#### This document describes the processing steps applied to the UCI HAR data and its variables.

#### About the data
##### from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

> Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Variables

* "Subject" - identification number
* "Activity" - descriptive name of activity
* "tBodyAcc-mean()-X" - m/s<sup>2</sup>
* "tBodyAcc-mean()-Y" - m/s<sup>2</sup>
* "tBodyAcc-mean()-Z" - m/s<sup>2</sup>
* "tBodyAcc-std()-X" - m/s<sup>2</sup>
* "tBodyAcc-std()-Y" - m/s<sup>2</sup>
* "tBodyAcc-std()-Z" - m/s<sup>2</sup>
* "tGravityAcc-mean()-X" - m/s<sup>2</sup>
* "tGravityAcc-mean()-Y" - m/s<sup>2</sup>
* "tGravityAcc-mean()-Z" - m/s<sup>2</sup>
* "tGravityAcc-std()-X" - m/s<sup>2</sup>
* "tGravityAcc-std()-Y" - m/s<sup>2</sup>
* "tGravityAcc-std()-Z" - m/s<sup>2</sup>
* "tBodyAccJerk-mean()-X" - m/s<sup>2</sup>
* "tBodyAccJerk-mean()-Y" - m/s<sup>2</sup>
* "tBodyAccJerk-mean()-Z" - m/s<sup>2</sup>
* "tBodyAccJerk-std()-X" - m/s<sup>2</sup>
* "tBodyAccJerk-std()-Y" - m/s<sup>2</sup>
* "tBodyAccJerk-std()-Z" - m/s<sup>2</sup>
* "tBodyGyro-mean()-X" - m/s<sup>2</sup>
* "tBodyGyro-mean()-Y" - m/s<sup>2</sup>
* "tBodyGyro-mean()-Z" - m/s<sup>2</sup>
* "tBodyGyro-std()-X" - m/s<sup>2</sup>
* "tBodyGyro-std()-Y" - m/s<sup>2</sup>
* "tBodyGyro-std()-Z" - m/s<sup>2</sup>
* "tBodyGyroJerk-mean()-X" - m/s<sup>2</sup>
* "tBodyGyroJerk-mean()-Y" - m/s<sup>2</sup>
* "tBodyGyroJerk-mean()-Z" - m/s<sup>2</sup>
* "tBodyGyroJerk-std()-X" - m/s<sup>2</sup>
* "tBodyGyroJerk-std()-Y" - m/s<sup>2</sup>
* "tBodyGyroJerk-std()-Z" - m/s<sup>2</sup>
* "tBodyAccMag-mean()" - m/s<sup>2</sup>
* "tBodyAccMag-std()" - m/s<sup>2</sup>
* "tGravityAccMag-mean()" - m/s<sup>2</sup>
* "tGravityAccMag-std()" - m/s<sup>2</sup>
* "tBodyAccJerkMag-mean()" - m/s<sup>2</sup>
* "tBodyAccJerkMag-std()" - m/s<sup>2</sup>
* "tBodyGyroMag-mean()" - m/s<sup>2</sup>
* "tBodyGyroMag-std()" - m/s<sup>2</sup>
* "tBodyGyroJerkMag-mean()" - m/s<sup>2</sup>
* "tBodyGyroJerkMag-std()" - m/s<sup>2</sup>
* "fBodyAcc-mean()-X" - m/s<sup>2</sup>
* "fBodyAcc-mean()-Y" - m/s<sup>2</sup>
* "fBodyAcc-mean()-Z" - m/s<sup>2</sup>
* "fBodyAcc-std()-X" - m/s<sup>2</sup>
* "fBodyAcc-std()-Y" - m/s<sup>2</sup>
* "fBodyAcc-std()-Z" - m/s<sup>2</sup>
* "fBodyAcc-meanFreq()-X" - m/s<sup>2</sup>
* "fBodyAcc-meanFreq()-Y" - m/s<sup>2</sup>
* "fBodyAcc-meanFreq()-Z" - m/s<sup>2</sup>
* "fBodyAccJerk-mean()-X" - m/s<sup>2</sup>
* "fBodyAccJerk-mean()-Y" - m/s<sup>2</sup>
* "fBodyAccJerk-mean()-Z" - m/s<sup>2</sup>
* "fBodyAccJerk-std()-X" - m/s<sup>2</sup>
* "fBodyAccJerk-std()-Y" - m/s<sup>2</sup>
* "fBodyAccJerk-std()-Z" - m/s<sup>2</sup>
* "fBodyAccJerk-meanFreq()-X" - m/s<sup>2</sup>
* "fBodyAccJerk-meanFreq()-Y" - m/s<sup>2</sup>
* "fBodyAccJerk-meanFreq()-Z" - m/s<sup>2</sup>
* "fBodyGyro-mean()-X" - m/s<sup>2</sup>
* "fBodyGyro-mean()-Y" - m/s<sup>2</sup>
* "fBodyGyro-mean()-Z" - m/s<sup>2</sup>
* "fBodyGyro-std()-X" - m/s<sup>2</sup>
* "fBodyGyro-std()-Y" - m/s<sup>2</sup>
* "fBodyGyro-std()-Z" - m/s<sup>2</sup>
* "fBodyGyro-meanFreq()-X" - m/s<sup>2</sup>
* "fBodyGyro-meanFreq()-Y" - m/s<sup>2</sup>
* "fBodyGyro-meanFreq()-Z" - m/s<sup>2</sup>
* "fBodyAccMag-mean()" - m/s<sup>2</sup>
* "fBodyAccMag-std()" - m/s<sup>2</sup>
* "fBodyAccMag-meanFreq()" - m/s<sup>2</sup>
* "fBodyBodyAccJerkMag-mean()" - m/s<sup>2</sup>
* "fBodyBodyAccJerkMag-std()" - m/s<sup>2</sup>
* "fBodyBodyAccJerkMag-meanFreq()" - m/s<sup>2</sup>
* "fBodyBodyGyroMag-mean()" - m/s<sup>2</sup>
* "fBodyBodyGyroMag-std()" - m/s<sup>2</sup>
* "fBodyBodyGyroMag-meanFreq()" - m/s<sup>2</sup>
* "fBodyBodyGyroJerkMag-mean()" - m/s<sup>2</sup>
* "fBodyBodyGyroJerkMag-std()" - m/s<sup>2</sup>
* "fBodyBodyGyroJerkMag-meanFreq()" - m/s<sup>2</sup>

## Data processing

The script run_analysis.R outputs a text file called UCI_HAR_tidy.txt that is derived from the original data found here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The file can be downloaded and unzipped through the R-script.

### The script run_analysis.R does the following:

#### Downloads and unzipps
This step is enclosed in the function getData so it could easily be skipped if data is already in wd. The function downloads the zip-file in the link above, unzipps it in wd and deletes the zip. 

#### Reading data into R
The data is split into several files in a file structure. In this step the files with relevant data are loaded into R.

#### Adds descriptive names
The original data set contains a text file called features.txt with names, they are appended.   

#### Extracts relevant data
Since only data about mean and standard deviation is needed, relevant columns are extraced at this point to avoid unessassary processing. Sorting is done by creating an index of columns with names matching "mean" and "std", grep is used.

#### Merges test and train data
Data is merged, first train data files are merged with eachother, then test data files with eachother, lastly the train and test data is merged.

#### Creates independent data set with average data

A data set with the averages of each variale is created using melt and dcast.

#### Writes the average data to a text file

The above data set is written to "UCI_HAR_tidy.txt".
 
