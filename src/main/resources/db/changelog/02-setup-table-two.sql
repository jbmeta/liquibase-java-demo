--liquibase formatted sql

--changeset jbm:2
CREATE TABLE TableTwo
(
    CountryID int,
    CountryName TEXT
);

INSERT INTO TableTwo
    (CountryID, CountryName)
VALUES
    (1, 'India');

INSERT INTO TableTwo
    (CountryID, CountryName)
VALUES
    (2, 'USA');

INSERT INTO TableTwo
    (CountryID, CountryName)
VALUES
    (3, 'China');

INSERT INTO TableTwo
    (CountryID, CountryName)
VALUES
    (4, 'Malaysia');

INSERT INTO TableTwo
    (CountryID, CountryName)
VALUES
    (5, 'Greece');

INSERT INTO TableTwo
    (CountryID, CountryName)
VALUES
    (6, 'Uzbekistan');

