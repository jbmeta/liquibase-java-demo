--liquibase formatted sql

--changeset jbm:1
CREATE TABLE TableOne
(
    PersonID int,
    FirstName TEXT
);