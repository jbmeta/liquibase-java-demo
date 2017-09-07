--liquibase formatted sql

--changeset jbm:4
INSERT INTO TableOne
    (PersonID, FirstName)
VALUES
    (1, 'Elon');