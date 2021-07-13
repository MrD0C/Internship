create table MEDICALRECORD_ANALYSIS_INDICATOR (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    RESULT_ varchar(255) not null,
    NORM varchar(255),
    UNIT varchar(255),
    COMMENT_ varchar(255),
    ANALYSIS_RECORD_ID varchar(36) not null,
    --
    primary key (ID)
);