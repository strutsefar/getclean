This file describes the workings of the Run_analysis.R script.

The scipt is assumed to be placed in the folder containing the unzipped file provided for the assignment.

The script will import and merge the train and test set.
Next, the script will read and append the "Activity" and "Individual" information as the two first columns in the merged dataset.
Now, we extract the feature names and set them as the column names.
In the next step all variables that is not a mean or a standard deviation of a feature is dropped.
The column names are then cleaned up to be more user friendly.

Finally we calculate the mean of each feature for each activity for each individual.
This new dataset is our clean dataset and is written to the file tidyset.txt.

This final dataset can be imported back into R using the following code:

tidydata  <- read.table("Tidyset.txt",header = TRUE)