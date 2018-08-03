Code Book

This file provides a brief summary of the tidydata.txt that is created from the Run_analysis.R script

Purpose
-------

The this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

Requirements
------------

1 Merges the training and the test sets to create one data set.
2 Extracts only the measurements on the mean and standard deviation for each measurement.
3 Uses descriptive activity names to name the activities in the data set
4 Appropriately labels the data set with descriptive variable names.
5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


Identifiers
-----------
subject:  ranges from 1 to 30.
activity: string with 6 possible values

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING 

Measurements (average of each variable for each activity and each subject)
--------------------------------------------------------------------------
 [1] "TimeBodyAccelerometerMean-X"                            
 [2] "TimeBodyAccelerometerMean-Y"                            
 [3] "TimeBodyAccelerometerMean-Z"                            
 [4] "TimeBodyAccelerometerStandardDeviation-X"               
 [5] "TimeBodyAccelerometerStandardDeviation-Y"               
 [6] "TimeBodyAccelerometerStandardDeviation-Z"               
 [7] "TimeGravityAccelerometerMean-X"                         
 [8] "TimeGravityAccelerometerMean-Y"                         
 [9] "TimeGravityAccelerometerMean-Z"                         
[10] "TimeGravityAccelerometerStandardDeviation-X"            
[11] "TimeGravityAccelerometerStandardDeviation-Y"            
[12] "TimeGravityAccelerometerStandardDeviation-Z"            
[13] "TimeBodyAccelerometerJerkMean-X"                        
[14] "TimeBodyAccelerometerJerkMean-Y"                        
[15] "TimeBodyAccelerometerJerkMean-Z"                        
[16] "TimeBodyAccelerometerJerkStandardDeviation-X"           
[17] "TimeBodyAccelerometerJerkStandardDeviation-Y"           
[18] "TimeBodyAccelerometerJerkStandardDeviation-Z"           
[19] "TimeBodyGyroscopeMean-X"                                
[20] "TimeBodyGyroscopeMean-Y"                                
[21] "TimeBodyGyroscopeMean-Z"                                
[22] "TimeBodyGyroscopeStandardDeviation-X"                   
[23] "TimeBodyGyroscopeStandardDeviation-Y"                   
[24] "TimeBodyGyroscopeStandardDeviation-Z"                   
[25] "TimeBodyGyroscopeJerkMean-X"                            
[26] "TimeBodyGyroscopeJerkMean-Y"                            
[27] "TimeBodyGyroscopeJerkMean-Z"                            
[28] "TimeBodyGyroscopeJerkStandardDeviation-X"               
[29] "TimeBodyGyroscopeJerkStandardDeviation-Y"               
[30] "TimeBodyGyroscopeJerkStandardDeviation-Z"               
[31] "TimeBodyAccelerometerMagnitudeMean"                     
[32] "TimeBodyAccelerometerMagnitudeStandardDeviation"        
[33] "TimeGravityAccelerometerMagnitudeMean"                  
[34] "TimeGravityAccelerometerMagnitudeStandardDeviation"     
[35] "TimeBodyAccelerometerJerkMagnitudeMean"                 
[36] "TimeBodyAccelerometerJerkMagnitudeStandardDeviation"    
[37] "TimeBodyGyroscopeMagnitudeMean"                         
[38] "TimeBodyGyroscopeMagnitudeStandardDeviation"            
[39] "TimeBodyGyroscopeJerkMagnitudeMean"                     
[40] "TimeBodyGyroscopeJerkMagnitudeStandardDeviation"        
[41] "FreqBodyAccelerometerMean-X"                            
[42] "FreqBodyAccelerometerMean-Y"                            
[43] "FreqBodyAccelerometerMean-Z"                            
[44] "FreqBodyAccelerometerStandardDeviation-X"               
[45] "FreqBodyAccelerometerStandardDeviation-Y"               
[46] "FreqBodyAccelerometerStandardDeviation-Z"               
[47] "FreqBodyAccelerometerMeanFreq-X"                        
[48] "FreqBodyAccelerometerMeanFreq-Y"                        
[49] "FreqBodyAccelerometerMeanFreq-Z"                        
[50] "FreqBodyAccelerometerJerkMean-X"                        
[51] "FreqBodyAccelerometerJerkMean-Y"                        
[52] "FreqBodyAccelerometerJerkMean-Z"                        
[53] "FreqBodyAccelerometerJerkStandardDeviation-X"           
[54] "FreqBodyAccelerometerJerkStandardDeviation-Y"           
[55] "FreqBodyAccelerometerJerkStandardDeviation-Z"           
[56] "FreqBodyAccelerometerJerkMeanFreq-X"                    
[57] "FreqBodyAccelerometerJerkMeanFreq-Y"                    
[58] "FreqBodyAccelerometerJerkMeanFreq-Z"                    
[59] "FreqBodyGyroscopeMean-X"                                
[60] "FreqBodyGyroscopeMean-Y"                                
[61] "FreqBodyGyroscopeMean-Z"                                
[62] "FreqBodyGyroscopeStandardDeviation-X"                   
[63] "FreqBodyGyroscopeStandardDeviation-Y"                   
[64] "FreqBodyGyroscopeStandardDeviation-Z"                   
[65] "FreqBodyGyroscopeMeanFreq-X"                            
[66] "FreqBodyGyroscopeMeanFreq-Y"                            
[67] "FreqBodyGyroscopeMeanFreq-Z"                            
[68] "FreqBodyAccelerometerMagnitudeMean"                     
[69] "FreqBodyAccelerometerMagnitudeStandardDeviation"        
[70] "FreqBodyAccelerometerMagnitudeMeanFreq"                 
[71] "FreqBodyBodyAccelerometerJerkMagnitudeMean"             
[72] "FreqBodyBodyAccelerometerJerkMagnitudeStandardDeviation"
[73] "FreqBodyBodyAccelerometerJerkMagnitudeMeanFreq"         
[74] "FreqBodyBodyGyroscopeMagnitudeMean"                     
[75] "FreqBodyBodyGyroscopeMagnitudeStandardDeviation"        
[76] "FreqBodyBodyGyroscopeMagnitudeMeanFreq"                 
[77] "FreqBodyBodyGyroscopeJerkMagnitudeMean"                 
[78] "FreqBodyBodyGyroscopeJerkMagnitudeStandardDeviation"    
[79] "FreqBodyBodyGyroscopeJerkMagnitudeMeanFreq"             
[80] "angle(TimeBodyAccelerometerMean,gravity)"               
[81] "angle(TimeBodyAccelerometerJerkMean),gravityMean)"      
[82] "angle(TimeBodyGyroscopeMean,gravityMean)"               
[83] "angle(TimeBodyGyroscopeJerkMean,gravityMean)"           
[84] "angle(X,gravityMean)"                                   
[85] "angle(Y,gravityMean)"                                   
[86] "angle(Z,gravityMean)" 

