# The following script processes data collected from the accelerometers 
# from the Samsung Galaxy S smartphone, and produces a tidy data set. 
# The latter is saved to the file "tidy_data.txt".

# Get and extract the source data.
dataUrl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
download.file(dataUrl, destfile = './data_set.zip')

unzip(zipfile = './data_set.zip', exdir = './')

data_directory <- './UCI HAR Dataset'

# Load the files containing the features and merge the resulting data sets.
featuresTrain <- read.table(file.path(data_directory, 'train', 'X_train.txt'), header=FALSE)
featuresTest <- read.table(file.path(data_directory, 'test', 'X_test.txt'), header=FALSE)
features <- rbind(featuresTrain, featuresTest)

# Load the file containing the names of the features, and assign them as column names
# to the dataset "features" containing the features.
featureNames <- read.table(file.path(data_directory,'features.txt'))
colnames(features) = featureNames[,2]

# Load the files containing the activities and merge the resulting data sets.
activityTrain <- read.table(file.path(data_directory, 'train', 'y_train.txt'), header=FALSE)
activityTest <- read.table(file.path(data_directory, 'test', 'y_test.txt'), header=FALSE)
activity <- rbind(activityTrain, activityTest)

# Assign a column name to the data set "activity" containing the activities.
colnames(activity) <- 'activity'

# Load the files containing the subjects and merge the resulting data sets.
subjectTrain <- read.table(file.path(data_directory, 'train', 'subject_train.txt'), header=FALSE)
subjectTest <- read.table(file.path(data_directory, 'test', 'subject_test.txt'), header=FALSE)
subject <- rbind(subjectTrain, subjectTest)

# Assign a column name to the data set "subject" containing the activities.
colnames(subject) <- 'subject'

# Merge the data sets "features", "activity" and "subject" to a single data set "Data".
Data <- cbind(subject, activity, features)

# Extract the names of the variables for the mean and standard deviation measurements.
subset_feature_columns <- grep("mean|std", featureNames[,2], value = TRUE)

# Create a new data set, "subsetData", from the "Data" one, which contains the data
# for the subjects, the mean and standard deviation measurements, and the activities.
subsetData <- Data[, c('subject', subset_feature_columns, 'activity')]

# Load the file containing the activity labels.
activityLabels <- read.table(file.path(data_directory,'activity_labels.txt'))

# Use descriptive activity names to name the activities in the "subsetData" data set,
# based on the activity labels.
subsetData$activity <- as.factor(subsetData$activity)
levels(subsetData$activity) <- levels(activityLabels[,2])

# Appropriately label the data set "subsetData" with descriptive variable names,
# modifying the previous ones.
names(subsetData)<-gsub("[\\(\\)]", "", names(subsetData))
names(subsetData)<-gsub("^t", "Time", names(subsetData))
names(subsetData)<-gsub("^f", "Freq", names(subsetData))
names(subsetData)<-gsub("Acc", "Accelerometer", names(subsetData))
names(subsetData)<-gsub("Gyro", "Gyroscope", names(subsetData))
names(subsetData)<-gsub("Mag", "Magnitude", names(subsetData))
names(subsetData)<-gsub("BodyBody", "Body", names(subsetData))

# Create a second, independent tidy data set with the average of each variable for each 
# activity and each subject.
x <- subsetData[, !((names(subsetData) %in% c("subject","activity")))]
tidyData <- aggregate(x, by = list(subject = subsetData$subject, activity = subsetData$activity), FUN = mean)

# Output the tidy data set to the file "tidy_data.txt".
write.table(tidyData, file = './tidy_data.txt', row.name=FALSE)

