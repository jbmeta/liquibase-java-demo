--liquibase formatted sql

--changeset jbm:2
CREATE TABLE TableTwo
(
    PersonID int,
    LastName TEXT
);