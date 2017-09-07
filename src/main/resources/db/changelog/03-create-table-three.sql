--liquibase formatted sql

--changeset jbm:3
CREATE TABLE TableThree
(
    PersonID int,
    City TEXT
);