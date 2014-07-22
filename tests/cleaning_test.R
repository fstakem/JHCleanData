# -----------------------------------------------------------------------------------------------
#
#   File: cleaning_test.R
#   Author: Fredrick Stakem
#   Created: 7.21.14
#
#   Purpose: The purpose of this code it to test the functions that clean the data for 
#   the John Hopkins coursera course "Getting and Cleaning Data"
#
# -----------------------------------------------------------------------------------------------


# Libraries
library('RUnit')

# Source
source('../src/cleaning.R')

# Merge the raw data
test_merge_all_data <- function()
{
    path <- '../raw_data'
    merge_data(path)
}

test_get_subject <- function()
{
    path <- '../raw_data/test'
    subject_data <- get_subject(path)
    checkEquals( typeof(subject_data$subject_id), "integer")
    checkEquals( nrow(subject_data), 2947)
    
    path <- '../raw_data/train'
    subject_data <- get_subject(path)
    checkEquals( typeof(subject_data$subject_id), "integer")
    checkEquals( nrow(subject_data), 7352)
}

test_get_activity <- function()
{
    path <- '../raw_data/test'
    activity_data <- get_activity(path)
    checkEquals( typeof(activity_data$activity_id), "integer")
    checkEquals( nrow(activity_data), 2947)
    
    path <- '../raw_data/train'
    activity_data <- get_activity(path)
    checkEquals( typeof(activity_data$activity_id), "integer")
    checkEquals( nrow(activity_data), 7352)
}

test_get_activity_labels <-function()
{
    path <- '../raw_data'
    activity_labels <- get_activity_labels(path)
    checkEquals( typeof(activity_labels$activity_id), "integer")
    checkEquals( typeof(activity_labels$activity), "integer")
    checkEquals( nrow(activity_labels), 6)
}

test_translate_activity <- function()
{
    path <- '../raw_data'
    activity_labels <- get_activity_labels(path)
    
    path <- '../raw_data/test'
    activity_data <- get_activity(path)
    translated_data <- translate_activity_id(activity_data, activity_labels)
    checkEquals( typeof(translated_data$activity), "integer" )
    
    path <- '../raw_data/train'
    activity_data <- get_activity(path)
    translated_data <- translate_activity_id(activity_data, activity_labels)
    checkEquals( typeof(translated_data$activity), "integer" )
}

test_get_features <- function()
{
    path <- '../raw_data/test'
    feature_data <- get_features(path)
    checkEquals( typeof(feature_data$V1), "double" )
    checkEquals( nrow(feature_data), 2947)
    checkEquals( ncol(feature_data), 561)
    
    path <- '../raw_data/train'
    feature_data <- get_features(path)
    checkEquals( typeof(feature_data$V1), "double" )
    checkEquals( nrow(feature_data), 7352)
    checkEquals( ncol(feature_data), 561)
}

test_get_feature_labels <- function()
{
    path <- '../raw_data'
    feature_labels <- get_feature_labels(path)
    checkEquals( typeof(feature_labels$feature), "integer")
    checkEquals( nrow(feature_labels), 561)
}

test_extract_features <- function()
{
    path <- '../raw_data'
    feature_labels <- get_feature_labels(path)
    
    path <- '../raw_data/test'
    feature_data <- get_features(path)
    extracted_features <- extract_features(feature_data, feature_labels)
    
    checkEquals( typeof(extracted_features$tBodyAcc_mean_X), "double" )
    checkEquals( nrow(extracted_features), 2947)
    checkEquals( ncol(extracted_features), 86)
    
    path <- '../raw_data/train'
    feature_data <- get_features(path)
    extracted_features <- extract_features(feature_data, feature_labels)
    
    checkEquals( typeof(extracted_features$tBodyAcc_mean_X), "double" )
    checkEquals( nrow(extracted_features), 7352)
    checkEquals( ncol(extracted_features), 86)
}

# Run tests
#test_get_subject()
#test_get_activity()
#test_get_activity_labels()
#test_translate_activity()
#test_get_features()
#test_get_feature_labels()
#test_extract_features()

# TODO ->
test_merge_all_data()


