####################################################
#1. Merge train and test set. (plus name columns)
####################################################

setwd("./train")
#setwd("C:/Users/C400463/R/Proj/getclean/train")

train_measurements <- read.table(file="X_train.txt",header=F)
train_activities <- read.table(file="y_train.txt",header=F)
train_individials <- read.table(file="subject_train.txt",header=F)

#This is the entire train set containing Activity,Individual,feature 1 - 561
train <- cbind(train_activities,train_individials,train_measurements)


setwd("../test")
#setwd("C:/Users/C400463/R/Proj/getclean/test")
test_measurements <- read.table(file="X_test.txt",header=F)
test_activities <- read.table(file="y_test.txt",header=F)
test_individials <- read.table(file="subject_test.txt",header=F)

#This is the entire test set containing Activity,Individual,feature 1 - 561
test <- cbind(test_activities,test_individials,test_measurements)


#This is the entire test+test set containing Activity,Individual,feature 1 - 561
merged <- rbind(train,test)

#extract featurenames from file
#setwd("C:/Users/C400463/R/Proj/getclean")
setwd("../")
featurenames <- read.table(file="features.txt",header=F)
#Add Activity and individual ID to feature list in order to use as column names
featurenames <- c("Activity","Individual",as.character(featurenames[,2]))


#Name the columns in the merged set with our feature names
colnames(merged) <- featurenames


####################################################
#2. Extract only Mean And standard deviation observations
####################################################

#In this expression i create a subset containing the activity and the individual column and all clumns with mean and standard deviation observations
subset  <- cbind(merged[,1:2],merged[ ,grepl( "mean()" , names(merged), fixed = TRUE) | grepl( "std()" , names(merged), fixed = TRUE)  ])


####################################################
#3. Add activity names
####################################################

subset$Activity <- gsub("1","WALKING",subset$Activity)
subset$Activity <- gsub("2","WALKING_UPSTAIRS",subset$Activity)
subset$Activity <- gsub("3","WALKING_DOWNSTAIRS",subset$Activity)
subset$Activity <- gsub("4","SITTING",subset$Activity)
subset$Activity <- gsub("5","STANDING",subset$Activity)
subset$Activity <- gsub("6","LAYING",subset$Activity)

####################################################
#4. Descriptive label names
####################################################

cleannames <- colnames(subset)
cleannames <- tolower(cleannames) #Lowercase variable names
cleannames <- gsub("\\()","",cleannames) #remove parenthesis
cleannames <- gsub("acc","accelerometer",cleannames) #substitute acc for accelerometer
cleannames <- gsub("gyro","gyroscope",cleannames) #substitute acc for accelerometer
cleannames <- gsub("bodybody","body",cleannames) #fix duplicated body variables

####################################################
#5. Create new tidy dataset with mean of all measurements for all individuals for all activities
####################################################

library(dplyr)
meanSet <- group_by(subset,Activity,Individual) %>% summarise_each(funs(mean))
colnames(meanSet) <- cleannames
#Add Avg. prefix to the measurement column names to indicate that this is an average of the variable


#Export the dataset as a txt, i choose Quotes = False because it is easier to read for the grader
write.table(meanSet,"Tidyset.txt",row.names = FALSE,quote = FALSE)



