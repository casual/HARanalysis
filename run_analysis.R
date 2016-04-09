#this is a script to clean and tidy HAR Dataset from 
#Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz 
#Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support
#Vector Machine. 
#International Workshop of Ambient Assisted Living (IWAAL 2012).
#7Vitoria-Gasteiz, Spain. Dec 2012


test <- read.table("HARDataset/test/X_test.txt")          #read test data
train <- read.table("HARDataset/train/X_train.txt")       #read train data
activity_labels <- read.table("HARDataset/activity_labels.txt")     #read activity labels
data_labels <- read.table("HARDataset/features.txt")      #read data labels


#Now we extratc the measurements of the mean and standard deviation of test and train
#data sets

meanrows <- grep("mean",data_labels[,2])          #rows that contains a mean
stdrows <- grep("std", data_labels[,2])           #rows that contains a std

test_means <- test[,meanrows]                   #a vector with means in test data
colnames(test_means) <- data_labels[meanrows,2] 
test_stds <- test[,stdrows]                      #a vector with std in test data
colnames(test_stds) <- data_labels[stdrows,2]

train_means <- train[,meanrows]                   #a vector with means in train data
colnames(train_means) <- data_labels[meanrows,2]
train_stds <- train[,stdrows]                      #a vector with std in train data
colnames(train_stds) <- data_labels[stdrows,2]

#We have test_means,test_stds,train_means,train_stds, variables that contains
#means and standards deviations of each data set.


#Now we merge the data sets
HAR<-rbind(train,test)          #HAR is the new data set that merges train and test data sets

colnames(HAR)<-data_labels[,2]    #names for HAR

average1 <- cbind(train_means,train_stds)
average2 <- cbind(test_means,test_stds)
average <- rbind(average1,average2)

num_labels <- rep(1:nrow(average), each = 6, length.out = nrow(average))
activity_names <-paste(num_labels,rep(activity_labels[,2], length.out = nrow(average)))
rownames(average) <-activity_names

#Now we have a table called "average" that contains the mean data

