##Data Set Code Book: 
Human Activity Recognition Using Smartphones

Codebook Version 1.0
February 20, 2015

Codebook prepared by TSC based on data set she downloaded at the following URL:

	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The downloaded 'getdata-projectfiles-UCI HAR Dataset.zip' file when unzipped contains:

1. 1 folder for the training data
2. 1 folder for the test data
3. 3 text files 

	a. features.txt
	b. features_info.txt 
	c. README.txt

Disclaimer:<br/>
The above dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
<!-- -->
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.<br/>
Smartlab - Non Linear Complex Systems Laboratory<br/>
DITEN - Università degli Studi di Genova.<br/>
Via Opera Pia 11A, I-16145, Genoa, Italy.<br/>
activityrecognition@smartlab.ws<br/>
www.smartlab.ws<br/>
<!-- -->
==================================================================


<br/>
Data Collection Description
===========================
Summary
-------
One of the most exciting areas in all of data science right now is wearable computing. 
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 

To this end, the folks at School of Information & Computer Science at University of California had carried out experiments which involved a group of volunteers doing a range of activities while wearing a smartphone on their waists. 
This data set represents the data collected from the accelerometers from the smartphone (Samsung Galaxy S) used. 
A full description is available at the site where the data was obtained: 

	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Additional reference material for the experiment: 

	Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
	Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
	International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


Project Details
------------------
The project was carried out with 30 subjects aged between 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 

The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

See 'features_info.txt' for more details. 


The Data Set
------------
The following files are available for the train and test data. Their descriptions are equivalent. 

1. Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
   Depending on whether the data was collected as part of training or testing, the data files are either in
   - ./UCI HAR Dataset/train/Inertial Signals/
   - ./UCI HAR Dataset/test/Inertial Signals/

   The acceleration signal from the smartphone accelerometer X axis is in standard gravity units 'g'. 
   Every row shows a 128 element vector. 
   The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

   Files for total acceleration (from the accelerometer):
<table>
	<tr>
		<td>total_acc_x_train.txt</td>
		<td>total_acc_x_test.txt</td>
	</tr>
	<tr>
		<td>total_acc_y_train.txt</td>
		<td>total_acc_y_test.txt</td>
	</tr>
	<tr>
		<td>total_acc_z_train.txt</td>
		<td>total_acc_z_test.txt</td>
	</tr>
</table>

  The body acceleration signal was obtained by subtracting the gravity from the total acceleration. 

  Files for estimated body acceleration (from the accelerometer):
<table>
	<tr>
		<td>body_acc_x_train.txt</td>
		<td>body_acc_x_test.txt</td>
	</tr>
	<tr>
		<td>body_acc_y_train.txt</td>
		<td>body_acc_y_test.txt</td>
	</tr>
	<tr>
		<td>body_acc_z_train.txt</td>
		<td>body_acc_z_test.txt</td>
	</tr>
</table>


2. Triaxial Angular velocity from the gyroscope. 
   Depending on whether the data was collected as part of training or testing, the data files are either in
   - ./UCI HAR Dataset/train/Inertial Signals/
   - ./UCI HAR Dataset/test/Inertial Signals/

   The angular velocity vector was measured by the gyroscope for each window sample. 
   The units are radians/second. 

  Files for angular velocity (from the gyroscope):
<table>
	<tr>
		<td>body_gyro_x_train.txt</td>
		<td>body_gyro_x_test.txt</td>
	</tr>
	<tr>
		<td>body_gyro_y_train.txt</td>
		<td>body_gyro_y_test.txt</td>
	</tr>
	<tr>
		<td>body_gyro_z_train.txt</td>
		<td>body_gyro_z_test.txt</td>
	</tr>
</table>


3. A 561-feature measurement data vector with time and frequency domain variables.
   - See `Part 3a) Training Data` and `Part 4a) Test Data`

4. Its activity label.
   - See `Part 3b) Training Activities` and `Part 4b) Test Activities`

5. An identifier of the subject who carried out the experiment.
   - See `Part 3c) Training Subjects` and `Part 4c) Test Subjects`

<br/>
For this course project, we shall be focusing on items 3 through 5 of the above mentioned.
<br/>

<br/>
Part 1: Activities
------------------
<table>
	<tr>
		<td colspan='2'>- List the activities measured in the experiment.</td>
	</tr>
	<tr>
		<td>Location:</td>
		<td>./UCI HAR Dataset</td>
	</tr>
	<tr>
		<td>File:</td>
		<td>activity_labels.txt</td>
	</tr>
	<tr>
		<td>Observations:</td>
		<td>6</td>
	</tr>
	<tr>
		<td>Variables:</td>
		<td>2</td>
	</tr>
</table>
<br/>

Part 2: Features
----------------
<table>
	<tr>
		<td colspan='2'>- List of all features measured in the experiment.</td>
	</tr>
	<tr>
		<td>Location:</td>
		<td>./UCI HAR Dataset</td>
	</tr>
	<tr>
		<td>File:</td>
		<td>features.txt<br/>(features_info.txt provides more details)</td>
	</tr>
	<tr>
		<td>Observations:</td>
		<td>561</td>
	</tr>
	<tr>
		<td>Variables:</td>
		<td>2</td>
	</tr>
</table>
<br/>


Part 3: Training Data
---------------------
<table>
	<tr>
		<td colspan='3'>- A collection of text files containing data collected during a training session.</td>
	</tr>
	<tr>
		<td colspan='2'>Location:</td>
		<td>./UCI HAR Dataset/train</td>
	</tr>
	<tr>
		<td>a)</td>
		<td colspan='2'>Training Data</td>
	</tr>
	<tr>
		<td></td>
		<td>File:</td>
		<td>X_train.txt</td>
	</tr>
	<tr>
		<td></td>
		<td colspan='2'>Contains measurement values for all features measured during training.<br/>
		Each row represents a measurement taken of all features measured during training.</td>
   	<tr>
		<td></td>
		<td>Observations:</td>
		<td>7352</td>
	</tr>
	<tr>
		<td></td>
		<td>Variables:</td>
		<td>561</td>
	</tr>
	<tr>
		<td>b)</td>
		<td colspan='2'>Training Activities</td>
	</tr>
	<tr>
		<td></td>
		<td>File:</td>
		<td>y_train.txt</td>
	</tr>
	<tr>
		<td></td>
		<td colspan='2'>Contains activity IDs of the activities measured during the training.<br/>
		Each row identifies the activity performed for each training window sample.</td>
   	<tr>
		<td></td>
		<td>Observations:</td>
		<td>7352</td>
	</tr>
	<tr>
		<td></td>
		<td>Variables:</td>
		<td>1</td>
	</tr>
	<tr>
		<td>c)</td>
		<td colspan='2'>Training Subjects</td>
	</tr>
	<tr>
		<td></td>
		<td>File:</td>
		<td>subject_train.txt</td>
	</tr>
	<tr>
		<td></td>
		<td colspan='2'>Contains IDs of the training subjects.<br/>
		Each row identifies the subject who performed the activity for each training window sample.</td>
	</tr>
   	<tr>
		<td></td>
		<td>Observations:</td>
		<td>7352</td>
	</tr>
	<tr>
		<td></td>
		<td>Variables:</td>
		<td>1</td>
	</tr>
</table>
<br/>


Part 4: Test Data
-----------------
<table>
	<tr>
		<td colspan='3'>- A collection of text files containing data collected during a test run.
	</tr>
	<tr>
		<td colspan='2'>Location:</td>
		<td>./UCI HAR Dataset/test</td>
	</tr>
	<tr>
		<td>a)</td>
		<td colspan='2'>Testing Data</td>
	</tr>
	<tr>
		<td></td>
		<td>File:</td>
		<td>X_test.txt</td>
	</tr>
	<tr>
		<td></td>
		<td colspan='2'>Contains measurement values for all features measured during the test run.<br/>
		Each row represents a measurement taken of all features measured during the test run.</td>
	</tr>
	<tr>
		<td></td>
		<td>Observations:</td>
		<td>2947</td>
	</tr>
	<tr>
		<td></td>
		<td>Variables:</td>
		<td>561</td>
	</tr>
	<tr>
		<td>b)</td>
		<td colspan='2'>Test Activities</td>
	</tr>
	<tr>
		<td></td>
		<td>File:</td>
		<td>y_test.txt</td>
	</tr>
	<tr>
		<td></td>
		<td colspan='2'>Contains activity IDs of the activities measured during the test run.<br/>
	 	Each row identifies the activity performed for each test window sample.</td>
	</tr>
	<tr>
		<td></td>
		<td>Observations:</td>
		<td>2947</td>
	</tr>
	<tr>
		<td></td>
		<td>Variables:</td>
		<td>1</td>
	</tr>
	<tr>
		<td>c)</td>
		<td colspan='2'>Test Subjects</td>
	</tr>
	<tr>
		<td></td>
		<td>File:</td>
		<td>subject_test.txt</td>
	</tr>
	<tr>
		<td></td>
		<td colspan='2'>Contains IDs of the training subjects.<br/>
		 Each row identifies the subject who performed the activity for each test window sample.</td>
	</tr>
	<tr>
		<td></td>
		<td>Observations:</td>
		<td>2947</td>
	</tr>
	<tr>
		<td></td>
		<td>Variables:</td>
		<td>1</td>
	</tr>
</table>
<br/>


Part 5: Miscellaneous Information
---------------------------------
<table>
	<tr>
		<td colspan='2'>Other supporting information regarding the nature and use of files and fields.</td>
	</tr>
	<tr>
		<td>Files:</td>
		<td>README.txt<br/>
		- Information presented here are derived from this file.</td>
	</tr>
	<tr>
		<td></td>
		<td>features_info.txt<br/>
		- Accompanying information regarding the features measured in the project.</td>
	</tr>
</table>
<br/>


Codebook for Activities
-----------------------
<table>
	<tr>
		<td>Variable Name</td>
		<td>Position</td>
		<td>Values</td>
		<td>Description</td>
	</tr>
	<tr>
		<td valign='top'>id</td>
		<td valign='top'>1</td>
		<td>1 - 6<br/>
		1 = WALKING<br/>
		2 = WALKING_UPSTAIRS<br/>
		3 = WALKING_DOWNSTAIRS<br/>
		4 = SITTING<br/>
		5 = STANDING<br/>
		6 = LAYING</td>
		<td valign='top'>ID of activity measured</td>
	</tr>
	<tr>
		<td valign='top'>activity</td>
		<td valign='top'>2</td>
		<td>character<br/>
		WALKING<br/>
		WALKING_UPSTAIRS<br/>
		WALKING_DOWNSTAIRS<br/>
		SITTING<br/>
		STANDING<br/>
		LAYING</td>
		<td valign='top'>Name of the activity measured</td>
	</tr>
</table>
<br/>


Codebook for Features
---------------------
<table>
	<tr>
		<td>Variable Name</td>
		<td>Position</td>
		<td>Values</td>
		<td>Description</td>
	</tr>
	<tr>
		<td>id</td>
		<td>1</td>
		<td>1 - 561</td>
		<td>ID of the feature measured</td>

	</tr>
	<tr>
		<td valign='top'>feature</td>
		<td valign='top'>2</td>
		<td>character<br/>
		tBodyAcc-mean()-X<br/>
		tBodyGyroJerk-mean()-X<br/>
		fBodyAcc-std()-X<br/>
		angle(Z,gravityMean)<br/>
		..list truncated
		</td>
		<td valign='top'>Name of the feature measured<br/>
			* See 'features.txt'<br/>
			for complete list of values
		</td>
	</tr>
</table>
Notes: 
- Features are normalized and bounded within [-1,1].
<br/>

Codebook for Training Data Files
--------------------------------
<table>
	<tr>
		<td>a)</td>
		<td colspan='4'>Training Data</td>
	</tr>
	<tr>
		<td></td>
		<td>Variable Name</td>
		<td>Position</td>
		<td>Values</td>
		<td>Description</td>
	</tr>
	<tr>
		<td></td>
		<td>V1 - V561</td>
		<td>1</td>
		<td>Numeric</td> 
		<td>Readings off the instruments - Accelerometer, Gyroscope</td>
	</tr>		
	<tr>
		<td>b)</td>
		<td colspan='4'>Training Activities</td>
	</tr>
	<tr>
		<td></td>
		<td>Variable Name</td>
		<td>Position</td>
		<td>Values</td>
		<td>Description</td>
	</tr>
	<tr>
		<td></td>
		<td>activityId</td>
		<td>1</td>
		<td>1 - 6</td>
		<td>ID of the activity measure</td>
	</tr>
	<tr>
		<td>c)</td>
		<td colspan='4'>Training Subjects</td>
	</tr>
	<tr>
		<td></td>
		<td>Variable Name</td>
		<td>Position</td>
		<td>Values</td>
		<td>Description</td>
	</tr>
	<tr>
		<td></td>
		<td>subjectId</td>
		<td>1</td>
		<td>1 - 30</td>
		<td>ID of the subject performing the activity</td>
	</tr>
</table>
<br/>


Codebook for Test Data Files
----------------------------
<table>
	<tr>
		<td>a)</td>
		<td colspan='4'>Test Data</td>
	</tr>
	<tr>
		<td></td>
		<td>Variable Name</td>
		<td>Position</td>
		<td>Values</td>
		<td>Description</td>
	</tr>
	<tr>
		<td></td>
		<td>V1 - V561</td>
		<td>1</td>
		<td>Numeric</td> 
		<td>Readings off the instruments - Accelerometer, Gyroscope</td>
	</tr>
	<tr>
		<td>b)</td>
		<td colspan='4'>Test Activities</td>
	</tr>
	<tr>
		<td></td>
		<td>Variable Name</td>
		<td>Position</td>
		<td>Values</td>
		<td>Description</td>
	</tr>
	<tr>
		<td></td>
		<td>activityId</td>
		<td>1</td>
		<td>1 - 6</td>
		<td>ID of the activity measure</td>
	</tr>
	<tr>
		<td>c)</td>
		<td colspan='4'>Test Subjects</td>
	</tr>
	<tr>
		<td></td>
		<td>Variable Name</td>
		<td>Position</td>
		<td>Values</td>
		<td>Description</td>
	</tr>
	<tr>
		<td></td>
		<td>subjectId</td>
		<td>1</td>
		<td>1 - 30</td>
		<td>ID of the subject performing the activity</td>
	</tr>
</table>
<br/>

Cleaning the Data
=================
In a likely test window sample scenario, a test subject will be recorded performing an activity with the readings from the instruments recorded for the duration of the activity.
It would, therefore,  be natural that all the test measurement data be linked to an activity and to the subject performing it.
However, the data collected is highly fragmented, with the recorded data spread across 3 files.

   a) A very wide measurement data file with reading values for 561 features
   b) A single column file, listing the activity performed. Each row corresponds to a row in a). 
   c) A single column file, listing the test subject involved. Similarly, every row corresponds to a row in a).

These files resides in the `test` subdirectory as is the nature of the collection.
A similar set for data recorded during training is found in the `train` subdirectory.

This effectively brings the file count to 6.
Since file (a) contains only the instrumental readings, there are no 'keys' to attribute to what or whom each observation was for.

Hence, the steps I took to tidy the data has been listed below.

1. Combine the 
   - training measurement data file (See `Part 3a) Training Data`) with 7352 rows and 561 columns
   - testing measurement data file (`Part 4a) Test Data`) with 2947 rows and 561 columns
   - into a rectangular data set with 10299 rows and 561 columns.

2. Combine the
   - training activities data file (See `Part 3b) Training Activities`) with 7352 rows and 1 column   
   - testing activities data file (See `Part 4b) Test Activities`) with 2947 rows and 1 column
   - into a long, single column data set with 10299 rows and 1 column.

3. Combine the 
   - training subjects data file (See `Part 3c) Training Subjects`) with 7352 rows and 1 column
   - testing subjects data file (See `Part 4a) Test Subjects`) with 2947 rows and 1 column
   - into a long, single column data set with 10299 rows and 1 column.

4. Perform a column-wise bind on the datasets from previous steps 
   - activities + subjects + measurement data
   - into a resulting data set with 10299 rows and 563 columns.

5. Since we are only interested in data involving mean and standard deviation measurements, 
   the data set is pared down to remove columns that we are not interested in.
   - The pared down data set now has 10299 rows and 68 columns.<br/>
   On hindsight, it would be more optimized to pare down the measurement data set before performing the column bind.

6. Rows in the reduced data set is then updated with appropriate labels for the activities.

7. Column headings involving features are also updated with more user-friendly descriptions.

As a final step, another independent tidy data set is created with the average of each variable for each activity and each subject.