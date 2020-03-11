# Codebook for the tidy dataset


The data set described in this code book is contained in the "tidy_data.txt" file. 

- Number of observations: 180
- Number of variables: 81
 
 
### List of variables
- "subject"
- "activity"
- "TimeBodyAccelerometer-mean-X"
- "TimeBodyAccelerometer-mean-Y"
- "TimeBodyAccelerometer-mean-Z"
- "TimeBodyAccelerometer-std-X"
- "TimeBodyAccelerometer-std-Y"
- "TimeBodyAccelerometer-std-Z"
- "TimeGravityAccelerometer-mean-X"
- "TimeGravityAccelerometer-mean-Y"
- "TimeGravityAccelerometer-mean-Z"
- "TimeGravityAccelerometer-std-X"
- "TimeGravityAccelerometer-std-Y"
- "TimeGravityAccelerometer-std-Z"
- "TimeBodyAccelerometerJerk-mean-X"
- "TimeBodyAccelerometerJerk-mean-Y"
- "TimeBodyAccelerometerJerk-mean-Z"
- "TimeBodyAccelerometerJerk-std-X"
- "TimeBodyAccelerometerJerk-std-Y"
- "TimeBodyAccelerometerJerk-std-Z"
- "TimeBodyGyroscope-mean-X"
- "TimeBodyGyroscope-mean-Y"
- "TimeBodyGyroscope-mean-Z"
- "TimeBodyGyroscope-std-X"
- "TimeBodyGyroscope-std-Y"
- "TimeBodyGyroscope-std-Z"
- "TimeBodyGyroscopeJerk-mean-X"
- "TimeBodyGyroscopeJerk-mean-Y"
- "TimeBodyGyroscopeJerk-mean-Z"
- "TimeBodyGyroscopeJerk-std-X"
- "TimeBodyGyroscopeJerk-std-Y"
- "TimeBodyGyroscopeJerk-std-Z"
- "TimeBodyAccelerometerMagnitudenitude-mean"
- "TimeBodyAccelerometerMagnitudenitude-std"
- "TimeGravityAccelerometerMagnitudenitude-mean"
- "TimeGravityAccelerometerMagnitudenitude-std"
- "TimeBodyAccelerometerJerkMagnitudenitude-mean"
- "TimeBodyAccelerometerJerkMagnitudenitude-std"
- "TimeBodyGyroscopeMagnitudenitude-mean"
- "TimeBodyGyroscopeMagnitudenitude-std"
- "TimeBodyGyroscopeJerkMagnitudenitude-mean"
- "TimeBodyGyroscopeJerkMagnitudenitude-std"
- "FreqBodyAccelerometer-mean-X"
- "FreqBodyAccelerometer-mean-Y"
- "FreqBodyAccelerometer-mean-Z"
- "FreqBodyAccelerometer-std-X"
- "FreqBodyAccelerometer-std-Y"
- "FreqBodyAccelerometer-std-Z"
- "FreqBodyAccelerometer-meanFreq-X"
- "FreqBodyAccelerometer-meanFreq-Y"
- "FreqBodyAccelerometer-meanFreq-Z"
- "FreqBodyAccelerometerJerk-mean-X"
- "FreqBodyAccelerometerJerk-mean-Y"
- "FreqBodyAccelerometerJerk-mean-Z"
- "FreqBodyAccelerometerJerk-std-X"
- "FreqBodyAccelerometerJerk-std-Y"
- "FreqBodyAccelerometerJerk-std-Z"
- "FreqBodyAccelerometerJerk-meanFreq-X"
- "FreqBodyAccelerometerJerk-meanFreq-Y"
- "FreqBodyAccelerometerJerk-meanFreq-Z"
- "FreqBodyGyroscope-mean-X"
- "FreqBodyGyroscope-mean-Y"
- "FreqBodyGyroscope-mean-Z"
- "FreqBodyGyroscope-std-X"
- "FreqBodyGyroscope-std-Y"
- "FreqBodyGyroscope-std-Z"
- "FreqBodyGyroscope-meanFreq-X"
- "FreqBodyGyroscope-meanFreq-Y"
- "FreqBodyGyroscope-meanFreq-Z"
- "FreqBodyAccelerometerMagnitudenitude-mean"
- "FreqBodyAccelerometerMagnitudenitude-std"
- "FreqBodyAccelerometerMagnitudenitude-meanFreq"
- "FreqBodyAccelerometerJerkMagnitudenitude-mean"
- "FreqBodyAccelerometerJerkMagnitudenitude-std"
- "FreqBodyAccelerometerJerkMagnitudenitude-meanFreq"
- "FreqBodyGyroscopeMagnitudenitude-mean"
- "FreqBodyGyroscopeMagnitudenitude-std"
- "FreqBodyGyroscopeMagnitudenitude-meanFreq"
- "FreqBodyGyroscopeJerkMagnitudenitude-mean"
- "FreqBodyGyroscopeJerkMagnitudenitude-std"
- "FreqBodyGyroscopeJerkMagnitudenitude-meanFreq"

### Description of variables

- "subject": identifies the subjects, is of class "integer", and lies in the range 1-30.
- "activity": identifies the activities, is of class "factor", and takes the following values:
   	- `WALKING`: subject was walking
	- `WALKING_UPSTAIRS`: subject was walking upstairs
	- `WALKING_DOWNSTAIRS`: subject was walking downstairs
	- `SITTING`: subject was sitting
	- `STANDING`: subject was standing
	- `LAYING`: subject was laying
	

The rest of the variables are numeric and bounded within [-1,1]. 
The units used for the accelerations (total and body) are 'g's (gravity of earth: 9.80665 m/s^2),
and the gyroscope units are rad/s. 

A more detailed description follows (as included in the source
data, adapted to the current data set).

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAccelerometer-XYZ and TimeGyroscope-XYZ. These time domain signals (prefix 'Time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAccelerometer-XYZ and TimeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerometerJerk-XYZ and TimeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerometerMagnitude, TimeGravityAccelerometerMagnitude, TimeBodyAccelerometerJerkMagnitude, TimeBodyGyroscopeMagnitudenitude, TimeBodyGyroscopeJerkMagnitudenitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FreqBodyAccelerometer-XYZ, FreqBodyAccelerometerJerk-XYZ, FreqBodyGyroscope-XYZ, FreqBodyAccelerometerJerkMagnitude, FreqBodyGyroscopeMagnitude, FreqBodyGyroscopeJerkMagnitude. (Note the 'Freq' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- TimeBodyAccelerometer-XYZ
- TimeGravityAccelerometer-XYZ
- TimeBodyAccelerometerJerk-XYZ
- TimeBodyGyroscope-XYZ
- TimeBodyGyroscopeJerk-XYZ
- TimeBodyAccelerometerMagnitude
- TimeGravityAccelerometerMagnitude
- TimeBodyAccelerometerJerkMagnitude
- TimeBodyGyroscopeMagnitudenitude
- TimeBodyGyroscopeJerkMagnitudenitude
- FreqBodyAccelerometer-XYZ
- FreqBodyAccelerometerJerk-XYZ
- FreqBodyGyroscope-XYZ
- FreqBodyAccelerometerMagnitude
- FreqBodyAccelerometerJerkMagnitude
- FreqBodyGyroscopeMagnitude
- FreqBodyGyroscopeJerkMagnitude

The set of variables that were estimated from these signals are: 

- mean: Mean value
- std: Standard deviation
- meanFreq: Weighted average of the frequency components to obtain a mean frequency


The analysis applied to the source data to obtain the data set descibed here is included in the README file.
