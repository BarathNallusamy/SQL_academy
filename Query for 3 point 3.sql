SELECT cc.CourseName,
CONVERT(VARCHAR(30), cs.StartDate, 103) AS "Start Date",
CONVERT(VARCHAR(30), cs.EndDate, 103) AS "End Date",
CASE WHEN cc.CourseName = 'BA-Test'
THEN CONVERT(VARCHAR(30), DATEADD(WEEK,8,cs.StartDate), 103)
ELSE CONVERT(VARCHAR(30), DATEADD(WEEK,12,cs.StartDate), 103) END AS 'Check Date',
a.AcademyName,
r.RoomName,
e.FirstName+' '+e.LastName AS "Trainer",
SUBSTRING(e2.FirstName,1,1)+''+ SUBSTRING(e2.LastName,1,1) AS "Spartan"
FROM CourseCatalog cc
INNER JOIN CourseSchedule cs ON cs.CourseID = cc.CourseID
INNER JOIN Academies a ON a.AcademyID = cs.AcademyID
INNER JOIN Rooms r ON r.AcademyID = a.AcademyID
INNER JOIN CourseScheduleTrainers cst ON cst.CourseScheduleID = cs.CourseScheduleID
INNER JOIN Employees e ON e.EmployeeID = cst.TrainerID
INNER JOIN CourseScheduleAttendees csa ON csa.CourseScheduleID = cs.CourseScheduleID
INNER JOIN Employees e2 ON e2.EmployeeID = csa.AttendeeID
ORDER BY cc.CourseName; -- Lists check date based on coursename  (3.3)