UPDATE STUDENT
SET studentTelNo = '081298765432', studentEmail = 'awijaya@gmail.com'
WHERE studentID = 'S0001';

UPDATE FINGERPRINT
SET studentID = 'S0009'
WHERE studentFPID = 'FP002';

UPDATE LECTURER
SET lecTelNo = '081617633450'
WHERE lecturerID = 'L0003';

UPDATE LECTURER
SET lecPass = 'newlecpass'
WHERE lecturerID = 'L0004';

UPDATE SUBJECT
SET subName = 'Cloud Computing'
WHERE subCode = 'SUB05';

UPDATE CLASSROOM
SET classroomSeat = 55
WHERE classroomID = 'C002';

UPDATE CLASS_HOUR
SET timeStart = TO_TIMESTAMP('13:30:00', 'HH24:MI:SS'), timeEnd = TO_TIMESTAMP('15:30:00', 'HH24:MI:SS')
WHERE classHrsID = 'CH003';

UPDATE CLASS_DETAIL
SET lecturerID = 'L0005'
WHERE classDetailsID = 'CD001';

UPDATE STU_CLASS
SET classDetailsID = 'CD002'
WHERE stuClassID = 'SC001';

UPDATE ATTENDANCE
SET attendanceStatus = 'Present'
WHERE attendanceID = 'A005';