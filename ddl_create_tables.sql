CREATE TABLE STUDENT (
    studentID CHAR(5) PRIMARY KEY,
    studentName VARCHAR(50) NOT NULL,
    studentPass VARCHAR(50) NOT NULL,
    studentTelNo VARCHAR(50) NOT NULL,
    studentEmail VARCHAR(50) NOT NULL,
    studentDOB DATE NOT NULL,
    studentGender VARCHAR (10) NOT NULL,
    CONSTRAINT STUDENT_studentID_CK CHECK(REGEXP_LIKE(studentID, '^S[0-9]{4}$')),
    CONSTRAINT STUDENT_studentTelNo_CK CHECK(REGEXP_LIKE(studentTelNo, '^08')),
    CONSTRAINT STUDENT_studentEmail_CK CHECK(REGEXP_LIKE(studentEmail, '@gmail.com$')),
    CONSTRAINT STUDENT_studentGender_CK CHECK(studentGender IN ('Male','Female'))
);

QUERY:
CREATE TABLE FINGERPRINT(
    studentFPID CHAR(5) PRIMARY KEY,
    fingerprintRec BLOB NOT NULL,
    studentID CHAR(5) NOT NULL,
    CONSTRAINT FINGERPRINT_studentFPID_CK CHECK(REGEXP_LIKE(studentFPID, '^FP[0-9]{3}$')),
    CONSTRAINT FINGERPRINT_studentFPID_FK FOREIGN KEY (studentID) REFERENCES STUDENT (studentID)
);

CREATE TABLE LECTURER(
    lecturerID CHAR(5) PRIMARY KEY,
    lecName VARCHAR(50) NOT NULL,
    lecPass Varchar(50) NOT NULL,
    lecTelNo VARCHAR(50) NOT NULL,
    lecEmail VARCHAR(50) NOT NULL,
    lecDOB DATE NOT NULL,
    lecGender VARCHAR (10) NOT NULL,
    CONSTRAINT LECTURER_lecturerID_CK CHECK(REGEXP_LIKE(lecturerID, '^L[0-9]{4}$')),
    CONSTRAINT LECTURER_lecTelNo_CK CHECK(REGEXP_LIKE(lecTelNo, '^08')),
    CONSTRAINT LECTURER_lecEmail_CK CHECK(REGEXP_LIKE(lecEmail, '@gmail.com$')),
    CONSTRAINT LECTURER_lecGender_CK CHECK(lecGender IN ('Male','Female'))
);

CREATE TABLE SUBJECT(
    subCode CHAR(5) PRIMARY KEY,
    subName VARCHAR(50) NOT NULL,
    CONSTRAINT SUBJECT_subCode_CK CHECK(REGEXP_LIKE(subCode, '^SUB[0-9]{2}$'))
);

CREATE TABLE CLASSROOM(
    classroomID CHAR(4) PRIMARY KEY,
    classroomSeat NUMBER(3,0) NOT NULL,
    CONSTRAINT CLASSROOM_classroomID_CK CHECK(REGEXP_LIKE(classroomID, '^C[0-9]{3}$'))
);


CREATE TABLE CLASS_HOUR(
    classHrsID CHAR(5) PRIMARY KEY,
    timeStart TIMESTAMP NOT NULL,
    timeEnd TIMESTAMP NOT NULL,
    day VARCHAR(10) NOT NULL,
    CONSTRAINT CLASS_HOUR_classHrsID_CK CHECK(REGEXP_LIKE(classHrsID, '^CH[0-9]{3}$'))
);

CREATE TABLE CLASS_DETAIL (
    classDetailsID CHAR(5) PRIMARY KEY,
    classroomID CHAR(4) NOT NULL,
    subCode CHAR(5) NOT NULL,
    lecturerID CHAR(5) NOT NULL,
    classHrsID CHAR(5) NOT NULL,
    CONSTRAINT CLASS_DETAIL_classDetailsID_CK CHECK(REGEXP_LIKE(classDetailsID, '^CD[0-9]{3}$')),
    CONSTRAINT CLASS_DETAIL_classroomID_FK FOREIGN KEY (classroomID) REFERENCES CLASSROOM (classroomID),
    CONSTRAINT CLASS_DETAIL_subCode_FK FOREIGN KEY (subCode) REFERENCES SUBJECT (subCode),
    CONSTRAINT CLASS_DETAIL_lecturerID_FK FOREIGN KEY (lecturerID) REFERENCES LECTURER (lecturerID),
    CONSTRAINT CLASS_DETAIL_classHrsID_FK FOREIGN KEY (classHrsID) REFERENCES CLASS_HOUR (classHrsID)
);

CREATE TABLE STU_CLASS (
    stuClassID CHAR(5) PRIMARY KEY,
    studentID CHAR(5) NOT NULL,
    classDetailsID CHAR(5) NOT NULL,
    CONSTRAINT STU_CLASS_stuClassID_CK CHECK(REGEXP_LIKE(stuClassID, '^SC[0-9]{3}$')),
    CONSTRAINT STU_CLASS_classDetailsID_FK FOREIGN KEY (classDetailsID) REFERENCES CLASS_DETAIL(classDetailsID),
    CONSTRAINT STU_CLASS_studentID_FK FOREIGN KEY (studentID) REFERENCES STUDENT(studentID)
);

CREATE TABLE ATTENDANCE(
    attendanceID CHAR(4) PRIMARY KEY,
    attendanceStatus VARCHAR(20) NOT NULL,
    attendanceDate DATE NOT NULL,
    stuClassID CHAR(5) NOT NULL,
    CONSTRAINT ATTENDANCE_attendanceID_CK CHECK(REGEXP_LIKE(attendanceID, '^A[0-9]{3}$')),
    CONSTRAINT ATTENDANCE_stuClassID_FK FOREIGN KEY (stuClassID) REFERENCES STU_CLASS(stuClassID)
);
