CREATE TABLE Missions (
    Id SERIAL PRIMARY KEY,
    MissionTitle VARCHAR NOT NULL,
    MissionDescription TEXT,
    MissionOrganizationName VARCHAR,
    MissionOrganizationDetails TEXT,
    CountryId INTEGER REFERENCES Country(Id),
    CityId INTEGER REFERENCES City(Id),
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    MissionType VARCHAR(200),
    TotalSheets INTEGER,
    RegistrationDeadLine DATE,
    MissionThemeId INTEGER REFERENCES MissionTheme(Id),
    MissionSkillId INTEGER REFERENCES MissionSkill(Id),
    MissionImage TEXT,
    MissionDocuments TEXT,
    MissionAvailability TEXT,
    MissionVideoUrl TEXT
);


select * from Missions
INSERT INTO Missions (
    MissionTitle,
    MissionDescription,
    MissionOrganizationName,
    MissionOrganizationDetails,
    CountryId,
    CityId,
    StartDate,
    EndDate,
    MissionType,
    TotalSheets,
    RegistrationDeadline,
    MissionThemeId,
    MissionSkillId,
    MissionImage,
    MissionDocuments,
    MissionAvailability,
    MissionVideoUrl
) VALUES (
    'Sample Mission',
    'This is a sample mission description.',
    'Sample Organization',
    'Details about the sample organization.',
    1, -- Assuming CountryId 1 exists
    2, -- Assuming CityId 1 exists
    '2024-05-21', -- Start Date
    '2024-06-21', -- End Date
    'Exploratory',
    10,
    '2024-05-15', -- Registration Deadline
    2, -- Assuming MissionThemeId 1 exists
    2, -- Assuming MissionSkillId 1 exists
    'http://example.com/image.jpg',
    'http://example.com/documents.pdf',
    'Full-time',
    'http://example.com/video.mp4'
);


