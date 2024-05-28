CREATE TABLE City (
   Id serial PRIMARY KEY,
   CountryId integer NOT NULL REFERENCES Country(Id),
   CityName character varying(100) NOT NULL
);

select*from city
INSERT INTO City (CountryId, CityName) VALUES (1, 'New York');
INSERT INTO City (CountryId, CityName) VALUES (1, 'Los Angeles');
INSERT INTO City (CountryId, CityName) VALUES (2, 'Toronto');
INSERT INTO City (CountryId, CityName) VALUES (2, 'Vancouver');
INSERT INTO City (CountryId, CityName) VALUES (3, 'London');
INSERT INTO City (CountryId, CityName) VALUES (3, 'Manchester');
