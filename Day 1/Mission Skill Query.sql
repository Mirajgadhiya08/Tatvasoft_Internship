create table MissionSkill(
	Id serial primary key,
	SkillName character varying(255) not null,
	Status character varying
);

select * from MissionSkill
INSERT INTO MissionSkill (SkillName, Status)
VALUES 
    ('First Aid', 'Active'),
    ('Navigation', 'Active'),
    ('Survival Skills', 'Inactive'),
    ('Communication', 'Active');
