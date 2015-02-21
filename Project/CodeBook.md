###Data Set Code Book: 
Human Activity Recognition Using Smartphones

Codebook Version 1.0
February 20, 2015

Codebook prepared by TSC based on data set she downloaded at the following URL:

	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The downloaded 'UCI HAR Dataset.zip' file when unzipped contains:

1. 1 folder for the training data
2. 1 folder for the test data
3. 3 text files 

	a. features.txt
	b. features_info.txt 
	c. README.txt

Disclaimer:
The above dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
\==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
\==================================================================


###Data Collection Description
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


###The Data Set
The project was carried out with 30 subjects aged between 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 

The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

See 'features_info.txt' for more details. 

For each record, it is provided:

1. Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
  Depending on whether the data was collected as part of training or testing, the data files are either in
  - ./UCI HAR Dataset/train/Inertial Signals/
  - ./UCI HAR Dataset/test/Inertial Signals/

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
<table>


2. Triaxial Angular velocity from the gyroscope. 
  Depending on whether the data was collected as part of training or testing, the data files are either in
  - ./UCI HAR Dataset/train/Inertial Signals/
  - ./UCI HAR Dataset/test/Inertial Signals/

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


3. A 561-feature vector with time and frequency domain variables.
  - See Part 3a) Training Data and
      Part 4a) Test Data  

4. Its activity label.
  - See Part 3b) Training Activities and
      Part 4b) Test Activities

5. An identifier of the subject who carried out the experiment.
  - See Part 3c) Training Subjects and 
      Part 4c) Test Subjects.


'Part 1: Activities'
	- List the activities measured in the experiment.
	Location: ./UCI HAR Dataset
File: activity_labels.txt
Observations: 6
Variables: 2

<table>
	<tr>
		<td colspan='2'>Part 2: Features</td>
	<tr>
	<tr>
		<td colspan='2'>- List of all features measured in the experiment.</td>
	<tr>
	<tr>
		<td>Location:</td>
		<td>./UCI HAR Dataset</td>
	<tr>
	<tr>
		<td>File:</td>
		<td>features.txt<br/>(features_info.txt provides more details)</td>
	<tr>
	<tr>
		<td>Obervations:</td>
		<td>561</td>
	<tr>
	<tr>
		<td>Variables:</td>
		<td>2</td>
</table>

<table>
	<tr>
		<td colspan='2'>Part 3: Training Data</td>
	</tr>
	<tr>
		<td colspan='2'>- A collection of text files containing data collected during a training session.</td>
	</tr>
	<tr>
		<td>Location:</td>
		<td>./UCI HAR Dataset/train</td>
	</tr>
<table>

a) Training Data
   File: X_train.txt
	 Contains measurement values for all features measured during training.
	 Each row represents a measurement taken of all features measured during training.
   Obervations: 7352
   Variables: 561

b) Training Activities
   File: y_train.txt
	 Contains activity IDs of the activities measured during the training.
	 Each row identifies the activity performed for each training window sample.
   Obervations: 7352
   Variables: 1

c) Training Subjects
   File: subject_train.txt
	 Contains IDs of the training subjects.
	 Each row identifies the subject who performed the activity for each training window sample.
   Obervations: 7352
   Variables: 1

'Part 4: Test Data'
	- A collection of text files containing data collected during a test run.
	Location: ./UCI HAR Dataset/test
a) Test Data
   File: X_test.txt
	 Contains measurement values for all features measured during the test run.
	 Each row represents a measurement taken of all features measured during the test run.
   Obervations: 2947
   Variables: 561

b) Test Activities
   File: y_test.txt
	 Contains activity IDs of the activities measured during the test run.
	 Each row identifies the activity performed for each test window sample.
   Obervations: 2947
   Variables: 1

c) Test Subjects
   File: subject_test.txt
	 Contains IDs of the training subjects.
	 Each row identifies the subject who performed the activity for each test window sample.
   Obervations: 2947
   Variables: 1

'Part 5: Miscellaneous Information'
	Other supporting information regarding the nature and use of files and fields.
Files: README.txt
       - Information presented here are derived from this file.
       features_info.txt
       - Accompanying information regarding the features measured in the project.

Codebook for Activities
| Variable Name		| Position	| Values			| Description			|
|-----------------------+---------------+-------------------------------+-------------------------------|
| id			| 1		| 1 - 6				| ID of activity measured	|
|			|		| 1 = WALKING			|				|
|			|		| 2 = WALKING_UPSTAIRS		|				|
|			|		| 3 = WALKING_DOWNSTAIRS	|				|
|			|		| 4 = SITTING			|				|
|			|		| 5 = STANDING			|				|
|			|		| 6 = LAYING			|				|
|-----------------------+---------------+-------------------------------+-------------------------------|
| activity		| 2		| WALKING			| Name of the activity measured	|
|			|		| WALKING_UPSTAIRS		|				|
|			|		| WALKING_DOWNSTAIRS		|				|
|			|		| SITTING			|				|
|			|		| STANDING			|				|
|			|		| LAYING			|				|
|-----------------------|---------------|-------------------------------|-------------------------------|


Codebook for Features
| Variable Name		| Position	| Values			| Description			|
|-----------------------|---------------|-------------------------------|-------------------------------|
| id			| 1		| 1 - 561			| ID of the feature measured	|
|-----------------------|---------------|-------------------------------|-------------------------------||			|		|				|				|
| feature		| 2		| tBodyAcc-mean()-X		| Name of the feature measured	|
|			|		| tBodyGyroJerk-mean()-X	| * See 'features.txt' 		|
|			|		| fBodyAcc-std()-X		|   for complete list of values	|
|			|		| angle(Z,gravityMean)		|				|
|			|		| ..list truncated		|				|
|-----------------------|---------------|-------------------------------|-------------------------------|
Notes: 
======
- Features are normalized and bounded within [-1,1].



Codebook for Training Data Files
a) Training Data
Variable Name		Position	Values			Description
V1 - V561		1		Numeric 		

b) Training Activities
activityId		1		1 - 6			ID of the activity measured

c) Training Subjects
subjectId		1		1 - 30			ID of the subject performing the activity


Codebook for Test Data Files
a) Test Data
| Variable Name | Position | Values  | Description                                           |
|---------------|----------|---------|-------------------------------------------------------|
| V1 - V561     | 1        | Numeric | Readings off the instruments Accelerometer, Gyroscope |
|               |          |         |                                                       |


b) Test Activities
| Variable Name | Position | Values  | Description                                           |
|---------------|----------|---------|-------------------------------------------------------|
| activityId	| 1	   | 1 - 6   | ID of the activity measured			     |
|               |          |         |                                                       |

c) Test Subjects
| Variable Name | Position | Values  | Description                                           |
|---------------|----------|---------|-------------------------------------------------------|
| subjectId	| 1	   | 1 - 30  | ID of the subject performing the activity	     |
|               |          |         |                                                       |

				

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
  (tsc: - contains the list of activities measured during either training or testing.
	test/subject_train.txt
	- Has 7352 rows - represents the number of measurements made during training
	- and 1 column - "subjectId")
 	test/subject_train.txt
	- Has 2947 rows - represents the number of measurements made during testing
	- and 1 column - "subjectId")

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. 
						  The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 



