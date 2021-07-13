create table MEDICALRECORD_ANALYSIS_RECORD (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    CREATION_INFO_CLINIC_NAME longvarchar,
    CREATION_INFO_DOCTOR_SURNAME varchar(255),
    CREATION_INFO_DATE_ timestamp not null,
    --
    NAME varchar(255),
    CONCLUSION varchar(255),
    --
    primary key (ID)
);