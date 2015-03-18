# Getting and Cleaning Data Course Project

Raw data for this course project is [Human Activity Recognition Using Smartphones Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
This raw data contains smartphones' Accelerometer and Gyroscope measurements for the selected individuals and their activities.

The raw data is processed by **run_analysis.R** script to form a tidy dataset with the following requirements met:
1. Training and test data is merged to create one data set.
2. Only the measurements on the mean and standard deviation for each measurement are extracted.
3. Descriptive activity names are used to name the activities in the data set.
4. The data is labeled with descriptive variable names.
5. An independent tidy data set is created with the average of each variable for each activity and each subject.

The script assumes that Raw data folder **UCI HAR Dataset** is present in the working directory.

More details on the script can be found in the comments inside the script.

For more details on the tidy data set variables please refer to the **CodeBook.md** file.
