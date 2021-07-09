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
);