create table MissionApplication (
    Id serial primary key,
    MissionId int references Missions(Id),
    UserId int references "User"(Id),
    AppliedDate timestamp not null,
    Status boolean,
    Sheet integer
);

select * from MissionApplication
INSERT INTO MissionApplication (MissionId, UserId, AppliedDate, Status, Sheet)
VALUES 
    (1, 1, '2024-05-22 10:00:00', TRUE, 10),
    (2, 1, '2024-05-21 14:30:00', FALSE, 20);
