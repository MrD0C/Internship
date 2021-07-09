-- begin MEDICALRECORD_CONSULTATION_RECORD
create table MEDICALRECORD_CONSULTATION_RECORD (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    DIAGNOSIS_ICD10_NAME varchar(255),
    DIAGNOSIS_NAME varchar(255),
    DESCRIPTION_COMPLAINTS longvarchar,
    DESCRIPTION_ANAMNESIS longvarchar,
    DESCRIPTION_OBJECTIVELY longvarchar,
    DESCRIPTION_CONCLUSION longvarchar,
    --
    primary key (ID)
)^
-- end MEDICALRECORD_CONSULTATION_RECORD
-- begin MEDICALRECORD_TREATMENT_PLAN
create table MEDICALRECORD_TREATMENT_PLAN (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TREATMENT_TYPE varchar(50) not null,
    TITLE longvarchar not null,
    NAME longvarchar,
    DATE_ timestamp not null,
    CONSULTATION_RECORD_ID varchar(36),
    --
    primary key (ID)
)^
-- end MEDICALRECORD_TREATMENT_PLAN
-- begin MEDICALRECORD_MEDICATION
create table MEDICALRECORD_MEDICATION (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    MEDICINE_NAME varchar(255) not null,
    INTAKE_RECOMMENDATION longvarchar,
    CONSULTATION_RECORD_ID varchar(36),
    --
    primary key (ID)
)^
-- end MEDICALRECORD_MEDICATION
-- begin MEDICALRECORD_WEIGHT_MONITORING
create table MEDICALRECORD_WEIGHT_MONITORING (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    MASS_VALUE double precision not null,
    UNIT varchar(50) not null,
    LOCAL_DATE_TIME timestamp not null,
    --
    primary key (ID)
)^
-- end MEDICALRECORD_WEIGHT_MONITORING
-- begin MEDICALRECORD_PULSE_MONITORING
create table MEDICALRECORD_PULSE_MONITORING (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    VALUE_ double precision not null,
    UNIT varchar(50) not null,
    LOCAL_DATE_TIME timestamp not null,
    --
    primary key (ID)
)^
-- end MEDICALRECORD_PULSE_MONITORING
