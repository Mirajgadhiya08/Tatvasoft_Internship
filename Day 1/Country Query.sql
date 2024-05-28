create table Country (
   Id serial PRIMARY KEY,
   CountryName character varying(100) NOT NULL
);

select * from Country

INSERT INTO Country (CountryName) VALUES ('United States');
INSERT INTO Country (CountryName) VALUES ('Canada');
INSERT INTO Country (CountryName) VALUES ('United Kingdom');
INSERT INTO Country (CountryName) VALUES ('Australia');
INSERT INTO Country (CountryName) VALUES ('Germany');



update Country set CountryName='USA'where id='10'

delete from country where id='11'
	
delete from country 
	
select * from Country where id='12'


select * from country order by countryname desc
select * from country order by countryname asc





