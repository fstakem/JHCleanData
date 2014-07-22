# -----------------------------------------------------------------------------------------------
#
#   File: run_analysis.R
#   Author: Fredrick Stakem
#   Created: 7.22.14
#
#   Purpose: The purpose of this code it to clean the data for the John Hopkins
#   coursera course "Getting and Cleaning Data"
#
# -----------------------------------------------------------------------------------------------

# Source
source('../src/cleaning.R')

# Data must be in the working directory for the script to run
output_path <- './average_human_activity.txt'
input_path <- './'
merged_data <- merge_all_data(input_path)
average_data <- calculate_average(merged_data)
export_to_csv(output_path, average_data)
