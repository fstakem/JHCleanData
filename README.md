JHCleanData
===========

By: Fredrick Stakem  
Date: 7.22.14  

## Abstract
This project was undertaken for the Data Science class 'Getting and Cleaning Data' from John Hopkins offered through Coursera. The R code takes data from the "Human Activity Recognition Using Smartphones Dataset" and processes it into a a tidy data set as per the project instructions. The raw data can be found on the course web site and in the folder '/raw_data' in this project. More details about the processing can be found below.

## Summary
The goal of the project was to collect the feature data from the "Human Activity Recognition Using Smartphones Dataset" and to provide the mean for a subset of the features. The features were to be grouped by a subjects's actions. Since there where 30 subjects and 6 actions this called called for 180 seperate groupings. Once the data was grouped per the subject's actions the mean was taken only of the features that were a mean or a std. In short this created a mean for each of the separate feature vectors that were either a mean or a std.

## Recipe
1. Get the raw data named "Human Activity Recognition Using Smartphones Dataset"
2. If the raw data is compressed then uncompress it keeping the original directory structure
3. In the script run_analysis.R set the 'input_path' variable to the root directory of the raw data
4. In the script run_analysis.R set the 'output_path' variable to the desired output file name
5. Run the script run_analysis.R with the previous specified variable set
6. The output data should be encoded as a csv file
 

## Codebook
All of the new data except the first two value is the mean of the original data values.


| New Data                              | Original Data                         | Type      |
| ------------------------------------- | ------------------------------------- | --------- |
| subject_id                            | id of subject                         | int       |
| activity                              | activity performed                    | enum      |
| tBodyAcc_mean_X                       | tBodyAcc-mean()-X                     | float     |
| tBodyAcc_mean_Y                       | tBodyAcc-mean()-Y                     | float     |
| tBodyAcc_mean_Z                       | tBodyAcc-mean()-Z                     | float     |
| tBodyAcc_std_X                        | tBodyAcc-std()-X                      | float     |
| tBodyAcc_std_Y                        | tBodyAcc-std()-Y                      | float     |
| tBodyAcc_std_Z                        | tBodyAcc-std()-Z                      | float     |
| tGravityAcc_mean_X                    | tGravityAcc-mean()-X                  | float     |
| tGravityAcc_mean_Y                    | tGravityAcc-mean()-Y                  | float     |
| tGravityAcc_mean_Z                    | tGravityAcc-mean()-Z                  | float     |
| tGravityAcc_std_X                     | tGravityAcc-std()-X                   | float     |
| tGravityAcc_std_Y                     | tGravityAcc-std()-Y                   | float     |
| tGravityAcc_std_Z                     | tGravityAcc-std()-Z                   | float     |
| tBodyAccJerk_mean_X                   | tBodyAccJerk-mean()-X                 | float     |
| tBodyAccJerk_mean_Y                   | tBodyAccJerk-mean()-Y                 | float     |
| tBodyAccJerk_mean_Z                   | tBodyAccJerk-mean()-Z                 | float     |
| tBodyAccJerk_std_X                    | tBodyAccJerk-std()-X                  | float     |
| tBodyAccJerk_std_Y                    | tBodyAccJerk-std()-Y                  | float     |
| tBodyAccJerk_std_Z                    | tBodyAccJerk-std()-Z                  | float     |
| tBodyGyro_mean_X                      | tBodyGyro-mean()-X                    | float     |
| tBodyGyro_mean_Y                      | tBodyGyro-mean()-Y                    | float     |
| tBodyGyro_mean_Z                      | tBodyGyro-mean()-Z                    | float     |
| tBodyGyro_std_X                       | tBodyGyro-std()-X                     | float     |
| tBodyGyro_std_Y                       | tBodyGyro-std()-Y                     | float     |
| tBodyGyro_std_Z                       | tBodyGyro-std()-Z                     | float     |
| tBodyGyroJerk_mean_X                  | tBodyGyroJerk-mean()-X                | float     |
| tBodyGyroJerk_mean_Y                  | tBodyGyroJerk-mean()-Y                | float     |
| tBodyGyroJerk_mean_Z                  | tBodyGyroJerk-mean()-Z                | float     |
| tBodyGyroJerk_std_X                   | tBodyGyroJerk-std()-X                 | float     |
| tBodyGyroJerk_std_Y                   | tBodyGyroJerk-std()-Y                 | float     |
| tBodyGyroJerk_std_Z                   | tBodyGyroJerk-std()-Z                 | float     |
| tBodyAccMag_mean                      | tBodyAccMag-mean()                    | float     |
| tBodyAccMag_std                       | tBodyAccMag-std()                     | float     |
| tGravityAccMag_mean                   | tGravityAccMag-mean()                 | float     |
| tGravityAccMag_std                    | tGravityAccMag-std()                  | float     |
| tBodyAccJerkMag_mean                  | tBodyAccJerkMag-mean()                | float     |
| tBodyAccJerkMag_std                   | tBodyAccJerkMag-std()                 | float     |
| tBodyGyroMag_mean                     | tBodyGyroMag-mean()                   | float     |
| tBodyGyroMag_std                      | tBodyGyroMag-std()                    | float     |
| tBodyGyroJerkMag_mean                 | tBodyGyroJerkMag-mean()               | float     |
| tBodyGyroJerkMag_std                  | tBodyGyroJerkMag-std()                | float     |
| fBodyAcc_mean_X                       | fBodyAcc-mean()-X                     | float     |
| fBodyAcc_mean_Y                       | fBodyAcc-mean()-Y                     | float     |
| fBodyAcc_mean_Z                       | fBodyAcc-mean()-Z                     | float     |
| fBodyAcc_std_X                        | fBodyAcc-std()-X                      | float     |
| fBodyAcc_std_Y                        | fBodyAcc-std()-Y                      | float     |
| fBodyAcc_std_Z                        | fBodyAcc-std()-Z                      | float     |
| fBodyAcc_meanFreq_X                   | fBodyAcc-meanFreq()-X                 | float     |
| fBodyAcc_meanFreq_Y                   | fBodyAcc-meanFreq()-Y                 | float     |
| fBodyAcc_meanFreq_Z                   | fBodyAcc-meanFreq()-Z                 | float     |
| fBodyAccJerk_mean_X                   | fBodyAccJerk-mean()-X                 | float     |
| fBodyAccJerk_mean_Y                   | fBodyAccJerk-mean()-Y                 | float     |
| fBodyAccJerk_mean_Z                   | fBodyAccJerk-mean()-Z                 | float     |
| fBodyAccJerk_std_X                    | fBodyAccJerk-std()-X                  | float     |
| fBodyAccJerk_std_Y                    | fBodyAccJerk-std()-Y                  | float     |
| fBodyAccJerk_std_Z                    | fBodyAccJerk-std()-Z                  | float     |
| fBodyAccJerk_meanFreq_X               | fBodyAccJerk-meanFreq()-X             | float     |
| fBodyAccJerk_meanFreq_Y               | fBodyAccJerk-meanFreq()-Y             | float     |
| fBodyAccJerk_meanFreq_Z               | fBodyAccJerk-meanFreq()-Z             | float     |
| fBodyGyro_mean_X                      | fBodyGyro-mean()-X                    | float     |
| fBodyGyro_mean_Y                      | fBodyGyro-mean()-Y                    | float     |
| fBodyGyro_mean_Z                      | fBodyGyro-mean()-Z                    | float     |
| fBodyGyro_std_X                       | fBodyGyro-std()-X                     | float     |
| fBodyGyro_std_Y                       | fBodyGyro-std()-Y                     | float     |
| fBodyGyro_std_Z                       | fBodyGyro-std()-Z                     | float     |
| fBodyGyro_meanFreq_X                  | fBodyGyro-meanFreq()-X                | float     |
| fBodyGyro_meanFreq_Y                  | fBodyGyro-meanFreq()-Y                | float     |
| fBodyGyro_meanFreq_Z                  | fBodyGyro-meanFreq()-Z                | float     |
| fBodyAccMag_mean                      | fBodyAccMag-mean()                    | float     |
| fBodyAccMag_std                       | fBodyAccMag-std()                     | float     |
| fBodyAccMag_meanFreq                  | fBodyAccMag-meanFreq()                | float     |
| fBodyBodyAccJerkMag_mean              | fBodyBodyAccJerkMag-mean()            | float     |
| fBodyBodyAccJerkMag_std               | fBodyBodyAccJerkMag-std()             | float     |
| fBodyBodyAccJerkMag_meanFreq          | fBodyBodyAccJerkMag-meanFreq()        | float     |
| fBodyBodyGyroMag_mean                 | fBodyBodyGyroMag-mean()               | float     |
| fBodyBodyGyroMag_std                  | fBodyBodyGyroMag-std()                | float     |
| fBodyBodyGyroMag_meanFreq             | fBodyBodyGyroMag-meanFreq()           | float     |
| fBodyBodyGyroJerkMag_mean             | fBodyBodyGyroJerkMag-mean()           | float     |
| fBodyBodyGyroJerkMag_std              | fBodyBodyGyroJerkMag-std()            | float     |
| fBodyBodyGyroJerkMag_meanFreq         | fBodyBodyGyroJerkMag-meanFreq()       | float     |
| angle_tBodyAccMean_gravity            | angle(tBodyAccMean,gravity)           | float     |
| angle_tBodyAccJerkMean_gravityMean    | angle(tBodyAccJerkMean),gravityMean)  | float     |
| angle_tBodyGyroMean_gravityMean       | angle(tBodyGyroMean,gravityMean)      | float     |
| angle_tBodyGyroJerkMean_gravityMean   | angle(tBodyGyroJerkMean,gravityMean)  | float     |
| angle_X_gravityMean                   | angle(X,gravityMean)                  | float     |
| angle_Y_gravityMean                   | angle(Y,gravityMean)                  | float     |
| angle_Z_gravityMean                   | angle(Z,gravityMean)                  | float     |


enumerated action: (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
