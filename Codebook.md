## Purpose
The purpose of this project is to prepare tidy data that can be used for data analysis in the future.

## Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 



## Summary of Original Data
### The UCI HAR dataset includes the following files:
* README.txt
* features_info.txt: Shows information about the variables used on the feature vector.
* features.txt: List of all features.
* activity_labels.txt: Links the class labels with their activity name.
* train/X_train.txt: Training set.
* train/y_train.txt: Training labels.
* test/X_test.txt: Test set.
* test/y_test.txt: Test labels.

### The following files are available for the train and test data. Their descriptions are equivalent. 
* train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* train/Inertial Signals/total_acc_x_train.txt: The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.
* train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.
* train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.   

## Transformations
1. If the directory exists, then set working directory, if directory does not exists, then create directory.
2. If the UCI dataset zip file does not exists in directory, then download zip file.
3. Set working directory to UCI HAR Dataset folder.
4. Create vector with the features.txt information
5. Set working directory to test folder
6. Input test information into memory
7. Add activity and subject information to test information.
8. Set working directory to train folder
9. Input train information into memory
10. Add activity and subject information to train information.
11. Combine test and train information into one data set.
12. Extract column names with mean or std in column name into new vector.  Also, add the subject and activity columns in list.
13. Subset data with column names created in step #12
14. Remove -() from column names
15. Arrange data by subject number and activity name.
16. Group data by subject number and activity name.
17. Summarize by mean for each subject number and activity name.
18. Save file to masterData.txt file

## Resulting data set in masterData.txt file

--------------------------------------------------
Column Name | Data type | Full name	| Explanation
--------------------------------------------------
1. subject | numeric | | 1-30. The number associated with volunteer subject
2. activity	| character	| | activity performed by subject WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
3. tBodyAccmeanX | numeric | Time Body Accelerometer Mean X	 |
4. tBodyAccmeanY	| numeric	| Time Body Accelerometer Mean Y	|
5. tBodyAccmeanZ	| numeric	| Time Body Accelerometer Mean Z	|
6. tBodyAccstdX	| numeric	| Time Body Accelerometer Std Dev X	|
7. tBodyAccstdY	| numeric	| Time Body Accelerometer Std Dev Y	|
8. tBodyAccstdZ	| numeric	| Time Body Accelerometer Std Dev Z	|
9. tGravityAccmeanX	| numeric	| Time Gravity Accelerometer Mean X	|
10. tGravityAccmeanY	| numeric	| Time Gravity Accelerometer Mean Y	|
11. tGravityAccmeanZ	| numeric	| Time Gravity Accelerometer Mean Z	|
12. tGravityAccstdX	| numeric	| Time Gravity Accelerometer Std Dev X	|
13. tGravityAccstdY	| numeric	| Time Gravity Accelerometer Std Dev Y	|
14. tGravityAccstdZ	| numeric	| Time Gravity Accelerometer Std Dev Z	|
15. tBodyAccJerkmeanX	| numeric	| Time Body Accelerometer Jerk Mean X	|
16. tBodyAccJerkmeanY	| numeric	| Time Body Accelerometer Jerk Mean Y	|
17. tBodyAccJerkmeanZ	| numeric	| Time Body Accelerometer Jerk Mean Z	|
18. tBodyAccJerkstdX	| numeric	| Time Body Accelerometer Jerk Std Dev X |	
19. tBodyAccJerkstdY	| numeric	| Time Body Accelerometer Jerk Std Dev Y	|
20. tBodyAccJerkstdZ	| numeric	| Time Body Accelerometer Jerk Std Dev Z	|
21. tBodyGyromeanX	| numeric	| Time Body Gyroscope Mean X	|
22. tBodyGyromeanY	| numeric	| Time Body Gyroscope Mean Y	|
23. tBodyGyromeanZ	| numeric	| Time Body Gyroscope Mean Z	|
24. tBodyGyrostdX	 | numeric	| Time Body Gyroscope Std Dev X	|
25. tBodyGyrostdY	| numeric |	Time Body Gyroscope Std Dev Y	|
26. tBodyGyrostdZ	| numeric	| Time Body Gyroscope Std Dev Z	|
27. tBodyGyroJerkmeanX	| numeric	| Time Body Gyroscope Jerk Mean X	|
28. tBodyGyroJerkmeanY	| numeric	| Time Body Gyroscope Jerk Mean Y	|
29. tBodyGyroJerkmeanZ	| numeric	| Time Body Gyroscope Jerk Mean Z	|
30. tBodyGyroJerkstdX	| numeric	| Time Body Gyroscope Jerk Std Dev X	|
31. tBodyGyroJerkstdY	| numeric	| Time Body Gyroscope Jerk Std Dev Y	|
32. tBodyGyroJerkstdZ	| numeric	| Time Body Gyroscope Jerk Std Dev Z	|
33. tBodyAccMagmean	| numeric	| Time Body Accelerometer Mag Mean	|
34. tBodyAccMagstd	| numeric	| Time Body Accelerometer Mag Std Dev	|
35. tGravityAccMagmean	| numeric	| Time Gravity Accelerometer Mag Mean	|
36. tGravityAccMagstd	| numeric	| Time Gravity Accelerometer Mag Std Dev |	
37. tBodyAccJerkMagmean	| numeric	| Time Body Accelerometer Jerk Mag Mean	|
38. tBodyAccJerkMagstd	| numeric	| Time Body Accelerometer Jerk Mag Std Dev	|
39. tBodyGyroMagmean	| numeric	| Time Body Gyroscope Mag Mean |	
40. tBodyGyroMagstd	| numeric	| Time Body Gyroscope Mag St Dev	|
41. tBodyGyroJerkMagmean	| numeric	| Time Body Gyroscope Jerk Mag Mean	|
42. tBodyGyroJerkMagstd	| numeric	| Time Body Gyroscope Jerk Mag Std Dev	|
43. fBodyAccmeanX	| numeric	| Fast Fourier Body Accelerometer Mean X	|
44. fBodyAccmeanY	| numeric	| Fast Fourier Body Accelerometer Mean Y	|
45. fBodyAccmeanZ	| numeric	| Fast Fourier Body Accelerometer Mean Z	|
46. fBodyAccstdX	| numeric	| Fast Fourier Body Accelerometer Std Dev X	|
47. fBodyAccstdY	| numeric	| Fast Fourier Body Accelerometer Std Dev Y	|
48. fBodyAccstdZ	| numeric	| Fast Fourier Body Accelerometer Std Dev Z	|
49. fBodyAccmeanFreqX	| numeric	| Fast Fourier Body Accelerometer Mean Frequency X	|
50. fBodyAccmeanFreqY	| numeric	| Fast Fourier Body Accelerometer Mean Frequency Y |	
51. fBodyAccmeanFreqZ	| numeric	| Fast Fourier Body Accelerometer Mean Frequency Z |
52. fBodyAccJerkmeanX	| numeric	| Fast Fourier Body Accelerometer Jerk Mean X	|
53. fBodyAccJerkmeanY	| numeric	| Fast Fourier Body Accelerometer Jerk Mean Y	|
54. fBodyAccJerkmeanZ	| numeric	| Fast Fourier Body Accelerometer Jerk Mean Z	|
55. fBodyAccJerkstdX	| numeric	| Fast Fourier Body Accelerometer Jerk Std Dev X |	
56. fBodyAccJerkstdY	| numeric	| Fast Fourier Body Accelerometer Jerk Std Dev Y |	
57. fBodyAccJerkstdZ	| numeric	| Fast Fourier Body Accelerometer Jerk Std Dev Z	|
58. fBodyAccJerkmeanFreqX	| numeric	| Fast Fourier Body Accelerometer Mean Frequency X |	
59. fBodyAccJerkmeanFreqY	| numeric	| Fast Fourier Body Accelerometer Mean Frequency Y |
60. fBodyAccJerkmeanFreqZ	| numeric	| Fast Fourier Body Accelerometer Mean Frequency Z |
61. fBodyGyromeanX	| numeric	| Fast Fourier Body Gyroscope Mean X	|
62. fBodyGyromeanY	| numeric	| Fast Fourier Body Gyroscope Mean Y	|
63. fBodyGyromeanZ	| numeric	| Fast Fourier Body Gyroscope Mean Z	|
64. fBodyGyrostdX	| numeric	| Fast Fourier Body Gyroscope Std Dev X	|
65. fBodyGyrostdY	| numeric	| Fast Fourier Body Gyroscope Std Dev Y	|
66. fBodyGyrostdZ	| numeric	| Fast Fourier Body Gyroscope Std Dev Z	|
67. fBodyGyromeanFreqX	| numeric	| Fast Fourier Body Gyroscope Mean Frequency X	|
68. fBodyGyromeanFreqY	| numeric	| Fast Fourier Body Gyroscope Mean Frequency Y	|
69. fBodyGyromeanFreqZ	| numeric	| Fast Fourier Body Gyroscope Mean Frequency Z	|
70. fBodyAccMagmean	| numeric	| Fast Fourier Body Accelerometer Mean	|
71. fBodyAccMagstd	| numeric	| Fast Fourier Body Accelerometer Std Dev	|
72. fBodyAccMagmeanFreq	| numeric	| Fast Fourier Body Accelerometer Mag Mean Frequency	|
73. fBodyAccJerkMagmean	| numeric	| Fast Fourier Body Accelerometer Jerk Mag Mean	| corrected fBodyBody in column name
74. fBodyAccJerkMagstd	| numeric	| Fast Fourier Body Accelerometer Jerk Mag Std Dev	| corrected fBodyBody in column name
75. fBodyAccJerkMagmeanFreq	numeric	Fast Fourier Body Accelerometer Jerk Mag Mean Frequency	| corrected fBodyBody in column name
76. fBodyGyroMagmean	| numeric	| Fast Fourier Body Gyroscope Mag Mean	| corrected fBodyBody in column name
77. fBodyGyroMagstd	| numeric	| Fast Fourier Body Gyroscope Mag Std Dev	| corrected fBodyBody in column name
78. fBodyGyroMagmeanFreq	| numeric	| Fast Fourier Body Gyroscope Mag Mean Frequency	| corrected fBodyBody in column name
79. fBodyGyroJerkMagmean	| numeric	| Fast Fourier Body Gyroscope Jerk Mag Mean	| corrected fBodyBody in column name
80. fBodyGyroJerkMagstd	| numeric	| Fast Fourier Body Gyroscope Jerk Mag Std Dev	| corrected fBodyBody in column name
81. fBodyGyroJerkMagmeanFreq	| numeric	| Fast Fourier Body Gyroscope Mag Mean Frequency	| corrected fBodyBody in column name
82. angletBodyAccMeangravity	| numeric	| angle 	
83. angletBodyAccJerkMeangravityMean	| numeric	| angle	
84. angletBodyGyroMeangravityMean	| numeric	| angle	
85. angletBodyGyroJerkMeangravityMean	| numeric	| angle	
86. angleXgravityMean	| numeric	| angle	
87. angleYgravityMean	| numeric	| angle	
88. angleZgravityMean	| numeric	| angle	
