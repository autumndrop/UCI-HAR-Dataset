This code book explains the variables in tidy_data.txt

General Summary:
tidy_data.txt contains the tidy data set with the average of each variable for each activity and each subject required by Step 5 of the project. There are 180 observations and 70 variables. 

Detailed Explanation (First two are grouping variables and rest 68 are average of each variable in data set including subject and activity):
1 Group.1: grouping variable, subject
2 Group.2: grouping variable, activity
3 subject: average of subject ID
4 activity: avearage of acitivities, here are all NA
5 tBodyAcc-mean()-X
6 tBodyAcc-mean()-Y
7 tBodyAcc-mean()-Z
8 tGravityAcc-mean()-X
9 tGravityAcc-mean()-Y
10 tGravityAcc-mean()-Z
11 tBodyAccJerk-mean()-X
12 tBodyAccJerk-mean()-Y
13 tBodyAccJerk-mean()-Z
14 tBodyGyro-mean()-X
15 tBodyGyro-mean()-Y
16 tBodyGyro-mean()-Z
17 tBodyGyroJerk-mean()-X
18 tBodyGyroJerk-mean()-Y
19 tBodyGyroJerk-mean()-Z
20 tBodyAccMag-mean()
21 tGravityAccMag-mean()
22 tBodyAccJerkMag-mean()
23 tBodyGyroMag-mean()
24 tBodyGyroJerkMag-mean()
25 fBodyAcc-mean()-X
26 fBodyAcc-mean()-Y
27 fBodyAcc-mean()-Z
28 fBodyAccJerk-mean()-X
29 fBodyAccJerk-mean()-Y
30 fBodyAccJerk-mean()-Z
31 fBodyGyro-mean()-X
32 fBodyGyro-mean()-Y
33 fBodyGyro-mean()-Z
34 fBodyAccMag-mean()
35 fBodyBodyAccJerkMag-mean()
36 fBodyBodyGyroMag-mean()
37 fBodyBodyGyroJerkMag-mean()
38 tBodyAcc-std()-X
39 tBodyAcc-std()-Y
40 tBodyAcc-std()-Z
41 tGravityAcc-std()-X
42 tGravityAcc-std()-Y
43 tGravityAcc-std()-Z
44 tBodyAccJerk-std()-X
45 tBodyAccJerk-std()-Y
46 tBodyAccJerk-std()-Z
47 tBodyGyro-std()-X
48 tBodyGyro-std()-Y
49 tBodyGyro-std()-Z
50 tBodyGyroJerk-std()-X
51 tBodyGyroJerk-std()-Y
52 tBodyGyroJerk-std()-Z
53 tBodyAccMag-std()
54 tGravityAccMag-std()
55 tBodyAccJerkMag-std()
56 tBodyGyroMag-std()
57 tBodyGyroJerkMag-std()
58 fBodyAcc-std()-X
59 fBodyAcc-std()-Y
60 fBodyAcc-std()-Z
61 fBodyAccJerk-std()-X
62 fBodyAccJerk-std()-Y
63 fBodyAccJerk-std()-Z
64 fBodyGyro-std()-X
65 fBodyGyro-std()-Y
66 fBodyGyro-std()-Z
67 fBodyAccMag-std()
68 fBodyBodyAccJerkMag-std()
69 fBodyBodyGyroMag-std()
70 fBodyBodyGyroJerkMag-std()


For variables form 5 to 70:

They all represent the average of the features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

mean(): Mean value
std(): Standard deviation
