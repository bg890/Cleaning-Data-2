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
* train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.
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

### Column Name	Data type	Full name	Explanation
subject	numeric		1-30 The number associated with volunteer subject
activity	character		activity performed by subject WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIR , SITTING, STANDING, LAYING
tBodyAccmeanX	numeric	Time Body Accelerometer Mean X	
tBodyAccmeanY	numeric	Time Body Accelerometer Mean Y	
tBodyAccmeanZ	numeric	Time Body Accelerometer Mean Z	
tBodyAccstdX	numeric	Time Body Accelerometer Std Dev X	
tBodyAccstdY	numeric	Time Body Accelerometer Std Dev Y	
tBodyAccstdZ	numeric	Time Body Accelerometer Std Dev Z	
tGravityAccmeanX	numeric	Time Gravity Accelerometer Mean X	
tGravityAccmeanY	numeric	Time Gravity Accelerometer Mean Y	
tGravityAccmeanZ	numeric	Time Gravity Accelerometer Mean Z	
tGravityAccstdX	numeric	Time Gravity Accelerometer Std Dev X	
tGravityAccstdY	numeric	Time Gravity Accelerometer Std Dev Y	
tGravityAccstdZ	numeric	Time Gravity Accelerometer Std Dev Z	
tBodyAccJerkmeanX	numeric	Time Body Accelerometer Jerk Mean X	
tBodyAccJerkmeanY	numeric	Time Body Accelerometer Jerk Mean Y	
tBodyAccJerkmeanZ	numeric	Time Body Accelerometer Jerk Mean Z	
tBodyAccJerkstdX	numeric	Time Body Accelerometer Jerk Std Dev X	
tBodyAccJerkstdY	numeric	Time Body Accelerometer Jerk Std Dev Y	
tBodyAccJerkstdZ	numeric	Time Body Accelerometer Jerk Std Dev Z	
tBodyGyromeanX	numeric	Time Body Gyroscope Mean X	
tBodyGyromeanY	numeric	Time Body Gyroscope Mean Y	
tBodyGyromeanZ	numeric	Time Body Gyroscope Mean Z	
tBodyGyrostdX	numeric	Time Body Gyroscope Std Dev X	
tBodyGyrostdY	numeric	Time Body Gyroscope Std Dev Y	
tBodyGyrostdZ	numeric	Time Body Gyroscope Std Dev Z	
tBodyGyroJerkmeanX	numeric	Time Body Gyroscope Jerk Mean X	
tBodyGyroJerkmeanY	numeric	Time Body Gyroscope Jerk Mean Y	
tBodyGyroJerkmeanZ	numeric	Time Body Gyroscope Jerk Mean Z	
tBodyGyroJerkstdX	numeric	Time Body Gyroscope Jerk Std Dev X	
tBodyGyroJerkstdY	numeric	Time Body Gyroscope Jerk Std Dev Y	
tBodyGyroJerkstdZ	numeric	Time Body Gyroscope Jerk Std Dev Z	
tBodyAccMagmean	numeric	Time Body Accelerometer Mag Mean	
tBodyAccMagstd	numeric	Time Body Accelerometer Mag Std Dev	
tGravityAccMagmean	numeric	Time Gravity Accelerometer Mag Mean	
tGravityAccMagstd	numeric	Time Gravity Accelerometer Mag Std Dev	
tBodyAccJerkMagmean	numeric	Time Body Accelerometer Jerk Mag Mean	
tBodyAccJerkMagstd	numeric	Time Body Accelerometer Jerk Mag Std Dev	
tBodyGyroMagmean	numeric	Time Body Gyroscope Mag Mean	
tBodyGyroMagstd	numeric	Time Body Gyroscope Mag St Dev	
tBodyGyroJerkMagmean	numeric	Time Body Gyroscope Jerk Mag Mean	
tBodyGyroJerkMagstd	numeric	Time Body Gyroscope Jerk Mag Std Dev	
fBodyAccmeanX	numeric	Fast Fourier Body Accelerometer Mean X	
fBodyAccmeanY	numeric	Fast Fourier Body Accelerometer Mean Y	
fBodyAccmeanZ	numeric	Fast Fourier Body Accelerometer Mean Z	
fBodyAccstdX	numeric	Fast Fourier Body Accelerometer Std Dev X	
fBodyAccstdY	numeric	Fast Fourier Body Accelerometer Std Dev Y	
fBodyAccstdZ	numeric	Fast Fourier Body Accelerometer Std Dev Z	
fBodyAccmeanFreqX	numeric	Fast Fourier Body Accelerometer Mean Frequency X	
fBodyAccmeanFreqY	numeric	Fast Fourier Body Accelerometer Mean Frequency Y	
fBodyAccmeanFreqZ	numeric	Fast Fourier Body Accelerometer Mean Frequency Z	
fBodyAccJerkmeanX	numeric	Fast Fourier Body Accelerometer Jerk Mean X	
fBodyAccJerkmeanY	numeric	Fast Fourier Body Accelerometer Jerk Mean Y	
fBodyAccJerkmeanZ	numeric	Fast Fourier Body Accelerometer Jerk Mean Z	
fBodyAccJerkstdX	numeric	Fast Fourier Body Accelerometer Jerk Std Dev X	
fBodyAccJerkstdY	numeric	Fast Fourier Body Accelerometer Jerk Std Dev Y	
fBodyAccJerkstdZ	numeric	Fast Fourier Body Accelerometer Jerk Std Dev Z	
fBodyAccJerkmeanFreqX	numeric	Fast Fourier Body Accelerometer Mean Frequency X	
fBodyAccJerkmeanFreqY	numeric	Fast Fourier Body Accelerometer Mean Frequency Y	
fBodyAccJerkmeanFreqZ	numeric	Fast Fourier Body Accelerometer Mean Frequency Z	
fBodyGyromeanX	numeric	Fast Fourier Body Gyroscope Mean X	
fBodyGyromeanY	numeric	Fast Fourier Body Gyroscope Mean Y	
fBodyGyromeanZ	numeric	Fast Fourier Body Gyroscope Mean Z	
fBodyGyrostdX	numeric	Fast Fourier Body Gyroscope Std Dev X	
fBodyGyrostdY	numeric	Fast Fourier Body Gyroscope Std Dev Y	
fBodyGyrostdZ	numeric	Fast Fourier Body Gyroscope Std Dev Z	
fBodyGyromeanFreqX	numeric	Fast Fourier Body Gyroscope Mean Frequency X	
fBodyGyromeanFreqY	numeric	Fast Fourier Body Gyroscope Mean Frequency Y	
fBodyGyromeanFreqZ	numeric	Fast Fourier Body Gyroscope Mean Frequency Z	
fBodyAccMagmean	numeric	Fast Fourier Body Accelerometer Mean	
fBodyAccMagstd	numeric	Fast Fourier Body Accelerometer Std Dev	
fBodyAccMagmeanFreq	numeric	Fast Fourier Body Accelerometer Mag Mean Frequency	
fBodyAccJerkMagmean	numeric	Fast Fourier Body Accelerometer Jerk Mag Mean	corrected fBodyBody in column name
fBodyAccJerkMagstd	numeric	Fast Fourier Body Accelerometer Jerk Mag Std Dev	corrected fBodyBody in column name
fBodyAccJerkMagmeanFreq	numeric	Fast Fourier Body Accelerometer Jerk Mag Mean Frequency	corrected fBodyBody in column name
fBodyGyroMagmean	numeric	Fast Fourier Body Gyroscope Mag Mean	corrected fBodyBody in column name
fBodyGyroMagstd	numeric	Fast Fourier Body Gyroscope Mag Std Dev	corrected fBodyBody in column name
fBodyGyroMagmeanFreq	numeric	Fast Fourier Body Gyroscope Mag Mean Frequency	corrected fBodyBody in column name
fBodyGyroJerkMagmean	numeric	Fast Fourier Body Gyroscope Mag Mean	corrected fBodyBody in column name
fBodyGyroJerkMagstd	numeric	Fast Fourier Body Gyroscope Mag Std Dev	corrected fBodyBody in column name
fBodyGyroJerkMagmeanFreq	numeric	Fast Fourier Body Gyroscope Mag Mean Frequency	corrected fBodyBody in column name
angletBodyAccMeangravity	numeric	angle 	
angletBodyAccJerkMeangravityMean	numeric	angle	
angletBodyGyroMeangravityMean	numeric	angle	
angletBodyGyroJerkMeangravityMean	numeric	angle	
angleXgravityMean	numeric	angle	
angleYgravityMean	numeric	angle	
angleZgravityMean	numeric	angle	
