###List of variables and names used in the script

1. test: variable with the X_test data of test data set
2. train: variable with test X_test data of train data set
3. data_labels: variable with the data of the "features.txt" file
4. meanrows: auxiliary variable that contains a set of index with the measurements of means, taken from the "features.txt" file
5. stdrows: auxiliary variable that contains a set of index with the measurements of standard desviations, taken from the "features.txt" file
6. test_stds: variable that contains the measurements of the standard deviations of the test data set.
7. test_means: variable that contains the measurements of the means of the test data set.
8. train_stds: variable that contains the measurements of the standard deviations of the train data set.
9. train_means: variable that contains the measurements of the means of the train data set.
10. HAR: variable that contains all data merged from train and test datasets (first train, then test)

###Names of variables of data sets

The variables that represent the signals have the following names, and there is one variable for each axis (X,Y and Z):

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

The data obtained using the signals are:

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

The names of the variables used in the data set have a combinatio of this prefixes.