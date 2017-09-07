--liquibase formatted sql

--changeset jbm:6
INSERT INTO TableThree
    (PersonID, City)
VALUES
    (1, 'Los Angeles');