# the data should be downloaded and unzipped to the work directory if needed
# Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# Import the dplyr library
library(dplyr)

#0. read the data

# Read the list of variables of each feature
features <- as.vector(read.table("UCI HAR Dataset/features.txt")[,2])
# Read activity labels
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]

# Read the test dataset (3 parts)
Xtest <- read.csv("UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
Ytest <- read.csv("UCI HAR Dataset/test/y_test.txt", sep="", header=FALSE)
subjectTest <- read.csv("UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)
# Combine the test dataset
test <- data.frame(subjectTest, Ytest, Xtest)


# Read the training dataset (3 parts)
Xtrain <- read.csv("UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
Ytrain <- read.csv("UCI HAR Dataset/train/y_train.txt", sep="", header=FALSE)
subjectTrain <- read.csv("UCI HAR Dataset/train/subject_train.txt",sep="", header=FALSE)
# Combine the training dataset
train <- data.frame(subjectTrain, Ytrain, Xtrain)

# Combine the training and test datasets
data <- rbind(train, test)

#Ddd colomn names
names(data) <- c("subject", "activity_labels", features)

# Remove the intermediate data.frames
rm(test, train, subjectTest, Xtest, Ytest, subjectTrain, Xtrain, Ytrain)

# Select only the columns that contain mean or standard deviations
# not to miss coloms "subject" and "activity_labels"

data <- data[,grep("subject|labels|(mean|std)\\(\\)", names(data))]

# Replace in "activity_labels" the codes (1-6) with corresponding names of activity
# from activityLabels

data[,2] = activity_labels[data[,2]]

#Appropriately labels the data set with descriptive activity names
#Remove "()" dubblication, etc
names(data) <- gsub("[()]", "",names(data))
names(data) <- gsub("-", "_",names(data))
names(data) <- gsub("BodyBody", "Body",names(data))
names(data) <- gsub("^t", "Time",names(data))
names(data) <- gsub("^f", "Frequency",names(data))


# Group the running data by subject and activity, then
# calculate the mean of every measurement.
dataTidy <- data %>%
  group_by(subject, activity_labels) %>%
  summarise_all(funs(mean))


# Write file
write.table(dataTidy, "dataTidy.txt", row.names = FALSE)
