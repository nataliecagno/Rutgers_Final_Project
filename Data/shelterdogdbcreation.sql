-- Creating tables for ShelterDogsDB
CREATE TABLE Sex(
	id_tag bigint NOT NULL,
	availability_likely text NOT NULL,
	sex text NOT NULL
);

CREATE TABLE Age(
	id_tag bigint NOT NULL,
	availability_likely text NOT NULL,
	age double precision NOT NULL
);

CREATE TABLE Agreeability(
	id_tag bigint NOT NULL,
	availability_likely text NOT NULL,
	housebroken text NOT NULL,
	likes_people text NOT NULL,
	likes_children text NOT NULL,
	get_along_males text NOT NULL,
	get_along_females text NOT NULL,
	get_along_cats text NOT NULL
);

CREATE TABLE Breed(
	id_tag bigint NOT NULL,
	availability_likely text NOT NULL,
	breed text NOT NULL
);

-- Add values from shelterdogs table to other tables
INSERT INTO breed
SELECT id_tag, availability_likely, breed
FROM shelterdogs;

INSERT INTO sex
SELECT id_tag, availability_likely, sex
FROM shelterdogs;

INSERT INTO age
SELECT id_tag, availability_likely, age
FROM shelterdogs;

INSERT INTO agreeability
SELECT id_tag, availability_likely, housebroken, likes_people, likes_children, get_along_males, get_along_females, get_along_cats
FROM shelterdogs;

-- Create a join-- full join into a new table
CREATE TABLE age_breed_join AS
SELECT age.id_tag, age.availability_likely, age.age, breed.breed
FROM age
FULL OUTER JOIN breed
ON age.id_tag = breed.id_tag;
