create table UserDetails(
	Id serial primary key,
	UserId integer references "User"(Id),
	"Name" character varying,
	Surname character varying,
	EmployeeId character varying,
	Manager character varying,
	Title character varying,
	Department character varying,
	MyProfile text,
	WhyIVolunteer text,
	CountryId integer references Country(Id),
	CityId integer references City(Id),
	Availability text,
	LinkedInUrl text,
	MySkills text,
	UserImage text,
	Status boolean
);

select * from UserDetails
-- Insert sample data into the UserDetails table
-- Insert sample data into the UserDetails table
INSERT INTO UserDetails (
    UserId, "Name", Surname, EmployeeId, Manager, Title, Department, 
    MyProfile, WhyIVolunteer, CountryId, CityId, Availability, 
    LinkedInUrl, MySkills, UserImage, Status
) 
VALUES (
    1, 'John', 'Doe', 'EMP123', 'Jane Smith', 'Software Engineer', 
    'Engineering', 'I am a software engineer with experience in web development.', 
    'I volunteer because I believe in giving back to the community.', 
    1, 2, 'Available on weekdays', 
    'https://www.linkedin.com/in/johndoe', 
    'JavaScript, HTML, CSS', 'https://example.com/johndoe.jpg', true
);
