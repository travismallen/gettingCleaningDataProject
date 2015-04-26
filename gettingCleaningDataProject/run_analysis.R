run_analysis <- function(){
  # Creates a tidy dataset of testing and training accelerometer data
  #
  # Args:
  #   None
  #
  # Returns:
  #   A data frame with the average of each variable for each activity and each subject  
  
  # Load Packages
  library(Hmisc); library(dplyr); library(tidyr)
  
  # Verifies that the directories and datasets exist
  if (!file.exists("test")) {
    stop("the 'test' directory does not exist")
  }
  
  else if (!file.exists("train")) {
    stop ("The 'train' directory does not exist")
  }
  
  else if (length(list.files("test")) == 0) {
    stop ("There are no files in the 'test' directory")
  }

  else if (length(list.files("train")) == 0) {
    stop ("There are no files in the 'train' directory")
  }
  
  # Import files files
  actLabelFile <- "activity_labels.txt"
  varNamesFile <- "features.txt"
  testDataFile <-"test/X_test.txt"
  testLabelFile <-"test/y_test.txt"
  trainDataFile <-"train/X_train.txt"
  trainLabelFile <-"train/y_train.txt"
  
  # Convert files to data frames
  activity_label <- read.table(actLabelFile, sep = " ", col.names = c("id","activityNames"))
  colHeaders <- read.table(varNamesFile, sep = " ", col.names = c("id","ColumnNames"))
  test_df <- read.table(testDataFile)
  test_labels <- read.table(testLabelFile, col.names = c("Labels"))
  train_df <- read.table(trainDataFile)
  train_labels <- read.table(trainLabelFile, col.names = c("Labels"))
  
  # Clean the column header labels of special characters...and to my liking...
  colHeaders <- colHeaders %>% 
    mutate(cleanedNames = gsub(",", ".", ColumnNames)) %>%
    transform(cleanedNames = gsub("\\(\\)", "FN", cleanedNames)) %>%
    transform(cleanedNames = gsub("\\(", ".", cleanedNames)) %>%
    transform(cleanedNames = gsub("\\)", ".", cleanedNames)) %>%
    transform(cleanedNames = gsub("\\-", ".", cleanedNames)) %>%
    transform(cleanedNames = gsub("\\.\\.", ".", cleanedNames)) %>%
    transform(cleanedNames = gsub("\\.+$", "", cleanedNames))
  
  # Add Activity Variable and Column Labels to test and train data frames
  test_labels <- merge(test_labels, activity_label, by.x = "Labels", by.y = "id")
  names(test_df) <- colHeaders$cleanedNames
  test_df <- cbind(activity = test_labels$activityNames, test_df)
  
  train_labels <- merge(train_labels, activity_label, by.x = "Labels", by.y = "id")
  names(train_df) <- colHeaders$cleanedNames
  train_df <- cbind(activity = train_labels$activityNames, train_df)
  
  # Merge test and training datasets
  allData_df <- rbind(test_df, train_df)
  
  # Verifies all column names are valid in 'allData_df'
  valid_column_names <- make.names(names=names(allData_df), unique=TRUE, allow_ = TRUE)
  names(allData_df) <- valid_column_names
  
  # Selects mean and standard deviation columns
  selectData_df <- select(allData_df, activity, contains("meanFN"), contains("stdFN"))
  
  # Tidy data set with the average of each variable from 'selectData_df'
  meanData_df <- selectData_df %>% 
                 group_by(activity) %>% 
                 summarise_each(funs(mean))
  
  colnames(meanData_df) <- paste("mean.of", colnames(meanData_df), sep = ".")
  colnames(meanData_df)[1] <- 'activity'  
  
  # Create tab delimited files from 'selectData_df' and 'meanData_df'
  write.table(selectData_df, "selectData.txt", sep="\t", row.names = FALSE)
  write.table(meanData_df, "meanData.txt", sep="\t", row.names = FALSE)
  
}