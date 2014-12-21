## If the SamsungData directory exists, then set working directory to SamsungData
## If SamsungData does not exists, then create directory
if(file.exists("./SamsungData")) {
  setwd("./SamsungData")
} else {
  dir.create("./SamsungData")
  setwd("./SamsungData")
}

## If the NEI_data.zip file does not exists, then download zip file
if(!file.exists("./UCI_Dataset.zip")){
  
  fileUrl <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl,destfile="./UCI_Dataset.zip",method="curl")
  unzip("UCI_Dataset.zip")
}

## Set working directory to UCI HAR Dataset folder
setwd("./UCI HAR Dataset")
## Create vector with the features.txt information
features <- as.vector(read.table("features.txt", sep = "")[1:561,2], mode = "any")

## Set working directory to test folder
setwd("./test")
## Create vector with the subject_test.txt information
subject <- as.vector(read.fwf("subject_test.txt", widths = c(2))[1:2947,], mode = "any")
## Create vector with the y_text.txt information as a factor variable for descriptive activity names in the data set
activity <- factor(as.vector(read.fwf("y_test.txt", widths = c(1))[1:2947,], mode = "any"), levels = c("1","2","3","4","5","6"), labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING","STANDING", "LAYING"))
## Read X_test file into local data.frame set column names equal to features vector
testdata <- read.table("X_test.txt", header = FALSE, col.names = features)
## Add activity list to the test data.frame
testdata <- cbind(testdata, activity)
## Add activity list to the test data.frame
testdata <- cbind(testdata, subject)

## Remove activity and subject lists from memory
rm("activity")
rm("subject")

## Set working directory to train folder
setwd("../train")
## Create vector with the subject_train.txt information
subject <- as.vector(read.fwf("subject_train.txt", widths = c(2))[1:7352,], mode = "any")
## Create vector with the y_train.txt infornation as a factor variable for descriptive activity names in the data set
activity <- factor(as.vector(read.fwf("y_train.txt", widths = c(1))[1:7352,], mode = "any"), levels = c("1","2","3","4","5","6"), labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING","STANDING", "LAYING"))
## Read X_train file into local data.frame set column names equal to features vector
traindata <-  read.table("X_train.txt", header = FALSE, col.names = features)
## Add activity list to the training data.frame
traindata <- cbind(traindata, activity)
## Add subject list to the training data.frame
traindata <- cbind(traindata, subject)

## Merge the test and the train data sets to create one data set
merger <- rbind(testdata, traindata)

## Extract colnames with mean or std in column name in new list.  Also, add the subject and activity columns in list. 
merger_colnames <- grep("subject|activity|[Mm]ean|[Ss]td",colnames(merger), value = TRUE)

## Subset merger data.frame with mean, std, subject, and activity in the column name
merger <- merger[merger_colnames]

## Label the data set with descriptive variable names using gsub function
colnames(merger) <- gsub("([...])", "", colnames(merger))
colnames(merger) <- gsub("fBodyBodyAcc", "fBodyAcc ", colnames(merger))
colnames(merger) <- gsub("fBodyBodyGyro", "fBodyGyro ", colnames(merger))


## Convert activity column from factor to character datatype for dplyr analysis
merger$activity <- as.character(merger$activity)

## Set working directory to home directory
setwd("../../../")

## Load dplyr library
library(dplyr)

## Create a data frame tbl from local data.frame 
mergetbl <- tbl_df(merger)

## Arrange by subject and activity from data frame tbl, group by subject, activity, summmarize data by each subject number and activity, and output file
mergetbl %>%
 arrange(subject, activity) %>%
 group_by(subject, activity) %>%
 summarise_each(funs(mean)) %>%
 write.table("masterData.txt", row.names= FALSE)
