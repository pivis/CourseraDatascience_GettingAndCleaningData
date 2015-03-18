# read feature name vector
feature_names <- read.csv('./UCI HAR Dataset/features.txt', sep=' ', header=FALSE, stringsAsFactors=FALSE)[,2]

# Get indicies of mean and standard deviation features
mean_std_features <- c(
    grep('-mean\\(\\)', feature_names),
    grep('-std\\(\\)', feature_names),
    grep('Mean', feature_names))

# Get full names of mean and standard deviation features and make them more descriptive.
mean_std_feature_names <- feature_names[mean_std_features]
mean_std_feature_names <- gsub("-std\\(\\)", "StandardDeviation", mean_std_feature_names)
mean_std_feature_names <- gsub("-mean\\(\\)", "Mean", mean_std_feature_names)
mean_std_feature_names <- gsub("-", "_", mean_std_feature_names)
mean_std_feature_names <- gsub("\\(", "_", mean_std_feature_names)
mean_std_feature_names <- gsub("\\)", "", mean_std_feature_names)
mean_std_feature_names <- gsub(",", "_", mean_std_feature_names)
mean_std_feature_names <- gsub("Acc", "Accelerometer", mean_std_feature_names)
mean_std_feature_names <- gsub("Gyro", "Gyroscope", mean_std_feature_names)
mean_std_feature_names <- gsub("Mag", "Magnitude", mean_std_feature_names)
mean_std_feature_names <- gsub("tBody", "TimeDomainBody", mean_std_feature_names)
mean_std_feature_names <- gsub("fBody", "FrequencyDomainBody", mean_std_feature_names)
mean_std_feature_names <- gsub("tGravity", "TimeDomainGravity", mean_std_feature_names)
mean_std_feature_names <- gsub("BodyBody", "Body", mean_std_feature_names)


# Read activity labels
activity_labels <- read.csv('./UCI HAR Dataset/activity_labels.txt', sep=' ', header=FALSE, stringsAsFactors=FALSE)[,2]
activity_factors <- factor(activity_labels, levels=activity_labels)

# This function reads train or test folder with data and puts all variables and labels together
read_data_folder <- function(dataset)
{
    # Subfolder of train or test.
    subfolder <- file.path('.', 'UCI HAR DATASET', dataset)
    
    # Read file with subjects.
    subject <- read.csv(file.path(subfolder, paste0('subject_', dataset, '.txt')), header=FALSE)

    # Read file with labels.
    labels_numeric <- read.csv(file.path(subfolder, paste0('y_', dataset, '.txt')), header=FALSE)[,1]
    labels <- activity_factors[labels_numeric]
    
    # Read file with features.
    features <- read.table(file.path(subfolder, paste0('X_', dataset, '.txt')), header=FALSE)
    
    # Extract only mean and standard deviation features
    filtered_features <- features[, mean_std_features]
    
    # Merge feature, subject and label in one data.frame
    dataset <- cbind(filtered_features, subject, labels)
    
    # Change column names of resulting dataset to a more descriptive ones
    names(dataset) <- c(mean_std_feature_names, 'subject', 'label')

    dataset
}

# Read train and test datasets and merge them
tidy_merged_dataset <- rbind(
    read_data_folder('train'),
    read_data_folder('test'))

# Group dataset by subject and label and calculate averages for all other variables
tidy_dataset_with_averages <- tidy_merged_dataset %>%
    group_by(subject, label) %>%
    summarise_each(funs(mean))

# Output requested tidy data set with average variables' values for each subject and each activity
write.table(tidy_dataset_with_averages, './UCI_HAR_tidy_averaged_dataset.txt', row.names=FALSE)
