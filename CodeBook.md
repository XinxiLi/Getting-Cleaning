CodeBook
================
me
5/8/2022

# Data description

The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain
signals (prefix ‘t’ to denote time) were captured at a constant rate of
50 Hz. Then they were filtered using a median filter and a 3rd order low
pass Butterworth filter with a corner frequency of 20 Hz to remove
noise. Similarly, the acceleration signal was then separated into body
and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)
using another low pass Butterworth filter with a corner frequency of 0.3
Hz.

Subsequently, the body linear acceleration and angular velocity were
derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and
tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional
signals were calculated using the Euclidean norm (tBodyAccMag,
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these
signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the ‘f’ to
indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for
each pattern:  
‘-XYZ’ is used to denote 3-axial signals in the X, Y and Z directions.

# Variable description

## subject_id:

Character type. The id number of the subject, ranging from 1 to 30 \##
activity_id: Character type. The activity name, takes values of one of
walking, walking_upstairs, walking_downstairs, \## sitting, standing,
laying

## Measurment variables below all take values between 0 and 1:

### tBodyAcc-XYZ

### tGravityAcc-XYZ

### tBodyAccJerk-XYZ

### tBodyGyro-XYZ

### tBodyGyroJerk-XYZ

### tBodyAccMag

### tGravityAccMag

### tBodyAccJerkMag

### tBodyGyroMag

### tBodyGyroJerkMag

### fBodyAcc-XYZ

### fBodyAccJerk-XYZ

### fBodyGyro-XYZ

### fBodyAccMag

### fBodyAccJerkMag

### fBodyGyroMag

### fBodyGyroJerkMag

## Each of measurements above are all estimated from:

### mean(): Mean value

### std(): Standard deviation

# Transformations

1.  Merges the training and the test sets to create one data set.

2.  Extracts only the measurements on the mean and standard deviation
    for each measurement.

3.  Uses descriptive activity names to name the activities in the data
    set

4 .Appropriately labels the data set with descriptive variable names.

5.  From the data set in step 4, creates a second, independent tidy data
    set with the average of each variable for each activity and each
    subject.
