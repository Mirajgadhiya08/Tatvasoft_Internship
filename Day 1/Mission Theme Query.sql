create table MissionTheme(
	Id serial primary key,
	ThemeName character varying(255) not null,
	Status character varying
);

select * from MissionTheme
INSERT INTO MissionTheme (ThemeName, Status)
VALUES 
    ('Environmental Conservation', 'Active'),
    ('Community Development', 'Active'),
    ('Education and Literacy', 'Inactive'),
    ('Healthcare and Wellness', 'Active');

