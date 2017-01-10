This code book is designed to accompany the UCI HAR Dataset
The repository includes a R script named run_analysis.R that is designed to download and transform the original data set.
The train and test data sets are merged into a single data frame.
The activities, features, and subjects are added to the data frame.
The tidy data set is limited to variables including mean and standard deviaiton.
Many of the variable names have been transformed from the original data set to clarify meaning.
Finally the data set has been group by the activity and subject while summarizing by the mean of each variable.

Column Names:
activities
subjects
TimeBodyAccelerator-mean()-X
TimeBodyAccelerator-mean()-Y
TimeBodyAccelerator-mean()-Z
TimeBodyAccelerator-std()-X
TimeBodyAccelerator-std()-Y
TimeBodyAccelerator-std()-Z
TimeGravityAccelerator-mean()-X
TimeGravityAccelerator-mean()-Y
TimeGravityAccelerator-mean()-Z
TimeGravityAccelerator-std()-X
TimeGravityAccelerator-std()-Y
TimeGravityAccelerator-std()-Z
TimeBodyAcceleratorJerk-mean()-X
TimeBodyAcceleratorJerk-mean()-Y
TimeBodyAcceleratorJerk-mean()-Z
TimeBodyAcceleratorJerk-std()-X
TimeBodyAcceleratorJerk-std()-Y
TimeBodyAcceleratorJerk-std()-Z
TimeBodyGyro-mean()-X
TimeBodyGyro-mean()-Y
TimeBodyGyro-mean()-Z
TimeBodyGyro-std()-X
TimeBodyGyro-std()-Y
TimeBodyGyro-std()-Z
TimeBodyGyroJerk-mean()-X
TimeBodyGyroJerk-mean()-Y
TimeBodyGyroJerk-mean()-Z
TimeBodyGyroJerk-std()-X
TimeBodyGyroJerk-std()-Y
TimeBodyGyroJerk-std()-Z
TimeBodyAcceleratorMagnitude-mean()
TimeBodyAcceleratorMagnitude-std()
TimeGravityAcceleratorMagnitude-mean()
TimeGravityAcceleratorMagnitude-std()
TimeBodyAcceleratorJerkMagnitude-mean()
TimeBodyAcceleratorJerkMagnitude-std()
TimeBodyGyroMagnitude-mean()
TimeBodyGyroMagnitude-std()
TimeBodyGyroJerkMagnitude-mean()
TimeBodyGyroJerkMagnitude-std()
FrequencyBodyAccelerator-mean()-X
FrequencyBodyAccelerator-mean()-Y
FrequencyBodyAccelerator-mean()-Z
FrequencyBodyAccelerator-std()-X
FrequencyBodyAccelerator-std()-Y
FrequencyBodyAccelerator-std()-Z
FrequencyBodyAccelerator-meanFreq()-X
FrequencyBodyAccelerator-meanFreq()-Y
FrequencyBodyAccelerator-meanFreq()-Z
FrequencyBodyAcceleratorJerk-mean()-X
FrequencyBodyAcceleratorJerk-mean()-Y
FrequencyBodyAcceleratorJerk-mean()-Z
FrequencyBodyAcceleratorJerk-std()-X
FrequencyBodyAcceleratorJerk-std()-Y
FrequencyBodyAcceleratorJerk-std()-Z
FrequencyBodyAcceleratorJerk-meanFreq()-X
FrequencyBodyAcceleratorJerk-meanFreq()-Y
FrequencyBodyAcceleratorJerk-meanFreq()-Z
FrequencyBodyGyro-mean()-X
FrequencyBodyGyro-mean()-Y
FrequencyBodyGyro-mean()-Z
FrequencyBodyGyro-std()-X
FrequencyBodyGyro-std()-Y
FrequencyBodyGyro-std()-Z
FrequencyBodyGyro-meanFreq()-X
FrequencyBodyGyro-meanFreq()-Y
FrequencyBodyGyro-meanFreq()-Z
FrequencyBodyAcceleratorMagnitude-mean()
FrequencyBodyAcceleratorMagnitude-std()
FrequencyBodyAcceleratorMagnitude-meanFreq()
FrequencyBodyBodyAcceleratorJerkMagnitude-mean()
FrequencyBodyBodyAcceleratorJerkMagnitude-std()
FrequencyBodyBodyAcceleratorJerkMagnitude-meanFreq()
FrequencyBodyBodyGyroMagnitude-mean()
FrequencyBodyBodyGyroMagnitude-std()
FrequencyBodyBodyGyroMagnitude-meanFreq()
FrequencyBodyBodyGyroJerkMagnitude-mean()
FrequencyBodyBodyGyroJerkMagnitude-std()
FrequencyBodyBodyGyroJerkMagnitude-meanFreq()
angle(tBodyAcceleratorMean,gravity)
angle(tBodyAcceleratorJerkMean),gravityMean)
angle(tBodyGyroMean,gravityMean)
angle(tBodyGyroJerkMean,gravityMean)
angle(X,gravityMean)
angle(Y,gravityMean)
angle(Z,gravityMean)
