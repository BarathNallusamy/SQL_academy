CREATE TABLE CourseScheduleAttendees
(
CourseScheduleAttendeesID INT NOT NULL IDENTITY(1,1),
AttendeeID INT NOT NULL,
Active bit NOT NULL,
CourseScheduleID INT FOREIGN KEY (CourseScheduleID) REFERENCES CourseSchedule(CourseScheduleID),
PRIMARY KEY(CourseScheduleAttendeesID),
CONSTRAINT  fk2 FOREIGN KEY (AttendeeID) REFERENCES dbo.Employees(EmployeeID)
)
;