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
    EXAMINATION_RECORD_ID varchar(36) not null,
    --
    primary key (ID)
);