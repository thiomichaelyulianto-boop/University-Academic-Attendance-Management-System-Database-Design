INSERT ALL
    INTO STUDENT (studentID, studentName, studentPass, studentTelNo, studentEmail, studentDOB, studentGender) VALUES ('S0001', 'Andi Wijaya', 'pass123', '081234567890', 'andi@gmail.com', TO_DATE('2000-06-15', 'YYYY-MM-DD'), 'Male')
    INTO STUDENT (studentID, studentName, studentPass, studentTelNo, studentEmail, studentDOB, studentGender) VALUES ('S0002', 'Budi Santoso', 'pass456', '081234567891', 'budi@gmail.com', TO_DATE('2001-03-10', 'YYYY-MM-DD'), 'Male')
    INTO STUDENT (studentID, studentName, studentPass, studentTelNo, studentEmail, studentDOB, studentGender) VALUES ('S0003', 'Citra Dewi', 'pass789', '081234567892', 'citra@gmail.com', TO_DATE('2002-08-20', 'YYYY-MM-DD'), 'Female')
    INTO STUDENT (studentID, studentName, studentPass, studentTelNo, studentEmail, studentDOB, studentGender) VALUES ('S0004', 'Dian Prasetyo', 'passabc', '081234567893', 'dian@gmail.com', TO_DATE('2000-12-05', 'YYYY-MM-DD'), 'Male')
    INTO STUDENT (studentID, studentName, studentPass, studentTelNo, studentEmail, studentDOB, studentGender) VALUES ('S0005', 'Eka Putri', 'passdef', '081234567894', 'eka@gmail.com', TO_DATE('1999-07-25', 'YYYY-MM-DD'), 'Female')
    INTO STUDENT (studentID, studentName, studentPass, studentTelNo, studentEmail, studentDOB, studentGender) VALUES ('S0006', 'Fajar Hidayat', 'passghi', '081234567895', 'fajar@gmail.com', TO_DATE('2003-11-30', 'YYYY-MM-DD'), 'Male')
    INTO STUDENT (studentID, studentName, studentPass, studentTelNo, studentEmail, studentDOB, studentGender) VALUES ('S0007', 'Gita Anjani', 'passjkl', '081234567896', 'gita@gmail.com', TO_DATE('2001-05-18', 'YYYY-MM-DD'), 'Female')
    INTO STUDENT (studentID, studentName, studentPass, studentTelNo, studentEmail, studentDOB, studentGender) VALUES ('S0008', 'Hadi Susanto', 'passmno', '081234567897', 'hadi@gmail.com', TO_DATE('2000-09-22', 'YYYY-MM-DD'), 'Male')
    INTO STUDENT (studentID, studentName, studentPass, studentTelNo, studentEmail, studentDOB, studentGender) VALUES ('S0009', 'Indra Lesmana', 'passpqr', '081234567898', 'indra@gmail.com', TO_DATE('1998-04-12', 'YYYY-MM-DD'), 'Male')
    INTO STUDENT (studentID, studentName, studentPass, studentTelNo, studentEmail, studentDOB, studentGender) VALUES ('S0010', 'Jasmine Halim', 'passstu', '081234567899', 'jasmine@gmail.com', TO_DATE('2002-02-08', 'YYYY-MM-DD'), 'Female')
SELECT * FROM  DUAL

INSERT ALL
    INTO FINGERPRINT (studentFPID, fingerprintRec, studentID ) VALUES ('FP001', EMPTY_BLOB(), 'S0001')
    INTO FINGERPRINT (studentFPID, fingerprintRec, studentID ) VALUES ('FP002', EMPTY_BLOB(), 'S0002')
    INTO FINGERPRINT (studentFPID, fingerprintRec, studentID ) VALUES ('FP003', EMPTY_BLOB(), 'S0003')
    INTO FINGERPRINT (studentFPID, fingerprintRec, studentID ) VALUES ('FP004', EMPTY_BLOB(), 'S0004')
    INTO FINGERPRINT (studentFPID, fingerprintRec, studentID ) VALUES ('FP005', EMPTY_BLOB(), 'S0005')
    INTO FINGERPRINT (studentFPID, fingerprintRec, studentID ) VALUES ('FP006', EMPTY_BLOB(), 'S0006')
    INTO FINGERPRINT (studentFPID, fingerprintRec, studentID ) VALUES ('FP007', EMPTY_BLOB(), 'S0007')
    INTO FINGERPRINT (studentFPID, fingerprintRec, studentID ) VALUES ('FP008', EMPTY_BLOB(), 'S0008')
    INTO FINGERPRINT (studentFPID, fingerprintRec, studentID ) VALUES ('FP009', EMPTY_BLOB(), 'S0009')
    INTO FINGERPRINT (studentFPID, fingerprintRec, studentID ) VALUES ('FP010', EMPTY_BLOB(), 'S0010')
SELECT * FROM  DUAL

INSERT ALL
    INTO LECTURER (lecturerID, lecName, lecPass, lecTelNo, lecEmail, lecDOB, lecGender) VALUES ('L0001', 'Dr. Ahmad Fauzi', 'lec123', '08121111111', 'ahmad@gmail.com', TO_DATE('1980-05-12', 'YYYY-MM-DD'), 'Male')
    INTO LECTURER (lecturerID, lecName, lecPass, lecTelNo, lecEmail, lecDOB, lecGender) VALUES ('L0002', 'Prof. Susan Dewi', 'lec456', '08121111112', 'susan@gmail.com', TO_DATE('1975-09-18', 'YYYY-MM-DD'), 'Female')
    INTO LECTURER (lecturerID, lecName, lecPass, lecTelNo, lecEmail, lecDOB, lecGender) VALUES ('L0003', 'Dr. Bambang Setiawan', 'lec789', '08121111113', 'bambang@gmail.com', TO_DATE('1982-03-20', 'YYYY-MM-DD'), 'Male')
    INTO LECTURER (lecturerID, lecName, lecPass, lecTelNo, lecEmail, lecDOB, lecGender) VALUES ('L0004', 'Dr. Kartika Sari', 'lecabc', '08121111114', 'kartika@gmail.com', TO_DATE('1978-07-30', 'YYYY-MM-DD'), 'Female')
    INTO LECTURER (lecturerID, lecName, lecPass, lecTelNo, lecEmail, lecDOB, lecGender) VALUES ('L0005', 'Dr. Rudi Hartono', 'lecdef', '08121111115', 'rudi@gmail.com', TO_DATE('1985-01-10', 'YYYY-MM-DD'), 'Male')
SELECT * FROM  DUAL

INSERT ALL
    INTO SUBJECT (subCode, subName) VALUES ('SUB01', 'Database Systems')
    INTO SUBJECT (subCode, subName) VALUES ('SUB02', 'Artificial Intelligence')
    INTO SUBJECT (subCode, subName) VALUES ('SUB03', 'Software Engineering')
    INTO SUBJECT (subCode, subName) VALUES ('SUB04', 'Computer Networks')
    INTO SUBJECT (subCode, subName) VALUES ('SUB05', 'Operating Systems')
SELECT * FROM  DUAL

INSERT ALL
    INTO CLASSROOM (classroomID, classroomSeat) VALUES ('C001', 50)
    INTO CLASSROOM (classroomID, classroomSeat) VALUES ('C002', 40)
    INTO CLASSROOM (classroomID, classroomSeat) VALUES ('C003', 60)
    INTO CLASSROOM (classroomID, classroomSeat) VALUES ('C004', 35)
    INTO CLASSROOM (classroomID, classroomSeat) VALUES ('C005', 45)
SELECT * FROM  DUAL

INSERT ALL
    INTO CLASS_HOUR (classHrsID, timeStart, timeEnd, day) VALUES ('CH001', TO_TIMESTAMP('08:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('10:00:00', 'HH24:MI:SS'), 'Monday')
    INTO CLASS_HOUR (classHrsID, timeStart, timeEnd, day) VALUES ('CH002', TO_TIMESTAMP('10:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('12:00:00', 'HH24:MI:SS'), 'Tuesday')
    INTO CLASS_HOUR (classHrsID, timeStart, timeEnd, day) VALUES ('CH003', TO_TIMESTAMP('13:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('15:00:00', 'HH24:MI:SS'), 'Wednesday')
    INTO CLASS_HOUR (classHrsID, timeStart, timeEnd, day) VALUES ('CH004', TO_TIMESTAMP('15:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('17:00:00', 'HH24:MI:SS'), 'Thursday')
    INTO CLASS_HOUR (classHrsID, timeStart, timeEnd, day) VALUES ('CH005', TO_TIMESTAMP('08:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('10:00:00', 'HH24:MI:SS'), 'Friday')
SELECT * FROM DUAL;

INSERT ALL
    INTO CLASS_DETAIL (classDetailsID, classroomID, subCode, lecturerID, classHrsID) VALUES ('CD001', 'C001', 'SUB01', 'L0001', 'CH001')
    INTO CLASS_DETAIL (classDetailsID, classroomID, subCode, lecturerID, classHrsID) VALUES ('CD002', 'C002', 'SUB02', 'L0002', 'CH002')
    INTO CLASS_DETAIL (classDetailsID, classroomID, subCode, lecturerID, classHrsID) VALUES ('CD003', 'C003', 'SUB03', 'L0003', 'CH003')
    INTO CLASS_DETAIL (classDetailsID, classroomID, subCode, lecturerID, classHrsID) VALUES ('CD004', 'C004', 'SUB04', 'L0004', 'CH004')
    INTO CLASS_DETAIL (classDetailsID, classroomID, subCode, lecturerID, classHrsID) VALUES ('CD005', 'C005', 'SUB05', 'L0005', 'CH005')
SELECT * FROM  DUAL

INSERT ALL
    INTO STU_CLASS (stuClassID, studentID, classDetailsID) VALUES ('SC001', 'S0001', 'CD001')
    INTO STU_CLASS (stuClassID, studentID, classDetailsID) VALUES ('SC002', 'S0002', 'CD002')
    INTO STU_CLASS (stuClassID, studentID, classDetailsID) VALUES ('SC003', 'S0003', 'CD003')
    INTO STU_CLASS (stuClassID, studentID, classDetailsID) VALUES ('SC004', 'S0004', 'CD001')
    INTO STU_CLASS (stuClassID, studentID, classDetailsID) VALUES ('SC005', 'S0005', 'CD002')
    INTO STU_CLASS (stuClassID, studentID, classDetailsID) VALUES ('SC006', 'S0006', 'CD003')
    INTO STU_CLASS (stuClassID, studentID, classDetailsID) VALUES ('SC007', 'S0007', 'CD001')
    INTO STU_CLASS (stuClassID, studentID, classDetailsID) VALUES ('SC008', 'S0008', 'CD002')
    INTO STU_CLASS (stuClassID, studentID, classDetailsID) VALUES ('SC009', 'S0009', 'CD003')
    INTO STU_CLASS (stuClassID, studentID, classDetailsID) VALUES ('SC010', 'S0010', 'CD001')
SELECT * FROM  DUAL

INSERT ALL
    INTO ATTENDANCE (attendanceID, attendanceStatus, attendanceDate, stuClassID) VALUES ('A001', 'Present', TO_DATE('2025-03-25', 'YYYY-MM-DD'), 'SC001')
    INTO ATTENDANCE (attendanceID, attendanceStatus, attendanceDate, stuClassID) VALUES ('A002', 'Absent', TO_DATE('2025-03-25', 'YYYY-MM-DD'), 'SC002')
    INTO ATTENDANCE (attendanceID, attendanceStatus, attendanceDate, stuClassID) VALUES ('A003', 'Late', TO_DATE('2025-03-26', 'YYYY-MM-DD'), 'SC003')
    INTO ATTENDANCE (attendanceID, attendanceStatus, attendanceDate, stuClassID) VALUES ('A004', 'Present', TO_DATE('2025-03-26', 'YYYY-MM-DD'), 'SC004')
    INTO ATTENDANCE (attendanceID, attendanceStatus, attendanceDate, stuClassID) VALUES ('A005', 'Absent', TO_DATE('2025-03-27', 'YYYY-MM-DD'), 'SC005')
    INTO ATTENDANCE (attendanceID, attendanceStatus, attendanceDate, stuClassID) VALUES ('A006', 'Late', TO_DATE('2025-03-27', 'YYYY-MM-DD'), 'SC006')
    INTO ATTENDANCE (attendanceID, attendanceStatus, attendanceDate, stuClassID) VALUES ('A007', 'Present', TO_DATE('2025-03-28', 'YYYY-MM-DD'), 'SC007')
    INTO ATTENDANCE (attendanceID, attendanceStatus, attendanceDate, stuClassID) VALUES ('A008', 'Absent', TO_DATE('2025-03-28', 'YYYY-MM-DD'), 'SC008')
    INTO ATTENDANCE (attendanceID, attendanceStatus, attendanceDate, stuClassID) VALUES ('A009', 'Present', TO_DATE('2025-03-29', 'YYYY-MM-DD'), 'SC009')
    INTO ATTENDANCE (attendanceID, attendanceStatus, attendanceDate, stuClassID) VALUES ('A010', 'Late', TO_DATE('2025-03-29', 'YYYY-MM-DD'), 'SC010')
SELECT * FROM  DUAL