--liquibase formatted sql

--changeset jbm:2
INSERT INTO TableOne
    (PlanetID, PlanetName)
VALUES
    (5, 'Jupiter');

INSERT INTO TableOne
    (PlanetID, PlanetName)
VALUES
    (6, 'Saturn');

INSERT INTO TableOne
    (PlanetID, PlanetName)
VALUES
    (7, 'Uranus');

INSERT INTO TableOne
    (PlanetID, PlanetName)
VALUES
    (8, 'Neptune');