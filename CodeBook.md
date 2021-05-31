### Introduction
This code book summarises the variables and data in the tidydata.txt file created by
running run_analysis.R script file.

### Information about the original data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz was captured. The experiments were video-recorded to label the data manually. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Each record in the data set has following attributes :

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope.
* A 561-feature vector with time and frequency domain variables.
* Its activity label.
* An identifier of the subject who carried out the experiment.

### Operations performed 
Following operations were performed using run_analysis.R script :

* Merged the training and the test sets to create one data set.
* Only the measurements on the mean and standard deviation for each measurement were extracted. 
* Descriptive activity names were used to name the activities in the data set.
* The data set columns were labeled with descriptive variable names.
* From the data set in step 4, a second, independent tidy data set with the average of each variable for each activity and each subject was created which was written 
into tidydata.txt file.

### Variables
The new tidy dataset contains 180 rows and 88 columns. The rows form the observations for each of the subjects identified with sequence from 1 to 30 for 
each of the 6 activities which are - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING. Rest of the columns are the average values of either mean or standard deviation values of various attributes grouped over subject and activity.

List of variable names:

 [1] "activity"                                                     
 [2] "subjectID"                                                    
 [3] "TimeBodyAccelerometerMeanX"                                   
 [4] "TimeBodyAccelerometerMeanY"                                   
 [5] "TimeBodyAccelerometerMeanZ"                                   
 [6] "TimeBodyAccelerometerStandardDeviationX"                      
 [7] "TimeBodyAccelerometerStandardDeviationY"                      
 [8] "TimeBodyAccelerometerStandardDeviationZ"                      
 [9] "TimeGravityAccelerometerMeanX"                                
[10] "TimeGravityAccelerometerMeanY"                                
[11] "TimeGravityAccelerometerMeanZ"                                
[12] "TimeGravityAccelerometerStandardDeviationX"                   
[13] "TimeGravityAccelerometerStandardDeviationY"                   
[14] "TimeGravityAccelerometerStandardDeviationZ"                   
[15] "TimeBodyAccelerometerJerkMeanX"                               
[16] "TimeBodyAccelerometerJerkMeanY"                               
[17] "TimeBodyAccelerometerJerkMeanZ"                               
[18] "TimeBodyAccelerometerJerkStandardDeviationX"                  
[19] "TimeBodyAccelerometerJerkStandardDeviationY"                  
[20] "TimeBodyAccelerometerJerkStandardDeviationZ"                  
[21] "TimeBodyGyroscopeMeanX"                                       
[22] "TimeBodyGyroscopeMeanY"                                       
[23] "TimeBodyGyroscopeMeanZ"                                       
[24] "TimeBodyGyroscopeStandardDeviationX"                          
[25] "TimeBodyGyroscopeStandardDeviationY"                          
[26] "TimeBodyGyroscopeStandardDeviationZ"                          
[27] "TimeBodyGyroscopeJerkMeanX"                                   
[28] "TimeBodyGyroscopeJerkMeanY"                                   
[29] "TimeBodyGyroscopeJerkMeanZ"                                   
[30] "TimeBodyGyroscopeJerkStandardDeviationX"                      
[31] "TimeBodyGyroscopeJerkStandardDeviationY"                      
[32] "TimeBodyGyroscopeJerkStandardDeviationZ"                      
[33] "TimeBodyAccelerometerMagnitudeMean"                           
[34] "TimeBodyAccelerometerMagnitudeStandardDeviation"              
[35] "TimeGravityAccelerometerMagnitudeMean"                        
[36] "TimeGravityAccelerometerMagnitudeStandardDeviation"           
[37] "TimeBodyAccelerometerJerkMagnitudeMean"                       
[38] "TimeBodyAccelerometerJerkMagnitudeStandardDeviation"          
[39] "TimeBodyGyroscopeMagnitudeMean"                               
[40] "TimeBodyGyroscopeMagnitudeStandardDeviation"                  
[41] "TimeBodyGyroscopeJerkMagnitudeMean"                           
[42] "TimeBodyGyroscopeJerkMagnitudeStandardDeviation"              
[43] "FrequencyuencyBodyAccelerometerMeanX"                         
[44] "FrequencyuencyBodyAccelerometerMeanY"                         
[45] "FrequencyuencyBodyAccelerometerMeanZ"                         
[46] "FrequencyuencyBodyAccelerometerStandardDeviationX"            
[47] "FrequencyuencyBodyAccelerometerStandardDeviationY"            
[48] "FrequencyuencyBodyAccelerometerStandardDeviationZ"            
[49] "FrequencyuencyBodyAccelerometerMeanFrequencyX"                
[50] "FrequencyuencyBodyAccelerometerMeanFrequencyY"                
[51] "FrequencyuencyBodyAccelerometerMeanFrequencyZ"                
[52] "FrequencyuencyBodyAccelerometerJerkMeanX"                     
[53] "FrequencyuencyBodyAccelerometerJerkMeanY"                     
[54] "FrequencyuencyBodyAccelerometerJerkMeanZ"                     
[55] "FrequencyuencyBodyAccelerometerJerkStandardDeviationX"        
[56] "FrequencyuencyBodyAccelerometerJerkStandardDeviationY"        
[57] "FrequencyuencyBodyAccelerometerJerkStandardDeviationZ"        
[58] "FrequencyuencyBodyAccelerometerJerkMeanFrequencyX"            
[59] "FrequencyuencyBodyAccelerometerJerkMeanFrequencyY"            
[60] "FrequencyuencyBodyAccelerometerJerkMeanFrequencyZ"            
[61] "FrequencyuencyBodyGyroscopeMeanX"                             
[62] "FrequencyuencyBodyGyroscopeMeanY"                             
[63] "FrequencyuencyBodyGyroscopeMeanZ"                             
[64] "FrequencyuencyBodyGyroscopeStandardDeviationX"                
[65] "FrequencyuencyBodyGyroscopeStandardDeviationY"                
[66] "FrequencyuencyBodyGyroscopeStandardDeviationZ"                
[67] "FrequencyuencyBodyGyroscopeMeanFrequencyX"                    
[68] "FrequencyuencyBodyGyroscopeMeanFrequencyY"                    
[69] "FrequencyuencyBodyGyroscopeMeanFrequencyZ"                    
[70] "FrequencyuencyBodyAccelerometerMagnitudeMean"                 
[71] "FrequencyuencyBodyAccelerometerMagnitudeStandardDeviation"    
[72] "FrequencyuencyBodyAccelerometerMagnitudeMeanFrequency"        
[73] "FrequencyuencyBodyAccelerometerJerkMagnitudeMean"             
[74] "FrequencyuencyBodyAccelerometerJerkMagnitudeStandardDeviation"
[75] "FrequencyuencyBodyAccelerometerJerkMagnitudeMeanFrequency"    
[76] "FrequencyuencyBodyGyroscopeMagnitudeMean"                     
[77] "FrequencyuencyBodyGyroscopeMagnitudeStandardDeviation"        
[78] "FrequencyuencyBodyGyroscopeMagnitudeMeanFrequency"            
[79] "FrequencyuencyBodyGyroscopeJerkMagnitudeMean"                 
[80] "FrequencyuencyBodyGyroscopeJerkMagnitudeStandardDeviation"    
[81] "FrequencyuencyBodyGyroscopeJerkMagnitudeMeanFrequency"        
[82] "AngleTimeBodyAccelerometerMeanGravity"                        
[83] "AngleTimeBodyAccelerometerJerkMeanGravityMean"                
[84] "AngleTimeBodyGyroscopeMeanGravityMean"                        
[85] "AngleTimeBodyGyroscopeJerkMeanGravityMean"                    
[86] "AngleXGravityMean"                                            
[87] "AngleYGravityMean"                                            
[88] "AngleZGravityMean" 
