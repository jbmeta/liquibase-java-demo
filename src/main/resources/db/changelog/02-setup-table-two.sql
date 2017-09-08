--liquibase formatted sql

--changeset jbm:1
CREATE TABLE TableTwo
(
    PersonID int,
    LastName TEXT
);

INSERT INTO TableTwo
    (PersonID, LastName)
VALUES
    (1, 'Musk');