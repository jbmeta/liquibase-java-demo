--liquibase formatted sql

--changeset jbm:1
CREATE TABLE TableOne
(
    PlanetID int,
    PlanetName TEXT
);

INSERT INTO TableOne
    (PlanetID, PlanetName)
VALUES
    (1, 'Mercury');

INSERT INTO TableOne
    (PlanetID, PlanetName)
VALUES
    (2, 'Venus');

INSERT INTO TableOne
    (PlanetID, PlanetName)
VALUES
    (3, 'Earth');

INSERT INTO TableOne
    (PlanetID, PlanetName)
VALUES
    (4, 'Mars');