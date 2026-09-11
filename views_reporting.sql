CREATE VIEW StudentAttendanceCounts AS
SELECT StudentID, StudentName, AttendanceStatus, COUNT(*) AS TotalCount
FROM (
    SELECT ST.studentID, ST.studentName, AE.attendancestatus
    FROM STUDENT ST
    INNER JOIN STU_CLASS SC ON ST.studentID = SC.studentID
    INNER JOIN ATTENDANCE AE ON SC.stuClassID = AE.stuClassID
    WHERE AE.attendancestatus = 'Present'
    UNION 
    SELECT ST.studentID, ST.studentName, AE.attendancestatus
    FROM STUDENT ST
    INNER JOIN STU_CLASS SC ON ST.studentID = SC.studentID
    INNER JOIN ATTENDANCE AE ON SC.stuClassID = AE.stuClassID
    WHERE AE.attendancestatus = 'Absent'
    ) CombinedAttendanceRecords 
GROUP BY
    StudentID, StudentName, AttendanceStatus;