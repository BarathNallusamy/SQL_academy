CREATE TABLE CourseScheduleTrainers
(
CourseScheduleTrainersID INT NOT NULL IDENTITY(1,1),
TrainerID INT NOT NULL,
TrainerType CHAR(1),
CourseScheduleID INT FOREIGN KEY (CourseScheduleID) REFERENCES CourseSchedule(CourseScheduleID),
PRIMARY KEY(CourseScheduleTrainersID),
CONSTRAINT  fk1 FOREIGN KEY (TrainerID) REFERENCES dbo.Employees(EmployeeID)
)
;