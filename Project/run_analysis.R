library(dplyr)

DATA_HOME = "UCI HAR Dataset"
DATA_TEST = "test"
DATA_TRAIN = "train"

## Remove underscore and convert to lowercase (with the exception of the 1st character).
processActivityName <- function(name) {
	substr(name, 2, nchar(name)) <- gsub("([\\w])", "\\L\\1", substring(name, 2), perl = T)
	gsub("_", " ", name)
}

## The individual feature name parts are lookuped in the feature dictionary for their more 
## user-friendlier counterparts. Eg. "Acc" -> "Accelerometer".
## If entry does not exists, then the original feature name ("Acc" in the above example) 
## is used.
processFeatureName <- function(fNameParts) {
	processedFeaturename <- character(0)

	for (j in 1:length(fNameParts[[1]])) {
		if (nchar(fNameParts[[1]][j]) > 0) {
			key <- grep(fNameParts[[1]][j], names(featureDic), ignore.case=TRUE, value=TRUE)
			if ((length(key) == 0) || (nchar(key) != nchar(fNameParts[[1]][j])))
				processedFeaturename <- c(processedFeaturename, fNameParts[[1]][j])
			else
				processedFeaturename <- c(processedFeaturename, featureDic[key][[1]])
		}
	}
	processedFeaturename
}

##===============================================================================================
## 1. Merge the training and the test sets to create one data set.
##===============================================================================================
## First load the training data.
trainingData <- read.table(paste(DATA_HOME, "/", DATA_TRAIN, "/", "X_train.txt", sep = ""), col.names = 1:561, check.names = FALSE)
##trainingData <- read.table(paste(DATA_HOME, "/", DATA_TRAIN, "/", "X_train.txt", sep = ""))

## Then load the testing data next.
testData <- read.table(paste(DATA_HOME, "/", DATA_TEST, "/", "X_test.txt", sep = ""), col.names = 1:561, check.names = FALSE)
##testData <- read.table(paste(DATA_HOME, "/", DATA_TEST, "/", "X_test.txt", sep = ""))

## Row bind the training and test datasets.
measurementData <- rbind(trainingData, testData)

## Housekeep to prevent overstretching the system's memory.
rm(trainingData, testData)

##===============================================================================================
## 2. Extract only the measurements on the mean and standard deviation for each measurement. 
##===============================================================================================
## Load the features dataset.
features <- read.table(paste(DATA_HOME, "/", "features.txt", sep = ""), col.names = c("id", "feature"), stringsAsFactor = FALSE)

## Extract only those features that we are interested in - mean() and std().
featuresOfInterest <- features[grepl("mean\\(\\)|std\\(\\)", features[[2]]), "id"]

## Retain only those columns (ie. features) of the measurement dataset that we are interested in.
measurementData <- measurementData[ , featuresOfInterest]

##===============================================================================================
## 3. Uses descriptive activity names to name the activities in the data set
##===============================================================================================
MEASUREMENT_ACTIVITIES <- c("/train/y_train.txt", "/test/y_test.txt")
MEASUREMENT_SUBJECTS <- c("/train/subject_train.txt", "/test/subject_test.txt")

## Read the activity label dataset first.
## This will give us the activity names to accomplish task 3.
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("id", "activity"), stringsAsFactor = FALSE)
## Process the activity names.
activityLabels[, "activity"] <- processActivityName(activityLabels[, "activity"])

## Load the measured activities dataset.
measurementActivities <- do.call("rbind", lapply(paste(DATA_HOME, MEASUREMENT_ACTIVITIES, sep = ""), function(f) read.table(f, col.names = "activityId")))
## Replace the activity ID with the activity name.
measurementActivities[, "activityId"] <- activityLabels[measurementActivities[, "activityId"], "activity"]

## Create the subjects dataset for the sake of completeness.
measurementSubjects <- do.call("rbind", lapply(paste(DATA_HOME, MEASUREMENT_SUBJECTS, sep = ""), function(f) read.table(f, col.names = "subjectId")))

## Assemble what should be the complete measurement dataset, complete with activities and the subjects who performed them.
measurementData <- cbind(measurementActivities, measurementSubjects, measurementData)

##===============================================================================================
## 4. Appropriately labels the data set with descriptive variable names. 
##===============================================================================================
## Create a named character vector for use as a dictionary.
str <- c("t", "f", "X", "Y", "Z", "acc", "gyro", "body", "mean", "std", "angle", "energy")
replaceStr <- c("Time", "Freq", "X-Axis", "Y-Axis", "Z-Axis", "Accelerometer", "Gyroscope", "Body", "Mean", "SD", "Angle", "Energy")
featureDic <- replaceStr
names(featureDic) <- str

featuresV <- features[, "feature"]
for (i in 1:length(featuresV)) {
	## Split up the feature name into separate elements by punctuation marks and uppercase.
	fName <- gsub(pattern="[[:punct:]]", featuresV[[i]], replacement=" ")
	fName <- gsub('([[:upper:]])', ' \\1', fName)
	fNameParts <- strsplit(fName, " ")
	## Concatenate the elements of the feature name now that the replacement is complete.
	featuresV[[i]] <- paste(processFeatureName(fNameParts), collapse = "_")
}

## Now, we rename the columns of the measurement data so that they are features are hopefully more descriptive.
colnamesMD <- rep(colnames(measurementData))
colnames(measurementData)[3:length(colnamesMD)] <- sapply(colnamesMD[3:length(colnamesMD)], function(f) featuresV[as.numeric(f)])

##===============================================================================================
## 5. From the data set in step 4, create a second, independent tidy data set with the average 
##    of each variable for each activity and each subject.
##===============================================================================================
## Create a dataset with averages computed by acivity, then subject.
tidyData <- measurementData %>% 
		group_by(activityId, subjectId) %>%
		summarise_each(funs(mean(., na.rm = TRUE)))

## Wrap up by writing the tidy dataset to a text file.
write.table(tidyData, "TidyData.txt", row.name=FALSE)

rm(measurementData)