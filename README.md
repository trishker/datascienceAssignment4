# Getting and Cleaning Data Course Project

The goal of this project is to prepare a tidy data set from the Human Activity Recognition Using Smartphones Data


## Prerequisites

The run_analysis script requires the following packages: downloader, dplyr. Please
download these packages before running.

## Running run_analysis.R 

Open RStudio. Save run_analysis.R to your working directory.
Install the downloader and dplyr packages if you do not already have them installed.
Call ‘source(“run_analysis.R)’

All the data will be downloaded to a folder called “Assignment4”. The tidy dataset will be written to a file called “tidyds.txt” in your working directory.
To read the tidyds dataset in and look at it in R use the following command:

‘data <- read.table(“tidyds.txt”, header = TRUE) 
View(data)’

## Why is tidyds.txt a tidy dataset

tidyds.txt is a tidy dataset because it satisfies the following conditions:

1. Each variable forms a column.
2. Each observation forms a row.
3. Each type of observational unit forms a table.

## Acknowledgements

Thanks to David Hood and his blogpost on this assignment
<https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/>

Also thanks to Hadley Wickham for this paper on Tidy Data in the Journal of Statistical Software: <http://bebi103.caltech.edu/2015_protected/papers/wickham_2014.pdf/>




