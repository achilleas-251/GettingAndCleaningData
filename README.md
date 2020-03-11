# "Getting and Cleaning Data" course project


The data set is based on data collected from the accelerometers from the Samsung Galaxy S smartphone.
A full description of the source data is available at the site

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The dataset includes the following files:

- "README.md": provides an overview of the data set and how it was created.
- "tidy_data.txt": contains the data set.
- "CodeBook.md": describes the contents of the data set.
- "run_analysis.R": the R script that was used to create the data set from the source one. 

The R script "run_analysis.R" retrieves the source data and processes them to produce the final
data set included in "tidy_data.txt". In particular:
 
- Downloads and extracts the source data.
- Reads the source data.
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set.
- Appropriately labels the data set with descriptive variable names.
- Creates a second, independent tidy set with the average of each variable for each activity and each subject.
- Writes the data set to the tidy_data.txt file. 
