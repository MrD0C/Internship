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
    VALUE_ double precision not null,
    DATE_ timestamp not null,
    --
    primary key (ID)
);