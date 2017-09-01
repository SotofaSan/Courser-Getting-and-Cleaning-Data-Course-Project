

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
    
##  Names for all variables which are the average for eacg activity and subject

 "TimeBodyAcc_mean_X"           
 "TimeBodyAcc_mean_Y"        
 "TimeBodyAcc_mean_Z"       
 "TimeBodyAcc_std_X"            
 "TimeBodyAcc_std_Y"         
 "TimeBodyAcc_std_Z"         
 "TimeGravityAcc_mean_X"        
 "TimeGravityAcc_mean_Y"    
 "TimeGravityAcc_mean_Z"      
 "TimeGravityAcc_std_X"         
 "TimeGravityAcc_std_Y"      
 "TimeGravityAcc_std_Z"      
 "TimeBodyAccJerk_mean_X"       
 "TimeBodyAccJerk_mean_Y"    
 "TimeBodyAccJerk_mean_Z"    
 "TimeBodyAccJerk_std_X"        
 "TimeBodyAccJerk_std_Y"     
 "TimeBodyAccJerk_std_Z"     
 "TimeBodyGyro_mean_X"          
 "TimeBodyGyro_mean_Y"       
 "TimeBodyGyro_mean_Z"      
 "TimeBodyGyro_std_X"           
 "TimeBodyGyro_std_Y"        
 "TimeBodyGyro_std_Z"         
 "TimeBodyGyroJerk_mean_X"      
 "TimeBodyGyroJerk_mean_Y"    
 "TimeBodyGyroJerk_mean_Z"     
 "TimeBodyGyroJerk_std_X"       
 "TimeBodyGyroJerk_std_Y"      
 "TimeBodyGyroJerk_std_Z"     
 "TimeBodyAccMag_mean"          
 "TimeBodyAccMag_std"         
 "TimeGravityAccMag_mean"      
 "TimeGravityAccMag_std"        
 "TimeBodyAccJerkMag_mean"     
 "TimeBodyAccJerkMag_std"      
 "TimeBodyGyroMag_mean"         
 "TimeBodyGyroMag_std"         
 "TimeBodyGyroJerkMag_mean"    
 "TimeBodyGyroJerkMag_std"      
 "FrequencyBodyAcc_mean_X"     
 "FrequencyBodyAcc_mean_Y"     
 "FrequencyBodyAcc_mean_Z"      
 "FrequencyBodyAcc_std_X"      
 "FrequencyBodyAcc_std_Y"      
 "FrequencyBodyAcc_std_Z"       
 "FrequencyBodyAccJerk_mean_X"  
 "FrequencyBodyAccJerk_mean_Y" 
 "FrequencyBodyAccJerk_mean_Z"  
 "FrequencyBodyAccJerk_std_X"   
 "FrequencyBodyAccJerk_std_Y"   
 "FrequencyBodyAccJerk_std_Z"   
 "FrequencyBodyGyro_mean_X"    
 "FrequencyBodyGyro_mean_Y"    
 "FrequencyBodyGyro_mean_Z"     
 "FrequencyBodyGyro_std_X"      
 "FrequencyBodyGyro_std_Y"     
 "FrequencyBodyGyro_std_Z"      
 "FrequencyBodyAccMag_mean"    
 "FrequencyBodyAccMag_std"      
 "FrequencyBodyAccJerkMag_mean" 
 "FrequencyBodyAccJerkMag_std"  
 "FrequencyBodyGyroMag_mean"    
 "FrequencyBodyGyroMag_std"     
 "FrequencyBodyGyroJerkMag_mean" 
 "FrequencyBodyGyroJerkMag_std"   
