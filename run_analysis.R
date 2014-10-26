run_analysis <- function(){
 
 #Storing working directory for return to it at the end
 wd <- getwd()
 
 # Setting directory to folder with data files
 setwd("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")
 
 # Reading in, and combining y data
 tmp1 <- read.table("./test/y_test.txt", colClasses="numeric")
 tmp2 <- read.table("./train/y_train.txt", colClasses="numeric")
 y <- rbind(tmp1,tmp2)
 
 # Reading in, and combining subject data
 tmp1 <- read.table("./test/subject_test.txt", colClasses="numeric")
 tmp2 <- read.table("./train/subject_train.txt", colClasses="numeric")
 subject <- rbind(tmp1, tmp2)
 
 # Reading in, and combining X data
 tmp1 <- read.table("./test/X_test.txt", colClasses="numeric")
 tmp2 <- read.table("./train/X_train.txt", colClasses="numeric")
 x <- rbind(tmp1, tmp2)
 
 # Combining "Y", "Subject" and "X" data to form single dataset
 ds <- cbind(y, subject, x)
 
 #Subsetting dataset to extract Mean and Std.Dev. Values
 xtractor <- c(1:8,41:46,81:86,121:126,161:166,201:206,
               227:228,240:241,253:254,266:271,345:350,
               424:429,503:504,516:517,529:530,542:543)
 
 dsf <- ds[,c(xtractor)]
 
 # Creating vector with column names
 cnames <- c("Time.Based.Body.Accelerometer.Signal.X.Axis-Mean",
             "Time.Based.Body.Accelerometer.Signal.Y.Axis-Mean",
             "Time.Based.Body.Accelerometer.Signal.Z.Axis-Mean",
             "Time.Based.Body.Accelerometer.Signal.X.Axis-Standard.Deviation",
             "Time.Based.Body.Accelerometer.Signal.Y.Axis-Standard.Deviation",
             "Time.Based.Body.Accelerometer.Signal.Z.Axis-Standard.Deviation",
             "Time.Based.Gravity.Accelerometer.Signal.X.Axis-Mean",
             "Time.Based.Gravity.Accelerometer.Signal.Y.Axis-Mean",
             "Time.Based.Gravity.Accelerometer.Signal.Z.Axis-Mean",
             "Time.Based.Gravity.Accelerometer.Signal.X.Axis-Standard.Deviation",
             "Time.Based.Gravity.Accelerometer.Signal.Y.Axis-Standard.Deviation",
             "Time.Based.Gravity.Accelerometer.Signal.Z.Axis-Standard.Deviation",
             "Time.Based.Body.Accelerometer.Jerk.Signal.X.Axis-Mean",
             "Time.Based.Body.Accelerometer.Jerk.Signal.Y.Axis-Mean",
             "Time.Based.Body.Accelerometer.Jerk.Signal.Z.Axis-Mean",
             "Time.Based.Body.Accelerometer.Jerk.Signal.X.Axis-Standard.Deviation",
             "Time.Based.Body.Accelerometer.Jerk.Signal.Y.Axis-Standard.Deviation",
             "Time.Based.Body.Accelerometer.Jerk.Signal.Z.Axis-Standard.Deviation",
             "Time.Based.Body.Gyroscopic.Signal.X.Axis-Mean",
             "Time.Based.Body.Gyroscopic.Signal.Y.Axis-Mean",
             "Time.Based.Body.Gyroscopic.Signal.Z.Axis-Mean",
             "Time.Based.Body.Gyroscopic.Signal.X.Axis-Standard.Deviation",
             "Time.Based.Body.Gyroscopic.Signal.Y.Axis-Standard.Deviation",
             "Time.Based.Body.Gyroscopic.Signal.Z.Axis-Standard.Deviation",
             "Time.Based.Body.Gyroscopic.Jerk.Signal.X.Axis-Mean",
             "Time.Based.Body.Gyroscopic.Jerk.Signal.Y.Axis-Mean",
             "Time.Based.Body.Gyroscopic.Jerk.Signal.Z.Axis-Mean",
             "Time.Based.Body.Gyroscopic.Jerk.Signal.X.Axis-Standard.Deviation",
             "Time.Based.Body.Gyroscopic.Jerk.Signal.Y.Axis-Standard.Deviation",
             "Time.Based.Body.Gyroscopic.Jerk.Signal.Z.Axis-Standard.Deviation",
             "Time.Based.Body.Accelerometer.Magnitude.X.Axis-Mean",
             "Time.Based.Body.Accelerometer.Magnitude.Y.Axis-Mean",
             "Time.Based.Body.Accelerometer.Magnitude.Z.Axis-Mean",
             "Time.Based.Body.Accelerometer.Magnitude.X.Axis-Standard.Deviation",
             "Time.Based.Body.Accelerometer.Magnitude.Y.Axis-Standard.Deviation",
             "Time.Based.Body.Accelerometer.Magnitude.Z.Axis-Standard.Deviation",
             "Time.Based.Body.Accelerometer.Jerk.Magnitude-Mean",
             "Time.Based.Body.Accelerometer.Jerk.Magnitude-Standard.Deviation",
             "Time.Based.Body.Gyroscopic.Magnitude-Mean",
             "Time.Based.Body.Gyroscopic.Magnitude-Standard.Deviation",
             "Time.Based.Body.Gyroscopic.Jerk.Magnitude-Mean",
             "Time.Based.Body.Gyroscopic.Jerk.Magnitude-Standard.Deviation",
             "Frequency.Based.Body.Accelerometer.Signal.X.Axis-Mean",
             "Frequency.Based.Body.Accelerometer.Signal.Y.Axis-Mean",
             "Frequency.Based.Body.Accelerometer.Signal.Z.Axis-Mean",
             "Frequency.Based.Body.Accelerometer.Signal.X.Axis-Standard.Deviation",
             "Frequency.Based.Body.Accelerometer.Signal.Y.Axis-Standard.Deviation",
             "Frequency.Based.Body.Accelerometer.Signal.Z.Axis-Standard.Deviation",
             "Frequency.Based.Body.Accelerometer.Jerk.Signal.X.Axis-Mean",
             "Frequency.Based.Body.Accelerometer.Jerk.Signal.Y.Axis-Mean",
             "Frequency.Based.Body.Accelerometer.Jerk.Signal.Z.Axis-Mean",
             "Frequency.Based.Body.Accelerometer.Jerk.Signal.X.Axis-Standard.Deviation",
             "Frequency.Based.Body.Accelerometer.Jerk.Signal.Y.Axis-Standard.Deviation",
             "Frequency.Based.Body.Accelerometer.Jerk.Signal.Z.Axis-Standard.Deviation",
             "Frequency.Based.Body.Gyroscopic.Signal.X.Axis-Mean",
             "Frequency.Based.Body.Gyroscopic.Signal.Y.Axis-Mean",
             "Frequency.Based.Body.Gyroscopic.Signal.Z.Axis-Mean",
             "Frequency.Based.Body.Gyroscopic.Signal.X.Axis-Standard.Deviation",
             "Frequency.Based.Body.Gyroscopic.Signal.Y.Axis-Standard.Deviation",
             "Frequency.Based.Body.Gyroscopic.Signal.Z.Axis-Standard.Deviation",
             "Frequency.Based.Body.Accelerometer.Magnitude-Mean",
             "Frequency.Based.Body.Accelerometer.Magnitude-Standard.Deviation",
             "Frequency.Based.Body.Accelerometer.Jerk.Magnitude-Mean",
             "Frequency.Based.Body.Accelerometer.Jerk.Magnitude-Standard.Deviation",
             "Frequency.Based.Body.Gyroscopic.Magnitude-Mean",
             "Frequency.Based.Body.Gyroscopic.Magnitude-Standard.Deviation",
             "Frequency.Based.Body.Gyroscopic.Jerk.Magnitude-Mean",
             "Frequency.Based.Body.Gyroscopic.Jerk.Magnitude-Standard.Deviation"
            )
 
 cnames <- c("Activity.Code", "Subject.Number", cnames)
 
 # Adding Column Names to the dataset
 colnames(dsf) <- cnames
 
 # Returning to original workig directory
 setwd(wd)
 
 dsf
 
 write.table(dsf, file="tidy_data_set.txt",row.names=FALSE)
 
 
 
 
 
 
}
