This file describes the workings of the Run_analysis.R script.  


NB: First the user needs to set the working directory to the folder containing the unzipped dataset, all other steps are then performed automatically.  

The following steps are performed:  

1a.	Import and merge the train and test set.  
1b.	Read and append the "Activity" and "Individual" information as the two first columns in the merged dataset.  
1c.	Extract the feature names and set them as the column names.  
2.	All variables that is not a mean or a standard deviation of a feature are dropped.  
3.	Add informative values to the activity variables  
4.	Tidy up the variable names.  
5a.	Calculate the mean for all variables for every activity for every individual  
5b.	Export the final tidy dataset to a file named Tidyset.txt. The file is created in the work directory.  

The steps outlined above is highlighted in the code.  


This final dataset can be imported back into R using the following code:  

tidydata  <- read.table("Tidyset.txt",header = TRUE)  