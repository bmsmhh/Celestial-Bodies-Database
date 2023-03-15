CREATE DATABASE universe;
\c universe

CREATE TABLE galaxy(galaxy_id SERIAL PRIMARY KEY);
ALTER TABLE galaxy ADD UNIQUE(galaxy_id);
ALTER TABLE galaxy ADD COLUMN name VARCHAR NOT NULL;
ALTER TABLE galaxy ADD COLUMN galaxy_type TEXT NOT NULL;
ALTER TABLE galaxy ADD COLUMN distance_from_earth NUMERIC(4,1) NOT NULL;
ALTER TABLE galaxy ADD COLUMN type_one INT NOT NULL;
ALTER TABLE galaxy ADD COLUMN type_two INT NOT NULL;
ALTER TABLE galaxy ADD COLUMN type_three BOOLEAN NOT NULL;
ALTER TABLE galaxy ADD COLUMN type_four BOOLEAN NOT NULL;

INSERT INTO galaxy(name, galaxy_type, distance_from_earth, type_one, type_two, type_three, type_four) VALUES('yi', 'yi', 1.1, 1, 1, true, true), ('er', 'er', 2.2, 2, 2, false, false), ('san', 'san', 3.3, 3, 3, true, true), ('si', 'si', 4.4, 4, 4, false, false), ('wu', 'wu', 5.5, 5, 5, true, true), ('liu', 'liu', 6.6, 6, 6, false, false), ('qi', 'qi', 7.7, 7, 7, true, true), ('ba', 'ba', 8.8, 8, 8, false, false), ('jiu', 'jiu', 9.9, 9, 9, true, true), ('shi', 'shi', 10.1, 10, 10, false, false), ('shiyi', 'shiyi', 11.1, 11, 11, true, true), ('shier', 'shier', 12.2, 12, 12, false, false); 

CREATE TABLE star(star_id SERIAL PRIMARY KEY);
ALTER TABLE star ADD COLUMN galaxy_id INT REFERENCES galaxy(galaxy_id);
ALTER TABLE star ADD UNIQUE(galaxy_id);
ALTER TABLE star ADD COLUMN name VARCHAR NOT NULL;
ALTER TABLE star ADD COLUMN star_type TEXT NOT NULL;
ALTER TABLE star ADD COLUMN distance_from_earth NUMERIC NOT NULL;
ALTER TABLE star ADD COLUMN type_one INT NOT NULL;
ALTER TABLE star ADD COLUMN type_two INT NOT NULL;
ALTER TABLE star ADD COLUMN type_three BOOLEAN NOT NULL;
ALTER TABLE star ADD COLUMN type_four BOOLEAN NOT NULL;

INSERT INTO star(name, star_type, distance_from_earth, type_one, type_two, type_three, type_four) VALUES('yi', 'yi', 1.1, 1, 1, true, true), ('er', 'er', 2.2, 2, 2, false, false), ('san', 'san', 3.3, 3, 3, true, true), ('si', 'si', 4.4, 4, 4, false, false), ('wu', 'wu', 5.5, 5, 5, true, true), ('liu', 'liu', 6.6, 6, 6, false, false), ('qi', 'qi', 7.7, 7, 7, true, true), ('ba', 'ba', 8.8, 8, 8, false, false), ('jiu', 'jiu', 9.9, 9, 9, true, true), ('shi', 'shi', 10.1, 10, 10, false, false), ('shiyi', 'shiyi', 11.1, 11, 11, true, true), ('shier', 'shier', 12.2, 12, 12, false, false); 

CREATE TABLE planet(star_id SERIAL PRIMARY KEY);
ALTER TABLE planet ADD COLUMN star_id INT REFERENCES star(star_id);
ALTER TABLE planet ADD UNIQUE(star_id);
ALTER TABLE planet ADD COLUMN name VARCHAR NOT NULL;
ALTER TABLE planet ADD COLUMN star_type TEXT NOT NULL;
ALTER TABLE planet ADD COLUMN distance_from_earth NUMERIC NOT NULL;
ALTER TABLE planet ADD COLUMN type_one INT NOT NULL;
ALTER TABLE planet ADD COLUMN type_two INT NOT NULL;
ALTER TABLE planet ADD COLUMN type_three BOOLEAN NOT NULL;
ALTER TABLE planet ADD COLUMN type_four BOOLEAN NOT NULL;

INSERT INTO planet(name, planet_type, distance_from_earth, type_one, type_two, type_three, type_four) VALUES('yi', 'yi', 1.1, 1, 1, true, true), ('er', 'er', 2.2, 2, 2, false, false), ('san', 'san', 3.3, 3, 3, true, true), ('si', 'si', 4.4, 4, 4, false, false), ('wu', 'wu', 5.5, 5, 5, true, true), ('liu', 'liu', 6.6, 6, 6, false, false), ('qi', 'qi', 7.7, 7, 7, true, true), ('ba', 'ba', 8.8, 8, 8, false, false), ('jiu', 'jiu', 9.9, 9, 9, true, true), ('shi', 'shi', 10.1, 10, 10, false, false), ('shiyi', 'shiyi', 11.1, 11, 11, true, true), ('shier', 'shier', 12.2, 12, 12, false, false); 

CREATE TABLE moon(moon_id SERIAL PRIMARY KEY);
ALTER TABLE moon ADD COLUMN planet_id INT REFERENCES planet(planet_id);
ALTER TABLE moon ADD UNIQUE(planet_id);
ALTER TABLE moon ADD COLUMN name VARCHAR NOT NULL;
ALTER TABLE moon ADD COLUMN moon_type TEXT NOT NULL;
ALTER TABLE moon ADD COLUMN distance_from_earth NUMERIC(4,1) NOT NULL;
ALTER TABLE moon ADD COLUMN type_one INT NOT NULL;
ALTER TABLE moon ADD COLUMN type_two INT NOT NULL;
ALTER TABLE moon ADD COLUMN type_three BOOLEAN NOT NULL;
ALTER TABLE moon ADD COLUMN type_four BOOLEAN NOT NULL;

INSERT INTO moon(name, moon_type, distance_from_earth, type_one, type_two, type_three, type_four) VALUES('yi', 'yi', 1.1, 1, 1, false, false);
INSERT INTO moon(name, moon_type, distance_from_earth, type_one, type_two, type_three, type_four) VALUES('er', 'er', 2.2, 2, 2, false, false), ('san', 'san', 3.3, 3, 3, true, true), ('si', 'si', 4.4, 4, 4, true, true), ('wu', 'wu', 5.5, 5, 5, false, false), ('liu', 'liu', 6.6, 6, 6, true, true), ('qi', 'qi', 7.7, 7, 7, false, false), ('ba', 'ba', 8.8, 8, 8, true, true), ('jiu', 'jiu', 9.9, 9, 9, false, false), ('shi', 'shi', 10.0, 10, 10, true, true);
INSERT INTO moon(name, moon_type, distance_from_earth, type_one, type_two, type_three, type_four) VALUES('shiyi', 'shiyi', 11.1, 11, 11, false, false), ('shier', 'shier', 12.2, 12, 12, true, true), ('shisan', 'shisan', 13.3, 13, 13, false, false), ('shisi', 'shisi', 14.4, 14, 14, true, true), ('shiwu', 'shiwu', 15.5, 15, 15, false, false), ('shiliu', 'shiliu', 16.6, 16, 16, true, true), ('shiqi', 'shiqi', 17.7, 17, 17, false, false), ('shiba', 'shiba', 18.8, 18, 18, true, true), ('shijiu', 'shijiu', 19.9, 19, 19, false, false), ('ershi', 'ershi', 20.0, 20, 20, true, true);

CREATE TABLE description(description_id SERIAL PRIMARY KEY);
ALTER TABLE description ADD COLUMN moon_id INT REFERENCES moon(moon_id);
ALTER TABLE description ADD COLUMN name VARCHAR NOT NULL;
ALTER TABLE description ADD COLUMN one TEXT NOT NULL;
ALTER TABLE description ADD COLUMN two NUMERIC(4,1) NOT NULL;
ALTER TABLE description ADD COLUMN three INT NOT NULL;
ALTER TABLE description ADD COLUMN four INT NOT NULL;
ALTER TABLE description ADD COLUMN five BOOLEAN NOT NULL;
ALTER TABLE description ADD COLUMN six BOOLEAN NOT NULL;

INSERT INTO description(name, one, two, three, four, five, six) VALUES('yi', 'yi', 1.1, 1, 1, false, false), ('er', 'er', 2.2, 2, 2, true, true), ('san', 'san', 3.3, 3, 3, false, false);