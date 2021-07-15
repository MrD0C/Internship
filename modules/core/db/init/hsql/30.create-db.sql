INSERT INTO MEDICALRECORD_NOTE_RECORD
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY,NAME,DESCRIPTION,DATE_)
VALUES
('1728d1fc-243e-0cd4-08d3-717ea8a48e12', 1, '2018-11-05 17:26:24', 'admin', '2018-11-05 17:26:24', null, null, null,'Заметка №1','Описание к заметке','2021-05-07 10:00:00'),
('3d9c0a8d-fe96-dd9d-e4c8-43622a40288b', 2, '2018-11-05 17:38:39', 'admin', '2018-11-05 17:45:54', null , null, null,'Заметка №2','Текст заметки','2021-05-07 15:00:00');

INSERT INTO MEDICALRECORD_EXAMINATION_RECORD
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY,
 EXAMINATION_TYPE,DIAGNOSIS_ICD10_NAME,DESCRIPTION_COMPLAINTS,DESCRIPTION_CONCLUSION,CREATION_INFO_CLINIC_NAME,CREATION_INFO_DOCTOR_SURNAME,CREATION_INFO_DATE_)
 VALUES
('0ff2af01-0864-fca9-17e3-61795c76bf26', 2, '2018-11-05 17:38:39', 'admin', '2018-11-05 17:45:54', null, null, null,
 'Терапия','Туберкулёз','Частый кашель','Требуется лечение','КДК','Кравченко','2021-07-10 13:54:25');

INSERT INTO MEDICALRECORD_TREATMENT_PLAN
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY,
 TREATMENT_TYPE,TITLE,DATE_,EXAMINATION_RECORD_ID)
 VALUES
('89823558-4410-1ce6-bf08-e458a3635587', 2, '2018-11-05 17:41:39', 'admin', '2018-11-05 17:48:28', null , null, null,
 'consultation','Консультация у терапевта','2021-07-12 12:00:00','0ff2af01-0864-fca9-17e3-61795c76bf26');

INSERT INTO MEDICALRECORD_WEIGHT_MONITORING
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY,MASS_VALUE,UNIT,LOCAL_DATE_TIME)
 VALUES
('10229d76-e55f-11eb-ba80-0242ac130004',2, '2018-11-05 17:38:39', 'admin', '2018-11-05 17:45:54', null, null, null,60,'kg','2021-07-05'),
('1a9fdb7e-e55f-11eb-ba80-0242ac130004',2, '2018-11-05 17:38:39', 'admin', '2018-11-05 17:45:54', null, null, null,70,'kg','2021-07-10'),
('1e407554-e55f-11eb-ba80-0242ac130004',2, '2018-11-05 17:38:39', 'admin', '2018-11-05 17:45:54', null, null, null,55,'kg','2021-07-15');
