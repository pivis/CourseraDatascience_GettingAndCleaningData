# CodeBook for the Getting and Cleaning Data Course Project

This CodeBook is intended to provide description for the variables in the tidy data set created in this course project.

The initial data is taken from [Human Activity Recognition Using Smartphones Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Human Activity Recognition Using Smartphones Dataset description

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The variables selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

## Processed Dataset for the Course Project

For the purpose of Coursera Course project only mean and standard deviation variables (calculated on a sliding window of 128 readings in 2.56 second) are left in the final dataset. Train and test sets were merged into one dataset. Also activity labels and subject identifiers were added to the dataset as columns.

A new independent dataset was generated by averaging of each variable for each activity and each subject and saved in 'UCI_HAR_tidy_averaged_dataset.txt' text file.

Here is a full list of variables in the tidy datasets:

1. **TimeDomainBodyAccelerometerMean_X**                             
2. **TimeDomainBodyAccelerometerMean_Y**                             
3. **TimeDomainBodyAccelerometerMean_Z**                             
4. **TimeDomainGravityAccelerometerMean_X**                          
5. **TimeDomainGravityAccelerometerMean_Y**                          
6. **TimeDomainGravityAccelerometerMean_Z**                          
7. **TimeDomainBodyAccelerometerJerkMean_X**                         
8. **TimeDomainBodyAccelerometerJerkMean_Y**                         
9. **TimeDomainBodyAccelerometerJerkMean_Z**                         
10. **TimeDomainBodyGyroscopeMean_X**                                 
11. **TimeDomainBodyGyroscopeMean_Y**                                 
12. **TimeDomainBodyGyroscopeMean_Z**                                 
13. **TimeDomainBodyGyroscopeJerkMean_X**                             
14. **TimeDomainBodyGyroscopeJerkMean_Y**                             
15. **TimeDomainBodyGyroscopeJerkMean_Z**                             
16. **TimeDomainBodyAccelerometerMagnitudeMean**                      
17. **TimeDomainGravityAccelerometerMagnitudeMean**                   
18. **TimeDomainBodyAccelerometerJerkMagnitudeMean**                  
19. **TimeDomainBodyGyroscopeMagnitudeMean**                          
20. **TimeDomainBodyGyroscopeJerkMagnitudeMean**                      
21. **FrequencyDomainBodyAccelerometerMean_X**                        
22. **FrequencyDomainBodyAccelerometerMean_Y**                        
23. **FrequencyDomainBodyAccelerometerMean_Z**                        
24. **FrequencyDomainBodyAccelerometerJerkMean_X**                    
25. **FrequencyDomainBodyAccelerometerJerkMean_Y**                    
26. **FrequencyDomainBodyAccelerometerJerkMean_Z**                    
27. **FrequencyDomainBodyGyroscopeMean_X**                            
28. **FrequencyDomainBodyGyroscopeMean_Y**                            
29. **FrequencyDomainBodyGyroscopeMean_Z**                            
30. **FrequencyDomainBodyAccelerometerMagnitudeMean**                 
31. **FrequencyDomainBodyAccelerometerJerkMagnitudeMean**             
32. **FrequencyDomainBodyGyroscopeMagnitudeMean**                     
33. **FrequencyDomainBodyGyroscopeJerkMagnitudeMean**                 
34. **TimeDomainBodyAccelerometerStandardDeviation_X**                
35. **TimeDomainBodyAccelerometerStandardDeviation_Y**                
36. **TimeDomainBodyAccelerometerStandardDeviation_Z**                
37. **TimeDomainGravityAccelerometerStandardDeviation_X**             
38. **TimeDomainGravityAccelerometerStandardDeviation_Y**             
39. **TimeDomainGravityAccelerometerStandardDeviation_Z**             
40. **TimeDomainBodyAccelerometerJerkStandardDeviation_X**            
41. **TimeDomainBodyAccelerometerJerkStandardDeviation_Y**            
42. **TimeDomainBodyAccelerometerJerkStandardDeviation_Z**            
43. **TimeDomainBodyGyroscopeStandardDeviation_X**                    
44. **TimeDomainBodyGyroscopeStandardDeviation_Y**                    
45. **TimeDomainBodyGyroscopeStandardDeviation_Z**                    
46. **TimeDomainBodyGyroscopeJerkStandardDeviation_X**                
47. **TimeDomainBodyGyroscopeJerkStandardDeviation_Y**                
48. **TimeDomainBodyGyroscopeJerkStandardDeviation_Z**                
49. **TimeDomainBodyAccelerometerMagnitudeStandardDeviation**         
50. **TimeDomainGravityAccelerometerMagnitudeStandardDeviation**      
51. **TimeDomainBodyAccelerometerJerkMagnitudeStandardDeviation**     
52. **TimeDomainBodyGyroscopeMagnitudeStandardDeviation**             
53. **TimeDomainBodyGyroscopeJerkMagnitudeStandardDeviation**         
54. **FrequencyDomainBodyAccelerometerStandardDeviation_X**           
55. **FrequencyDomainBodyAccelerometerStandardDeviation_Y**           
56. **FrequencyDomainBodyAccelerometerStandardDeviation_Z**           
57. **FrequencyDomainBodyAccelerometerJerkStandardDeviation_X**       
58. **FrequencyDomainBodyAccelerometerJerkStandardDeviation_Y**       
59. **FrequencyDomainBodyAccelerometerJerkStandardDeviation_Z**       
60. **FrequencyDomainBodyGyroscopeStandardDeviation_X**               
61. **FrequencyDomainBodyGyroscopeStandardDeviation_Y**               
62. **FrequencyDomainBodyGyroscopeStandardDeviation_Z**               
63. **FrequencyDomainBodyAccelerometerMagnitudeStandardDeviation**    
64. **FrequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation**
65. **FrequencyDomainBodyGyroscopeMagnitudeStandardDeviation**        
66. **FrequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation**    
67. **angle_TimeDomainBodyAccelerometerMean_gravity**                 
68. **angle_TimeDomainBodyAccelerometerJerkMean_gravityMean**         
69. **angle_TimeDomainBodyGyroscopeMean_gravityMean**                 
70. **angle_TimeDomainBodyGyroscopeJerkMean_gravityMean**             
71. **angle_X_gravityMean**                                           
72. **angle_Y_gravityMean**                                           
73. **angle_Z_gravityMean**                                           
74. **subject** - a unique identifier of a person participated in the experiment
75. **label** - activity label (one of *WALKING*, *WALKING_UPSTAIRS*, *WALKING_DOWNSTAIRS*, *SITTING*, *STANDING*, *LAYING*)

## Description of variables

Variable with names started with **TimeDomain** have Mean/Standard Deviation calculated over 128 reading in 2.56 sliding window. Variables which start with **FrequencyDomain** have Mean/Standard Deviation calculated over Fast Fourier Transformed version of these readings.

Variables for Accelerometer reading values related to Body acceleration have **BodyAccelerometer** part in them.

Variables for Gyroscope reading related to Body (which are passing the filter) have **BodyGyroscope** part in them.

Ending part of **_X**, **_Y** or **_Z** is related to the corresponding axis readings. If variable name has **Magnitude** instead it means the variable is calculated for the vector magnitude values.

The body linear acceleration and angular velocity were derived in time to obtain variables with **Jerk** part in their names.

Variables starting with **angle** are representing angles between two vectors specified in their names.

## Measurement units 

The initial data was normalized and bounded between -1 and 1 so all the variables doesn't have measurement units (including **angle** features).
