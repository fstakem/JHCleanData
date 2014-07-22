# -----------------------------------------------------------------------------------------------
#
#   File: cleaning.R
#   Author: Fredrick Stakem
#   Created: 7.21.14
#
#   Purpose: The purpose of this code it to clean the data for the John Hopkins
#   coursera course "Getting and Cleaning Data"
#
# -----------------------------------------------------------------------------------------------


# Merge the raw data
merge_all_data <- function(root_path)
{
    print("--- Starting merging data ---")
    
    # Paths
    paths = c( file.path(root_path, 'test', fsep = .Platform$file.sep), file.path(root_path, 'train', fsep = .Platform$file.sep) )
    
    for(p in paths)
    {
        print( paste('Setting path:', p ) )
        combined_data <- merge_data_set(root_path, p)
    }
    
    
    print("--- Finished merging data ---")
}

merge_data_set <- function(root_path, path)
{
    subject_data <- get_subject(path)
    activity_data <- get_activity(path)
    activity_labels <- get_activity_labels(root_path)
    activity_data <- translate_activity_id(activity_data, activity_labels)
    feature_data <- get_features(path)
    feature_labels <- get_feature_labels(root_path)
    feature_data <- extract_features(feature_data, feature_labels)
    
    cbind(subject_data, activity_data, feature_data)
}

get_subject <- function(path)
{
    path_split <- strsplit(path, .Platform$file.sep)[[1]]
    file_name <- paste('subject_', path_split[length(path_split)], '.txt', sep="")
    file_path <- file.path(path, file_name, fsep = .Platform$file.sep)
    subject_data <- read.table(file_path)
    colnames(subject_data)[1] <- "subject_id"
    
    return(subject_data)
}

get_activity <- function(path)
{
    path_split <- strsplit(path, .Platform$file.sep)[[1]]
    file_name <- paste('y_', path_split[length(path_split)], '.txt', sep="")
    file_path <- file.path(path, file_name, fsep = .Platform$file.sep)
    activity_data <- read.table(file_path)
    colnames(activity_data)[1] <- "activity_id"
    
    return(activity_data)
}

get_activity_labels <- function(path)
{
    file_path <- file.path(path, 'activity_labels.txt', fsep = .Platform$file.sep)
    activity_labels <- read.table(file_path)
    colnames(activity_labels)[1] <- "activity_id"
    colnames(activity_labels)[2] <- "activity"
    
    return(activity_labels)
}

translate_activity_id <- function(activity_data, activity_labels)
{
    map_column <- rep(activity_labels$activity,1)
    translated_data<- map_column[activity_data$activity_id]
    translated_data <- data.frame(activity=translated_data)
    
    return(translated_data)
}

get_features <- function(path)
{
    path_split <- strsplit(path, .Platform$file.sep)[[1]]
    file_name <- paste('X_', path_split[length(path_split)], '.txt', sep="")
    file_path <- file.path(path, file_name, fsep = .Platform$file.sep)
    feature_data <- read.table(file_path)
    
    return(feature_data)
}

get_feature_labels <- function(path)
{
    file_path <- file.path(path, 'features.txt', fsep = .Platform$file.sep)
    feature_labels <- read.table(file_path)
    feature_labels <- feature_labels[, 2]
    feature_labels <- data.frame(feature=feature_labels)
    
    filtered_labels <- lapply(feature_labels, function(x){ gsub("\\(|\\)", "", x) })
    filtered_labels <- lapply(filtered_labels, function(x){ gsub(",", "_", x) })
    filtered_labels <- lapply(filtered_labels, function(x){ gsub("-", "_", x) })
    filtered_labels <- lapply(filtered_labels, function(x){ gsub("angle", "angle_", x) })
    filtered_labels <- data.frame(feature=filtered_labels)
     
    return(filtered_labels)
}

extract_features <- function(feature_data, feature_labels)
{
    cols <- grep("mean|std", feature_labels$feature, ignore.case=TRUE)
    extracted_data <- feature_data[, cols]
    extracted_names <- feature_labels[cols, 1]
    names(extracted_data) <- extracted_names
    
    return(extracted_data)
}

# Extract the mean and std
extract_mean_std <- function()
{
    print("--- Starting mean and std extraction ---")
    
    print("--- Finished mean and std extraction ---")
}

# Create final tidy data set
create_tidy_data <- function()
{
    print("--- Starting creation of tidy data ---")
    
    print("--- Finished creation of tidy data ---")
}