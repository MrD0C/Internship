update MEDICALRECORD_TREATMENT_PLAN set TITLE = '' where TITLE is null ;
alter table MEDICALRECORD_TREATMENT_PLAN alter column TITLE set not null ;
alter table MEDICALRECORD_TREATMENT_PLAN alter column CONSULTATION_RECORD_ID set null ;
