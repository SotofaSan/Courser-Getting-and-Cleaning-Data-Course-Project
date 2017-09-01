---
title: "CodeBook.md"
output: html_document
---

## Initial data

Initial data is available here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
They should be downloades and unzipped in the working directory

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


## Activite ID

Activity: the string activity name contains:
    - Walking
    - Walking Upstairs
    - Walking Downstairs
    - Sitting
    - Standing
    - Laying
    
## Read data and merge

The folloving data present in two groops for test and train  

    * subject : subject IDs
    * X : values of variables 
    * Y : activity ID 
    
They were combined in one data set with proper variables names which were "cleaned"  by getting rid of "()", some dublication, and by adding full name for Time and Frequency on the next steps.
    
## Next Steps of tidyng data
    
    * Subset the data - the measurements of the mean and standard deviation (std) only were extracted
    * codes for activity were replaced by descriptive activity names (see Activite ID)
    * create the indepebdent data set with the average of each variable (66) for each activity and subject
    * write obtained data set in separate file with can be found in Tidy.tx
    
