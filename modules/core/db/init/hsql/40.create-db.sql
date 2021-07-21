insert into SEC_ROLE
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, LOC_NAME, DESCRIPTION, ROLE_TYPE, IS_DEFAULT_ROLE, SYS_TENANT_ID, SECURITY_SCOPE)
values ('dde915e5-2a25-26f6-c200-01a7e4aa00ef', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 'User', null, null, 0, null, null, 'GENERIC_UI');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('d580990d-b39f-dd1a-908b-041a37d37b4a', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_Medication:version', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('f13a4d22-4a03-615e-045c-9f413451b408', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisRecord:creationInfo', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('f9e41189-e8a2-46b4-efb2-ca830fbf18fc', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_PulseMonitoring:delete', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('998ee007-653f-5cec-393a-755343af4997', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_NoteRecord:delete', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('ebc05b3e-4ece-2906-aadc-ba146e4937b9', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ConsultationRecord:deleteTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('fb2c9ab7-d489-50ef-a52d-225d8f40b1dd', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_WeightMonitoring:deleteTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('d69b709c-d84b-59ad-ce48-c92a98d07046', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_NoteRecord:deleteTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('0470c3a6-f53c-a8d0-1e2d-80beb89b8625', 1, '2021-07-21 15:28:28', 'admin', '2021-07-21 15:28:28', null, null, null, 10, 'settings', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('2c73daf6-5c88-ec08-5661-0529255e8c0b', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ExaminationRecord:deletedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('362b989b-95b7-9e47-88e5-f67ff94392b8', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_Medication:deleteTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('36825ff6-88fc-ea36-a668-6a68204f13d2', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_Medication:read', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('fdc215ef-134d-b89e-bf0e-ffa56f0ee87e', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TreatmentPlan:version', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('26a538b2-4fd0-77fc-b7b6-4568026826a4', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TreatmentPlan:updateTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('51085e10-0a98-9243-5280-ee056fff4493', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_TreatmentPlan:read', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('14ca7501-f1b8-f3a4-f9ec-418f13ae2034', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_Diagnosis:read', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('ed070ad9-22aa-3fdb-83f0-c94342eaa8c6', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TemperatureMonitoring:deletedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('0fe3e8ff-a7c8-3b1b-91d4-2240bdbf43d7', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisIndicator:updateTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('c451f79f-99a3-c619-7eab-0662f820bea9', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_Description:complaints', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('5b682feb-7845-4d1f-5dd3-9a2a43bf07a9', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_PulseMonitoring:deletedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('2c04a291-17a1-017a-5085-37fb644aeb4d', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_ConsultationRecord:delete', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('b6cc2282-01c5-7cee-0d84-51766c6211cf', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_Description:delete', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('9f2a15db-62f2-8ea8-c8c6-ce8b51b7496b', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_PulseMonitoring:version', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('dc9b53ee-3ef7-ac5e-1904-f7d6f94e627b', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_ExaminationRecord:read', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('15fd74ff-1bf4-ad2a-5295-af175729034a', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_PulseMonitoring:update', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('82edc285-e1ea-c1d2-ab1f-f6aa8c38bd9e', 1, '2021-07-21 15:30:09', 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_ExaminationRecord.edit', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('93230b1e-9a13-7a61-58d2-98d293cb41cc', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisIndicator:unit', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('a6e69b62-4d40-9e1c-46d0-37b1fe98e769', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisIndicator:updatedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('ca2269b9-1395-6520-947e-704de50fe65a', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_NoteRecord:userId', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('56295710-24c5-25f7-d3ac-53a98428606c', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TemperatureMonitoring:value', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('938b205a-44df-106a-274f-c53f7f479e18', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_TemperatureMonitoring:delete', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('d290b88f-c5fa-5fc6-f798-85b1f654e415', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_PulseMonitoring:localDateTime', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('fb959271-b314-cd55-82ff-604cd78f4ad5', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_WeightMonitoring:create', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('4ac2a565-4657-5c0f-fd68-5275d16fbbdc', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_Medication:deletedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('d27fc603-ff00-f4b8-c377-040cd019f4f1', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ExaminationRecord:updatedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('c02860e0-d1db-9e3a-747b-8f54d4c82494', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_AnalysisIndicator:delete', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('5b3868fd-348a-6c19-e333-5cb75c2542aa', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisIndicator:deleteTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('6222103c-433f-8402-8c53-af61b6536c23', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_WeightMonitoring:version', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('4d83894e-7a90-7e45-e298-716503d17259', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_TreatmentPlan:update', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('8bdef3c0-7e00-d842-819b-b6aa2521dc22', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_PulseMonitoring:updatedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('71a7a78f-24fc-fc41-7f71-ec2317ef1a46', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TreatmentPlan:createTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('7bc4a5ec-4c5c-9e8f-fe3d-3c3e45f85f6f', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_ExaminationRecord:create', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('547dfd29-cad3-e7ad-21a2-8a54722dd980', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ConsultationRecord:diagnosis', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('bc652d27-98b7-ba25-01ed-accacbba313f', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_AnalysisIndicator:read', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('a816023d-17fd-8372-b848-618680ec99f4', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TreatmentPlan:date', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('9ed7679c-69dd-6d55-e260-6a7e8558faf1', 1, '2021-07-21 15:30:09', 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_Medication.edit', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('be987e35-a11f-45d6-91b5-28f6fab345e1', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_ConsultationRecord:create', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('adc8f9a5-efb1-cddc-f256-6ca1de078288', 1, '2021-07-21 15:30:09', 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_PulseMonitoring.edit', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('98ec568d-2244-583b-b688-81e28ddab6d7', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_WeightMonitoring:userId', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('57e0bfda-0c98-5e0e-ba84-982e562e7253', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ExaminationRecord:createTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('792c7e91-121f-4d8a-acfc-d14bc2382fd9', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_NoteRecord:id', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('7441979d-6832-dd9b-468f-849626fa74e9', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_Medication:delete', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('14f6d658-9352-7d4b-5ec7-733821a1ce68', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_WeightMonitoring:localDateTime', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('2808c946-c6aa-cdac-acce-90ef1b0e13e5', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisIndicator:comment', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('a77a37e1-c7b5-9ab5-b0d1-42ac7acc85af', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_TreatmentPlan:delete', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('c1fbfb18-737a-713e-fdae-997eba5a92ab', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_Diagnosis:create', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('e8ff9a92-cfae-c6b7-9edb-eb48d750673b', 1, '2021-07-21 15:30:09', 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_PulseMonitoring.browse', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('9bd7e588-2099-dee3-6fdd-e4b146542590', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_NoteRecord:createTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('4b9d3387-fef7-e418-23ea-3848e4cf3d17', 1, '2021-07-21 15:30:09', 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_ExaminationRecord.browse', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('b65fc8e6-f117-658b-4d3a-3670885445aa', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ConsultationRecord:version', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('af2c4c58-09e7-caf8-2139-9305ce0228c7', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_ExaminationRecord:delete', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('0db763f0-cbda-5c7c-79f6-014401d13c16', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisIndicator:name', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('e98bfe79-34f6-9e24-daca-3b649e4f1457', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TemperatureMonitoring:createdBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('dd46d266-3ef4-4abe-008f-83953d2f81c7', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ExaminationRecord:creationInfo', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('2e4f0012-deec-6d77-36d3-2035e2791fc5', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_PulseMonitoring:createdBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('1e4056ed-8503-a1bd-dcc4-8e2c321de646', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ExaminationRecord:examinationType', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('95516bb6-81e4-f03c-430b-6c1092495ccd', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TemperatureMonitoring:localDateTime', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('c8816377-505a-19ff-b513-cf1d50961269', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_ExaminationRecord:update', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('5bba933c-e958-e53e-b83b-508efbb8754f', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TreatmentPlan:id', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('96642467-3f09-477c-7919-c444a56308eb', 1, '2021-07-21 15:30:09', 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_TemperatureMonitoring.edit', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('8689b93e-dc4d-4d3c-7fc2-c79fe3c933f6', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TemperatureMonitoring:updatedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('c682dee6-dd64-24ab-b4cf-3d6d9d5c2bf0', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisIndicator:norm', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('8e1a3148-3d96-c645-c9b3-be2409d50c64', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_CreationInfo:create', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('f6712532-faac-7608-b3d6-388b90063814', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_AnalysisRecord:update', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('c54892d9-ef45-d75e-789e-1816c472edd9', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TreatmentPlan:updatedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('e4306edf-09c7-78b6-584e-a51257e3098a', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_Diagnosis:delete', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('573f5dc7-7369-39c3-dc1b-ce783a5694cc', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisRecord:updateTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('0f19e097-e465-d3c6-19fc-48c972b6b502', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_Medication:id', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('0447ed23-9e2d-b489-58d5-130bc2431eed', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_Description:update', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('684a1c50-f9cc-bf4f-33e3-c6fd1ba67691', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TemperatureMonitoring:version', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('5f95ee74-a9ac-2b39-9573-d52979318eaf', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_WeightMonitoring:updatedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('43376112-616c-9af5-a884-ca8b564c8b4c', 1, '2021-07-21 15:30:09', 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_AnalysisIndicator.edit', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('879cca94-be28-db7d-a834-3a588cafdc2d', 1, '2021-07-21 15:30:09', 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_TreatmentPlan.edit', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('94faf677-e488-6649-60a5-5bab48781b82', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TemperatureMonitoring:unit', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('a7c89155-73bf-d3e7-c6fe-72e18bb50fd5', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisRecord:id', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('2ac8a763-e2fa-1c29-9c0f-4d3039a7435a', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TreatmentPlan:deleteTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('c08ee524-6f38-a882-3ebd-bd60f5a032d3', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_Description:read', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('29c8dba1-1770-b0ca-cd72-723267c6d190', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ExaminationRecord:treatmentPlans', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('39b3b20f-f8e1-b1cc-41c6-c2f1fa77ad16', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_Medication:updatedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('8e6a32f9-c1ba-5cef-1ef1-dd84cfe23598', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_PulseMonitoring:deleteTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('dda44f9d-3dbf-73d7-347f-927746c08853', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ExaminationRecord:version', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('d6431898-e62f-cf69-ba08-ee204ed06fab', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ConsultationRecord:description', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('c7d16d9d-b250-bbd6-6360-b90874566724', 1, '2021-07-21 15:30:09', 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_WeightMonitoring.browse', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('5f584f44-b4f3-a9fe-265a-2f8d0d360720', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ExaminationRecord:description', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('e3bd1a67-9b42-d79e-0f9a-fd5698f8bde2', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TemperatureMonitoring:createTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('062fa12a-ef2e-85b2-f878-5e1636b55193', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_Medication:createdBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('1d7c46f5-3171-3c34-630d-d6209f51c862', 1, '2021-07-21 15:28:28', 'admin', '2021-07-21 15:28:28', null, null, null, 10, 'aboutWindow', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('9444a33e-e4a2-4a1e-c720-b756c654e537', 1, '2021-07-21 15:28:28', 'admin', '2021-07-21 15:28:28', null, null, null, 10, 'medicalrecord_MonitoringScreen', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('de0b63f6-3fa0-1e40-ad9d-505cbc62a365', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_CreationInfo:clinicName', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('fb18f074-78b1-c1ef-acaa-af11989c5bce', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_Description:objectively', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('fb1a932f-ebcf-7eab-98fc-4ca4b5b07465', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TemperatureMonitoring:updateTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('59175c1c-f428-0035-3150-14e99940bb32', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_NoteRecord:updatedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('06b2c729-074f-ec0f-d6dd-96198634acf5', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisIndicator:analysisRecord', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('a0330cb8-63df-8338-3b72-b761d1a11f3e', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_Diagnosis:name', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('0cb60403-a10a-6593-fd34-e0a5bd77c62b', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisRecord:updatedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('8dc42e44-33a2-b08a-e92c-50b7f8b31965', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ConsultationRecord:deletedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('acf4ffbd-2178-10f0-49d8-bf148d4d37a7', 1, '2021-07-21 15:30:09', 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_AnalysisRecord.edit', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('2c672b49-d081-878a-ae8b-b1f948ffa54f', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_TreatmentPlan:create', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('3e2450b1-28c2-4368-e7bb-d67f6afb58e8', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_Medication:updateTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('27cefda4-62de-df08-51ed-68f8d2149e54', 1, '2021-07-21 15:30:09', 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_NoteRecord.browse', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('23dc22e1-82c8-adc7-8359-3cab609709bd', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_NoteRecord:create', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('af34fba7-23ea-9ce5-ea15-12fd87ec4c73', 1, '2021-07-21 15:30:09', 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_NoteRecord.edit', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('0f82b994-5f26-73c4-c4d9-a170cbfdc64c', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisIndicator:result', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('0f9264e4-a00a-2114-9e2c-dd5c014d9ebb', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ConsultationRecord:medications', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('a34bab37-7e4e-5a3e-691a-94ef06171b1d', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_NoteRecord:deletedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('75985aae-768f-afba-49e5-483a731e1e3a', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_CreationInfo:read', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('d3d43cf0-8a72-ddc2-5851-469f55c27b62', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_CreationInfo:update', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('9ef07f4c-02c4-dd83-81d6-9edbf75e1baa', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_NoteRecord:read', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('2b47d90b-a830-b53a-fb2a-f163a0959e9e', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisIndicator:createTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('017c3d99-9995-69c9-18dc-75326af2c6a0', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisRecord:createdBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('a4007aa5-2b2a-f4a3-44d8-6a2130a7627c', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TreatmentPlan:createdBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('3f3a7487-9323-c547-0327-32fe3bd80ed7', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ConsultationRecord:id', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('7506305c-3d17-00cd-c87b-e891d02b3550', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ExaminationRecord:deleteTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('f425a267-211f-33dd-7e45-5323a9056df7', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_PulseMonitoring:read', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('e012091d-3b7c-6794-db8b-324aa7dd50ee', 1, '2021-07-21 15:30:09', 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_AnalysisRecord.browse', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('52146b7e-a27b-f2d9-2b06-b6e9c4c443f6', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_AnalysisIndicator:update', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('17a377a8-78a0-b314-762d-3c2cebac7f04', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisIndicator:version', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('e3839519-27bb-6098-657f-c9a1ed3bfb46', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_Medication:consultationRecord', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('469df9b0-e94f-9328-63db-c14b3ded6716', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_WeightMonitoring:read', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('086bbe31-e413-f41f-e3c1-daec28c7089e', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_TemperatureMonitoring:create', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('7b092027-24ba-be48-17d1-428fc523e289', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisRecord:createTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('0c86db60-3f8a-f2d2-8748-0ac444787863', 1, '2021-07-21 15:30:09', 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_AnalysisIndicator.browse', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('4d5d432b-1af2-7309-8b60-ec415c41fbc3', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_CreationInfo:date', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('c93d103d-5e44-1939-990d-f010df9223dd', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ExaminationRecord:updateTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('5b8a9306-41b9-3fba-2f5b-b3b2f46feb39', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_PulseMonitoring:unit', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('81dbcdf1-d940-1e1d-33b4-3314e50153e0', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_CreationInfo:doctorSurname', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('b057667e-37b9-455e-35bb-c459c9206537', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TreatmentPlan:deletedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('20ede47d-f454-1626-74bf-2056d7769e3f', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisRecord:version', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('dc2c0503-b984-b203-8224-563e22a5655f', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_ConsultationRecord:update', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('3399caa7-37dd-6dcd-28f4-64b540c97ceb', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_WeightMonitoring:updateTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('ef98bd0e-5e3b-d282-c71f-93bedcb7c768', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_AnalysisRecord:delete', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('ab7ca143-05ad-ab27-f757-26fd6c393c77', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisRecord:deletedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('f870044c-ac83-ea26-d91f-78b08434b250', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_WeightMonitoring:id', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('872643d2-fbce-c113-2ffe-d904aef59d75', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_AnalysisRecord:read', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('fd5beafe-ec6d-4db1-394c-9744e01cd13e', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_NoteRecord:version', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('acbc2d14-7715-115f-7d28-62fc760fc36e', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 10, 'application-medicalrecord', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('c0106205-365a-7e90-2480-edceead5ba1f', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_NoteRecord:date', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('0ebacb8f-d8b7-8037-3202-5421ad8b0142', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TreatmentPlan:examinationRecord', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('daa620aa-0351-0135-d872-73fd00c9064e', 1, '2021-07-21 15:30:09', 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_TreatmentPlan.browse', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('dc914739-8818-47aa-15d3-0efd4bf0f5a6', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_PulseMonitoring:create', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('e0c197f2-829f-f7b5-9b3b-c002369c22d9', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_Medication:create', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('a2f84aaf-ea47-3402-67a1-63c17472f965', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ConsultationRecord:updatedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('4b5fe03a-e697-c1b9-db54-6608b25d8e22', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_WeightMonitoring:value', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('350f8521-1f06-d7c5-0b9b-56d8559d375a', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisRecord:indicators', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('3a2c02bc-40d0-1af8-e055-d60977e30c6b', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ExaminationRecord:id', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('1d4e5319-09cf-8dac-63fb-7fe3e7060a45', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_NoteRecord:updateTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('2401414c-21a5-fc8a-d1b6-a0b52fe58ff4', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_PulseMonitoring:id', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('630c87d6-f980-d877-ec63-65406264091b', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_NoteRecord:name', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('86754a55-33a8-af3d-7b68-27060a9a5735', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisIndicator:id', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('2514b5b4-71c2-9d01-9419-a7b147701bcd', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_NoteRecord:description', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('9f5048b5-e130-18de-90e4-82140072a5fe', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_PulseMonitoring:value', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('a1fc73f1-5004-efc3-f7d3-be2adf209468', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_TemperatureMonitoring:read', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('e8b50f25-c623-ff6f-c1f7-0975d249716c', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_WeightMonitoring:createTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('2d2a53c9-5f2f-db0f-962f-f85ed713e021', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_Diagnosis:update', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('c02d3b67-a04f-e0f0-f6ab-c9872442a71a', 1, '2021-07-21 15:30:09', 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_ConsultationRecord.edit', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('921b1f7d-ab2d-0f9f-5ed4-d9e31eb72fd6', 1, '2021-07-21 15:30:09', 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_ConsultationRecord.browse', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('032848da-a6c5-07fe-d6aa-d2dc6cab8797', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisIndicator:deletedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('a64caa1d-4bbc-9da7-3e2e-439baf6c4519', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_CreationInfo:delete', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('c163acff-0232-defd-6d65-1f41802490d8', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_NoteRecord:update', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('a4e1b06f-8d3d-087e-70da-c3e2f729e051', 1, '2021-07-21 15:30:09', 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_TemperatureMonitoring.browse', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('2159aa91-3f47-2875-4a5f-53383cb2a8bc', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_Description:create', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('6460fa09-6345-a04d-3220-f7c48c181508', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_Medication:createTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('5a5414b0-9e7e-ff7d-07e1-0c9389e97ceb', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisRecord:conclusion', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('21fb350e-e8df-2000-a93c-0c345c87f83f', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TreatmentPlan:title', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('9c781631-df1d-d903-34fd-3e3fe52c2222', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ConsultationRecord:userId', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('61151f24-82a4-e597-43e5-f9e5ba73aaef', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_AnalysisIndicator:create', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('46aa33eb-edf3-eedc-687b-45328c4d8cca', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_NoteRecord:createdBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('d83ad3e7-7240-fa7b-e78e-35e84a83d0a0', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ConsultationRecord:updateTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('ef5b5226-9a75-be71-e212-916d0c331392', 1, '2021-07-21 15:28:28', 'admin', '2021-07-21 15:28:28', null, null, null, 10, 'medicalrecord_MedicalRecordScreen', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('617b67f6-e78b-8227-536e-a44a57bdee11', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_AnalysisRecord:create', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('46dc353a-ee5f-8278-081f-7ea325b4c365', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_ConsultationRecord:read', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('8fdad4d0-bc9f-e81f-5d88-3009a5b24415', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_WeightMonitoring:update', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('4ab4f1c6-75c9-ae92-7a40-6b58e3ab972b', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_PulseMonitoring:updateTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('d58e357a-2fec-362d-be67-1a62464364c6', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ConsultationRecord:createTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('faa1b50d-aa49-dfff-c3d9-4e9fc53341da', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TreatmentPlan:name', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('8add6923-a6e7-71df-3b9a-f1b99ce5fbc2', 1, '2021-07-21 15:30:09', 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_Medication.browse', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('77acde39-4060-fda3-0792-a4e1d90fcfe9', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_Description:conclusion', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('2a4dd28a-3f14-3db1-87b1-1afe75cb2d22', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 10, 'help', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('8312157f-cc57-0977-0eca-51779f552661', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisRecord:deleteTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('f1fc6af5-6745-2e72-0a17-8be00e31fc3e', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_Diagnosis:icd10Name', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('6dc83105-c9a7-aa12-4663-6382c0b821e9', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_PulseMonitoring:createTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('909ece40-9e31-318d-305a-6f6c6e25e1bb', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ConsultationRecord:creationInfo', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('6822059f-c075-917b-31b8-c86112e09e40', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ExaminationRecord:createdBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('d9a06409-1707-e41b-c5a8-77c205c3ead6', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TreatmentPlan:treatmentType', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('a7c21aa3-744b-903e-0312-3f7df3207795', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_WeightMonitoring:delete', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('69c9732d-d88f-aea4-fdb5-84a87770db6d', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_WeightMonitoring:unit', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('3f8504cd-c476-d84f-8219-3d0e1d4d78fb', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TemperatureMonitoring:id', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('a100c1f6-71e9-c8cf-fae0-0ca4a91ea558', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisRecord:userId', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('191be060-22e2-67bd-3124-30d9cae7a0e9', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_TemperatureMonitoring:update', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('0c5600cd-8268-fb53-729e-fcfb96a6a8b4', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ExaminationRecord:userId', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('a5edb85e-1391-b0d8-2cd3-d5567e545af3', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TemperatureMonitoring:deleteTs', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('0d25c24c-9826-edb6-43a3-f8231e6f0ccf', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisIndicator:createdBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('ac886f30-c818-d617-e852-2311c15a9672', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ExaminationRecord:diagnosis', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('f4e12dcd-6740-394f-1f3f-fd64804438e1', 1, '2021-07-21 15:27:09', 'admin', '2021-07-21 15:27:09', null, null, null, 20, 'medicalrecord_Medication:update', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('1bce4f4f-5ced-d136-c35f-7c1679762284', 1, current_timestamp, 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_WeightMonitoring:deletedBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('2092fdff-b4c8-0bff-dfc8-8492d514bff1', 1, current_timestamp, 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ConsultationRecord:createdBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('6b08f1a2-238b-535c-57af-6a76b446ee04', 1, current_timestamp, 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_Medication:intakeRecommendation', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('cb1399a5-c366-c329-acba-a5cfe32f034b', 1, current_timestamp, 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_ExaminationRecord:name', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('c68e861e-cdec-956d-46ae-f3e571da2f6a', 1, current_timestamp, 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_TemperatureMonitoring:userId', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('75c77861-27da-35d0-6b7d-cdf9c9c6b100', 1, current_timestamp, 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_Description:anamnesis', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('23d5bf67-b315-5a5e-88bb-6c994bda61ef', 1, current_timestamp, 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_WeightMonitoring:createdBy', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('14ab2e81-561c-5036-dafb-de38a49f29a8', 1, current_timestamp, 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_Medication:medicineName', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('e0fb03bf-a484-b2ef-5a92-78f69c3b3687', 1, current_timestamp, 'admin', '2021-07-21 15:27:09', null, null, null, 40, 'cuba.gui.loginToClient', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('50cbda02-e0d6-477f-efd5-3a1e05c36492', 1, current_timestamp, 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_PulseMonitoring:userId', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('a85e190f-c454-7f3f-49e9-58382a625672', 1, current_timestamp, 'admin', '2021-07-21 15:27:09', null, null, null, 30, 'medicalrecord_AnalysisRecord:name', 2, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_PERMISSION
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, PERMISSION_TYPE, TARGET, VALUE_, ROLE_ID)
values ('ccb2f055-2ffc-0b0e-46d9-491392718a53', 1, current_timestamp, 'admin', '2021-07-21 15:30:09', null, null, null, 10, 'medicalrecord_WeightMonitoring.edit', 1, 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');

insert into SEC_USER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, LOGIN, LOGIN_LC, PASSWORD, PASSWORD_ENCRYPTION, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, GROUP_NAMES, IP_MASK, SYS_TENANT_ID)
values ('be821b5a-35b1-3549-67fc-6e2ce4db3d1e', 1, current_timestamp, 'admin', current_timestamp , null, null, null, 'user-dima', 'user-dima', '$2a$10$KBMFl4/j3NyGDEKccdUxcuhYqkCxR90KQR9k69x.MPksFsuIehDuW', 'bcrypt', null, null, null, null, null, null, 'ru', null, null, true, false, '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', null, null, null);

insert into SEC_USER_ROLE (ID, CREATE_TS, VERSION, USER_ID, ROLE_ID)
values ('632a6d64-f2e2-455a-93e9-33b919e16657', current_timestamp, 0, 'be821b5a-35b1-3549-67fc-6e2ce4db3d1e', 'dde915e5-2a25-26f6-c200-01a7e4aa00ef');
