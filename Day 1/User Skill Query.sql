create table UserSkills(
	Id serial primary key,
	Skills character varying not null,
	UserId integer references "User"(Id)
);

select * from UserSkills
INSERT INTO UserSkills (Skills, UserId) VALUES
    ('Java', 1),
    ('Python', 1),
    ('SQL', 1);