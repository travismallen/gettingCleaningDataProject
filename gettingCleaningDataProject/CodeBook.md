# meanData.txt Code Book

## About the Source Data

The **meanData.txt** dataset is based on variables in the source data that were means and standard deviations. The source documentation refers to variables as *features*. Below is a description of the *feature* per the source documentation. Please note: All features not means or standard deviations were not used.

### Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

## Study Design

The data was sourced from the[UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
### Data Transformations
The following transformations were applied to the source data:
- Special characters were removed from the variable header data
- Activity descriptions were added to both the test and training datasets
- Variable headers were added to both the test and training datasets
- The test and training datasets were merged
- Mean and standard deviation variables were selected to create a new activity dataset
- The mean and standard deviation dataset was used to create the final data set containing the mean of all variables per activity

## Code Book
**meanData.txt** contains the following variables:
activity: The activity description
mean.of.tBodyAcc.meanFN.X: The mean of tBodyAcc - mean() -X
mean.of.tBodyAcc.meanFN.Y: The mean of tBodyAcc - mean() -Y
mean.of.tBodyAcc.meanFN.Z: The mean of tBodyAcc - mean() -Z
mean.of.tGravityAcc.meanFN.X: The mean of tGravityAcc - mean() -X
mean.of.tGravityAcc.meanFN.Y: The mean of tGravityAcc - mean() -Y
mean.of.tGravityAcc.meanFN.Z: The mean of tGravityAcc - mean() -Z
mean.of.tBodyAccJerk.meanFN.X: The mean of tBodyAccJerk - mean() -X
mean.of.tBodyAccJerk.meanFN.Y: The mean of tBodyAccJerk - mean() -Y
mean.of.tBodyAccJerk.meanFN.Z: The mean of tBodyAccJerk - mean() -Z
mean.of.tBodyGyro.meanFN.X: The mean of tBodyGyro - mean() -X
mean.of.tBodyGyro.meanFN.Y: The mean of tBodyGyro - mean() -Y
mean.of.tBodyGyro.meanFN.Z: The mean of tBodyGyro - mean() -Z
mean.of.tBodyGyroJerk.meanFN.X: The mean of tBodyGyroJerk - mean() -X
mean.of.tBodyGyroJerk.meanFN.Y: The mean of tBodyGyroJerk - mean() -Y
mean.of.tBodyGyroJerk.meanFN.Z: The mean of tBodyGyroJerk - mean() -Z
mean.of.tBodyAccMag.meanFN: The mean of tBodyAccMag - mean()
mean.of.tGravityAccMag.meanFN: The mean of tGravityAccMag - mean()
mean.of.tBodyAccJerkMag.meanFN: The mean of tBodyAccJerkMag - mean()
mean.of.tBodyGyroMag.meanFN: The mean of tBodyGyroMag - mean()
mean.of.tBodyGyroJerkMag.meanFN: The mean of tBodyGyroJerkMag - mean()
mean.of.fBodyAcc.meanFN.X: The mean of fBodyAcc - mean() -X
mean.of.fBodyAcc.meanFN.Y: The mean of fBodyAcc - mean() -Y
mean.of.fBodyAcc.meanFN.Z: The mean of fBodyAcc - mean() -Z
mean.of.fBodyAccJerk.meanFN.X: The mean of fBodyAccJerk - mean() -X
mean.of.fBodyAccJerk.meanFN.Y: The mean of fBodyAccJerk - mean() -Y
mean.of.fBodyAccJerk.meanFN.Z: The mean of fBodyAccJerk - mean() -Z
mean.of.fBodyGyro.meanFN.X: The mean of fBodyGyro - mean() -X
mean.of.fBodyGyro.meanFN.Y: The mean of fBodyGyro - mean() -Y
mean.of.fBodyGyro.meanFN.Z: The mean of fBodyGyro - mean() -Z
mean.of.fBodyAccMag.meanFN: The mean of fBodyAccMag - mean()
mean.of.fBodyBodyAccJerkMag.meanFN: The mean of fBodyBodyAccJerkMag - mean()
mean.of.fBodyBodyGyroMag.meanFN: The mean of fBodyBodyGyroMag - mean()
mean.of.fBodyBodyGyroJerkMag.meanFN: The mean of fBodyBodyGyroJerkMag - mean()
mean.of.tBodyAcc.stdFN.X: The mean of tBodyAcc - std() -X
mean.of.tBodyAcc.stdFN.Y: The mean of tBodyAcc - std() -Y
mean.of.tBodyAcc.stdFN.Z: The mean of tBodyAcc - std() -Z
mean.of.tGravityAcc.stdFN.X: The mean of tGravityAcc - std() -X
mean.of.tGravityAcc.stdFN.Y: The mean of tGravityAcc - std() -Y
mean.of.tGravityAcc.stdFN.Z: The mean of tGravityAcc - std() -Z
mean.of.tBodyAccJerk.stdFN.X: The mean of tBodyAccJerk - std() -X
mean.of.tBodyAccJerk.stdFN.Y: The mean of tBodyAccJerk - std() -Y
mean.of.tBodyAccJerk.stdFN.Z: The mean of tBodyAccJerk - std() -Z
mean.of.tBodyGyro.stdFN.X: The mean of tBodyGyro - std() -X
mean.of.tBodyGyro.stdFN.Y: The mean of tBodyGyro - std() -Y
mean.of.tBodyGyro.stdFN.Z: The mean of tBodyGyro - std() -Z
mean.of.tBodyGyroJerk.stdFN.X: The mean of tBodyGyroJerk - std() -X
mean.of.tBodyGyroJerk.stdFN.Y: The mean of tBodyGyroJerk - std() -Y
mean.of.tBodyGyroJerk.stdFN.Z: The mean of tBodyGyroJerk - std() -Z
mean.of.tBodyAccMag.stdFN: The mean of tBodyAccMag - std()
mean.of.tGravityAccMag.stdFN: The mean of tGravityAccMag - std()
mean.of.tBodyAccJerkMag.stdFN: The mean of tBodyAccJerkMag - std()
mean.of.tBodyGyroMag.stdFN: The mean of tBodyGyroMag - std()
mean.of.tBodyGyroJerkMag.stdFN: The mean of tBodyGyroJerkMag - std()
mean.of.fBodyAcc.stdFN.X: The mean of fBodyAcc - std() -X
mean.of.fBodyAcc.stdFN.Y: The mean of fBodyAcc - std() -Y
mean.of.fBodyAcc.stdFN.Z: The mean of fBodyAcc - std() -Z
mean.of.fBodyAccJerk.stdFN.X: The mean of fBodyAccJerk - std() -X
mean.of.fBodyAccJerk.stdFN.Y: The mean of fBodyAccJerk - std() -Y
mean.of.fBodyAccJerk.stdFN.Z: The mean of fBodyAccJerk - std() -Z
mean.of.fBodyGyro.stdFN.X: The mean of fBodyGyro - std() -X
mean.of.fBodyGyro.stdFN.Y: The mean of fBodyGyro - std() -Y
mean.of.fBodyGyro.stdFN.Z: The mean of fBodyGyro - std() -Z
mean.of.fBodyAccMag.stdFN: The mean of fBodyAccMag - std()
mean.of.fBodyBodyAccJerkMag.stdFN: The mean of fBodyBodyAccJerkMag - std()
mean.of.fBodyBodyGyroMag.stdFN: The mean of fBodyBodyGyroMag - std()
mean.of.fBodyBodyGyroJerkMag.stdFN: The mean of fBodyBodyGyroJerkMag - std()
