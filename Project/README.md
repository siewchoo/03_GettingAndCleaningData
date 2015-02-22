Introduction
============
There are 6 components to this project. They are:

1. getdata-projectfiles-UCI HAR Dataset.zip
   - The data set had been downloaded at the following URL:

	`https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip`

2. run_analysis.R
   - The R script that contains the analysis code to do the data cleaning and creation of a new tidy data set.

3. TidyData.txt
   - This is the new tidy data set that was created as part of the final step of cleaning.

4. CodeBook.md
   - The code book describes the variables, data and work that I had performed to clean up the data.

5. README.md
   - This is the file you are currently reading. It explains how all the script and files work and how they are connected.  

6. A Github repository named `03_GettingAndCleaningData`.
   - Repo to house a set of the above for version control should changes be required.

<br/>
<br/>
The first 3 components are required for the core work. Their relationship can be summarized as:
<table>
	<tr>
		<td>UCI HAR Dataset</td>
		<td>--------></td>
		<td>run_analysis.R</td>
		<td>--------></td>
		<td>TidyData.txt</td>
	</tr>
	<tr>
		<td align='center'>(Input)</td>
		<td>--------></td>
		<td align='center'>Script</td>
		<td>--------></td>
		<td align='center'>(Output)</td>
	</tr>
</table>

The following 2 components - CodeBook.md and README.md are supporting reference documents.<br/>
The last component, a Github repo, will cater to further enhancement work on this project.<br/>


Cleaning the Data
=================
Before you go into cleaning the data proper, please go through the list of assumptions to ensure proper functioning of the program.

Assumptions:
-----------
- Data to be cleaned has been downloaded and unzipped into directory `UCI HAR Dataset`.
- The script and unzipped data directory reside in the same working directory.
- The dplyr package has been downloaded and installed (prior to running the script) via<br/>
	`install.packages("dplyr")`
- The script may not work if its code has been altered.
- The script may not work if the directories, files or contents of the data set have been tampered with.

Steps:
-----
1. Start up your working version of either the R Console or RStudio application.

2. In the application, change the working directory to where your script is residing.

3. Source run_analysis.R to start the data cleaning process.
   - In R Console, enter the following command:<br/>
		`source("run_analysis.R")`
   - In RStudio, just click on the "Source" button.

   The program run will take some time since the data files are fairly large.<br/>
   As a guide, it took about 76 seconds (including loading and attaching the dplyr package) on my laptop.<br/>
   Time taken was measured with system.time()

   The time taken for you will most likely differ depending on your computer's configuration. 
   However, the entire process should take no more than a few minutes.

4. At the end of the run, you should see a new text file (`TidyData.txt`) created and deposited in the working directory.
   You may now use this new data set for further analysis work.