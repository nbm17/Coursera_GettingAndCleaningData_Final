#open libraries
library(dplyr)
##Merges the training and the test sets to create one data set.
  #Check dir for zip file, download file if it does not exist
    tempfile <-"data.zip"
    if(!file.exists(tempfile)){
      fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"  
      download.file(fileUrl,tempfile)  
    }
    if(!file.exists("UCI HAR Dataset")){
      unzip(tempfile)
    }
  #load data sets for training, test, and labels
    X_test<-read.table("UCI HAR Dataset/test/X_test.txt")
    Y_test<-read.table("UCI HAR Dataset/test/Y_test.txt")
    sbj_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
    X_train<-read.table("UCI HAR Dataset/train/X_train.txt")
    Y_train<-read.table("UCI HAR Dataset/train/Y_train.txt")
    sbj_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
    features<-read.table("UCI HAR Dataset/features.txt")
    activities<-read.table("UCI HAR Dataset/activity_labels.txt")
  #Merge data into a single tall data set
    X<-rbind(X_test, X_train)
    Y<-rbind(Y_test, Y_train)
    sbj<-rbind(sbj_test, sbj_train)
  #Add column names from the features file  
    colnames(X)<-features[,2]
  #Add activities and subjects to the X df
    X$activities<-as.factor(Y[,1])
    X$subjects<-as.factor(sbj[,1])
##Extracts only the measurements on the mean and standard deviation for each measurement.
    #Creates a variable ("requiredcolumns") that selects only the requested columns
    #Activities are a requirement for later steps.
    #Uses the atomic vector to subset the X dataframe.
    requiredcolumns<-grep(".*mean.*|.*std.*|activities|subjects",colnames(X),ignore.case=TRUE)  
    #subset the data to only required columns.  Store in a new variable Master
    final<-X[,requiredcolumns]
##Uses descriptive activity names to name the activities in the data set
    #replace the activity ID# with the activity description
    final$activities<-factor(final$activities, levels=activities[,1], labels=activities[,2])
##Appropriately labels the data set with descriptive variable names.
    #Add some language to help interpret variable names
    names(final)<-gsub("Acc","Accelerator",names(final))
    names(final)<-gsub("Mag","Magnitude",names(final))
    names(final)<-gsub("^t","Time",names(final))
    names(final)<-gsub("^f","Frequency",names(final))
##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    tidydata<-final %>%
      group_by(activities,subjects) %>%
      summarize_each(funs(mean))
#use this script for printing
    #write.table(tidydata, file="tidydata.csv", col.names = TRUE, row.names=FALSE, sep=",")