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
    CREATION_INFO_CLINIC_NAME longvarchar,
    CREATION_INFO_DOCTOR_SURNAME varchar(255),
    CREATION_INFO_DATE_ timestamp not null,
    DESCRIPTION_COMPLAINTS longvarchar,
    DESCRIPTION_ANAMNESIS longvarchar,
    DESCRIPTION_OBJECTIVELY longvarchar,
    DESCRIPTION_CONCLUSION longvarchar,
    --
    primary key (ID)
);