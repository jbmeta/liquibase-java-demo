--liquibase formatted sql

--changeset jbm:5
INSERT INTO TableTwo
    (PersonID, LastName)
VALUES
    (1, 'Musk');