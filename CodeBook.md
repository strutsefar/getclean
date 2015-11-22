####Raw data description (copied from source):

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.  
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.  
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.  
The experiments have been video-recorded to label the data manually.  
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).  
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity.  
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used.  
From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.  
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.  
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ).  
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).  

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.  
(Note the 'f' to indicate frequency domain signals).  

---------

####Processed data:
The train and test samples have been merged.  
Furthermore the columns containing feature Means and feature standard deviations have been extracted.  
Two columns were added: one column containing the activity performed. (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) and one column indicating which of the individuals (1-30) is observed.  
Lastly the mean for all variables for each individual for each activity is calculated.


####Naming conventions:  

Apart from the two first columns, all columns contains observation data obtained from the device worn by the individual.  
Each of these variable start with either a "t" or an "f". A "t" indicates that the featureis a time-feature. An "f" indicates that this is a frequency-feature (a Fast Fourier Transform was applied).   
Furthermore a feature could be an observation from the accelerometer or the gyroscope. This is indicated in the variable names containing one of these two terms.  
The variables containing the word jerk indicate that that "body linear acceleration and angular velocity were derived in time to obtain [these signals]".  
The variable names will contain either "mean" or "std" meaning that the observation is either a mean or a standard deviation. Note: The mean of these variables are then calculated to obtain either a mean of the mean or a mean of the standard deviation.  
Lastly some variables contain information on a measurement in the three dimentional space, these variables contain the letters "x","y" or "z".  

####Units:  

The units for variables measured by the accelerometer is G's (the gravity of earth) specifically 9.80665m/second^2.  
The units for variables measured by the gyroscope is radians pr. second.  
Also note the transformations described in the previous section.  
All raw features was normalized and bounded between  [-1,1], so this is be true for the variables in the processes data as well.  



####Below is the full list of variable names in the tidy dataset.  


"activity"
 "individual"
 "tbodyaccelerometer-mean-x"
 "tbodyaccelerometer-mean-y"     
 "tbodyaccelerometer-mean-z"
 "tbodyaccelerometer-std-x"
 "tbodyaccelerometer-std-y"
 "tbodyaccelerometer-std-z" 
"tgravityaccelerometer-mean-x"
"tgravityaccelerometer-mean-y"   "tgravityaccelerometer-mean-z"   "tgravityaccelerometer-std-x"   
"tgravityaccelerometer-std-y"    "tgravityaccelerometer-std-z"    "tbodyaccelerometerjerk-mean-x"  "tbodyaccelerometerjerk-mean-y"  
"tbodyaccelerometerjerk-mean-z"  "tbodyaccelerometerjerk-std-x"   "tbodyaccelerometerjerk-std-y"   "tbodyaccelerometerjerk-std-z"  
"tbodygyroscope-mean-x"          "tbodygyroscope-mean-y"          "tbodygyroscope-mean-z"          "tbodygyroscope-std-x"          
"tbodygyroscope-std-y"           "tbodygyroscope-std-z"           "tbodygyroscopejerk-mean-x"      "tbodygyroscopejerk-mean-y"     
"tbodygyroscopejerk-mean-z"      "tbodygyroscopejerk-std-x"       "tbodygyroscopejerk-std-y"       "tbodygyroscopejerk-std-z"      
"tbodyaccelerometermag-mean"     "tbodyaccelerometermag-std"      "tgravityaccelerometermag-mean"  "tgravityaccelerometermag-std"  
"tbodyaccelerometerjerkmag-mean" "tbodyaccelerometerjerkmag-std"  "tbodygyroscopemag-mean"         "tbodygyroscopemag-std"         
"tbodygyroscopejerkmag-mean"     "tbodygyroscopejerkmag-std"      "fbodyaccelerometer-mean-x"      "fbodyaccelerometer-mean-y"     
"fbodyaccelerometer-mean-z"      "fbodyaccelerometer-std-x"       "fbodyaccelerometer-std-y"       "fbodyaccelerometer-std-z"      
"fbodyaccelerometerjerk-mean-x"  "fbodyaccelerometerjerk-mean-y"  "fbodyaccelerometerjerk-mean-z"  "fbodyaccelerometerjerk-std-x"  
"fbodyaccelerometerjerk-std-y"   "fbodyaccelerometerjerk-std-z"   "fbodygyroscope-mean-x"          "fbodygyroscope-mean-y"         
"fbodygyroscope-mean-z"          "fbodygyroscope-std-x"           "fbodygyroscope-std-y"           "fbodygyroscope-std-z"          
"fbodyaccelerometermag-mean"     "fbodyaccelerometermag-std"      "fbodyaccelerometerjerkmag-mean" "fbodyaccelerometerjerkmag-std" 
"fbodygyroscopemag-mean"         "fbodygyroscopemag-std"          "fbodygyroscopejerkmag-mean"     "fbodygyroscopejerkmag-std"          
"fbodygyro-mean-z"               "fbodygyro-std-x"                "fbodygyro-std-y"                "fbodygyro-std-z"                
"fbodyaccelerometermag-mean"     "fbodyaccelerometermag-std"      "fbodyaccelerometerjerkmag-mean" "fbodyaccelerometerjerkmag-std"  
"fbodygyromag-mean"              "fbodygyromag-std"               "fbodygyrojerkmag-mean"          "fbodygyrojerkmag-std"   
 