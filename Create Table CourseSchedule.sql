BEGIN
CREATE TABLE CourseSchedule
(
CourseScheduleID INT NOT NULL IDENTITY(1,1),
AcademyID INT FOREIGN KEY (AcademyID) REFERENCES Academies(AcademyID),
RoomID INT FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID),
CourseID INT FOREIGN KEY (CourseID) REFERENCES CourseCatalog(CourseID),
StartDate DATE,
EndDate DATE
PRIMARY KEY(CourseScheduleID)
)
END;