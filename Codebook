# Codebook.md

The following describes the file produced by the script “run_analysis()” on the data files supplied for the course project.

The file is a space delimited “flat” file with 563 columns (each representing one variable) with 10,299 rows (each representing one observation).  It is the result of combining the training and test datasets generated from experiments with a group of 30 volunteers performing various activities (walking, standing, sitting…etc) while wearing a Samsung galaxy SII with an embedded gyroscope and accelerometer.  Time based data was captured at a rate of 50 Hz and was then transformed using Fast Fourier Transform (FFT) to generate frequency based data as well.
Only the data recorded in the following data files were treated with : 
1.“X_train.txt, 
2. X_test.txt, 
3. y_train.txt, 
4. y_test.txt,
5.  subject_train.txt 
6. subject_test.txt 

The files in the the folders “Inertial Signals” were ignored as they contained the raw data from which the summarized statistical data in the above files were computed.  The project required the extraction of the mean and standard deviation data already contained in the above files,  and hence only these files were treated with.

**Description of Fields**
 
The “Activity.Code” Field contains a code for each of six activities performed by the participants (eg. 1 for walking, 2 for standing, 3 for wakling upstairs …etc)
The “Subject.Number” field contains an id number for each person participating in the experiment.
Both of these fields (first 2 columns) were derived from the “y” and “subject” files which were then merged with data from the “X” data files (subsequent columns).
Each of the subsequent fields/columns contain signal data generated from the gyroscope and accelerometer embedded in the smartphones worn by the participants.  The field names were renamed to more clearly describe the data contained. For instance “Time.Based.Body.Accelerometer.Signal.X.Axis-Mean” is the mean of the accelerometer signals of body movement along the X-axis isolated from effects of gravity.  The remaining field names are similarly descriptive (concatenated with “.” Separator for easier reading).

A comprehensive list of field names are given below:
1	Time.Based.Body.Accelerometer.Signal.X.Axis-Mean
2	Time.Based.Body.Accelerometer.Signal.Y.Axis-Mean
3	Time.Based.Body.Accelerometer.Signal.Z.Axis-Mean
4	Time.Based.Body.Accelerometer.Signal.X.Axis-Standard.Deviation
5	Time.Based.Body.Accelerometer.Signal.Y.Axis-Standard.Deviation
6	Time.Based.Body.Accelerometer.Signal.Z.Axis-Standard.Deviation
7	Time.Based.Gravity.Accelerometer.Signal.X.Axis-Mean
8	Time.Based.Gravity.Accelerometer.Signal.Y.Axis-Mean
9	Time.Based.Gravity.Accelerometer.Signal.Z.Axis-Mean
10	Time.Based.Gravity.Accelerometer.Signal.X.Axis-Standard.Deviation
11	Time.Based.Gravity.Accelerometer.Signal.Y.Axis-Standard.Deviation
12	Time.Based.Gravity.Accelerometer.Signal.Z.Axis-Standard.Deviation
13	Time.Based.Body.Accelerometer.Jerk.Signal.X.Axis-Mean
14	Time.Based.Body.Accelerometer.Jerk.Signal.Y.Axis-Mean
15	Time.Based.Body.Accelerometer.Jerk.Signal.Z.Axis-Mean
16	Time.Based.Body.Accelerometer.Jerk.Signal.X.Axis-Standard.Deviation
17	Time.Based.Body.Accelerometer.Jerk.Signal.Y.Axis-Standard.Deviation
18	Time.Based.Body.Accelerometer.Jerk.Signal.Z.Axis-Standard.Deviation
19	Time.Based.Body.Gyroscopic.Signal.X.Axis-Mean
20	Time.Based.Body.Gyroscopic.Signal.Y.Axis-Mean
21	Time.Based.Body.Gyroscopic.Signal.Z.Axis-Mean
22	Time.Based.Body.Gyroscopic.Signal.X.Axis-Standard.Deviation
23	Time.Based.Body.Gyroscopic.Signal.Y.Axis-Standard.Deviation
24	Time.Based.Body.Gyroscopic.Signal.Z.Axis-Standard.Deviation
25	Time.Based.Body.Gyroscopic.Jerk.Signal.X.Axis-Mean
26	Time.Based.Body.Gyroscopic.Jerk.Signal.Y.Axis-Mean
27	Time.Based.Body.Gyroscopic.Jerk.Signal.Z.Axis-Mean
28	Time.Based.Body.Gyroscopic.Jerk.Signal.X.Axis-Standard.Deviation
29	Time.Based.Body.Gyroscopic.Jerk.Signal.Y.Axis-Standard.Deviation
30	Time.Based.Body.Gyroscopic.Jerk.Signal.Z.Axis-Standard.Deviation
31	Time.Based.Body.Accelerometer.Magnitude.X.Axis-Mean
32	Time.Based.Body.Accelerometer.Magnitude.Y.Axis-Mean
33	Time.Based.Body.Accelerometer.Magnitude.Z.Axis-Mean
34	Time.Based.Body.Accelerometer.Magnitude.X.Axis-Standard.Deviation
35	Time.Based.Body.Accelerometer.Magnitude.Y.Axis-Standard.Deviation
36	Time.Based.Body.Accelerometer.Magnitude.Z.Axis-Standard.Deviation
37	Time.Based.Body.Accelerometer.Jerk.Magnitude-Mean
38	Time.Based.Body.Accelerometer.Jerk.Magnitude-Standard.Deviation
39	Time.Based.Body.Gyroscopic.Magnitude-Mean
40	Time.Based.Body.Gyroscopic.Magnitude-Standard.Deviation
41	Time.Based.Body.Gyroscopic.Jerk.Magnitude-Mean
42	Time.Based.Body.Gyroscopic.Jerk.Magnitude-Standard.Deviation
43	Frequency.Based.Body.Accelerometer.Signal.X.Axis-Mean
44	Frequency.Based.Body.Accelerometer.Signal.Y.Axis-Mean
45	Frequency.Based.Body.Accelerometer.Signal.Z.Axis-Mean
46	Frequency.Based.Body.Accelerometer.Signal.X.Axis-Standard.Deviation
47	Frequency.Based.Body.Accelerometer.Signal.Y.Axis-Standard.Deviation
48	Frequency.Based.Body.Accelerometer.Signal.Z.Axis-Standard.Deviation
49	Frequency.Based.Body.Accelerometer.Jerk.Signal.X.Axis-Mean
50	Frequency.Based.Body.Accelerometer.Jerk.Signal.Y.Axis-Mean
51	Frequency.Based.Body.Accelerometer.Jerk.Signal.Z.Axis-Mean
52	Frequency.Based.Body.Accelerometer.Jerk.Signal.X.Axis-Standard.Deviation
53	Frequency.Based.Body.Accelerometer.Jerk.Signal.Y.Axis-Standard.Deviation
54	Frequency.Based.Body.Accelerometer.Jerk.Signal.Z.Axis-Standard.Deviation
55	Frequency.Based.Body.Gyroscopic.Signal.X.Axis-Mean
56	Frequency.Based.Body.Gyroscopic.Signal.Y.Axis-Mean
57	Frequency.Based.Body.Gyroscopic.Signal.Z.Axis-Mean
58	Frequency.Based.Body.Gyroscopic.Signal.X.Axis-Standard.Deviation
59	Frequency.Based.Body.Gyroscopic.Signal.Y.Axis-Standard.Deviation
60	Frequency.Based.Body.Gyroscopic.Signal.Z.Axis-Standard.Deviation
61	Frequency.Based.Body.Accelerometer.Magnitude-Mean
62	Frequency.Based.Body.Accelerometer.Magnitude-Standard.Deviation
63	Frequency.Based.Body.Accelerometer.Jerk.Magnitude-Mean
64	Frequency.Based.Body.Accelerometer.Jerk.Magnitude-Standard.Deviation
65	Frequency.Based.Body.Gyroscopic.Magnitude-Mean
66	Frequency.Based.Body.Gyroscopic.Magnitude-Standard.Deviation
67	Frequency.Based.Body.Gyroscopic.Jerk.Magnitude-Mean
68	Frequency.Based.Body.Gyroscopic.Jerk.Magnitude-Standard.Deviation

