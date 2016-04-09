###Important to read before use run_analysis.R

Take this consideration before run the script:

- For simplicity we have to change the name of the HAR folder to "HARDataset".
We can use the given name of the folder by changin the first 3 lines of code of the script.
- The folder that contains the data (now "HARDataset") must contains the folders "test" and "train" in it.
- The script must be in the same folder than "HARDataset"

The script will execute the following R instructions:

- Read the data sets from the folder "HARDataset" and extract the labels of the data.
- Merges the train and test data to create one data set.
- Extract the mean and std meauserements from the data sets.
- Uses descriptive names to label the data set.
- Creates a secod data set with the average of each variable for each activity and subject and write it in "AVERAGE.txt"


The script will generate some variables that will be usefull for analysis:

- HAR: a variable that contain all the data
- test_means and train_means: vectors with the meauserements of means
- test_stds and train_stds: vectors with the meauserements of standars deviations


To see this variables, just type it's names on the R console.

