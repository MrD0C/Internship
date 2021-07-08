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
    CONSULTATION_RECORD_ID varchar(36) not null,
    --
    primary key (ID)
);