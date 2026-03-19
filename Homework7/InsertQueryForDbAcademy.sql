USE Academy;

GO

INSERT INTO Teachers (Name, Surname) VALUES
('Ivan','Petrenko'),
('Oleg','Shevchenko'),
('Anna','Koval'),
('Maria','Tkachenko'),
('Dmytro','Bondar'),
('Olena','Melnyk'),
('Serhii','Boyko'),
('Natalia','Kravets'),
('Andrii','Kovalchuk'),
('Iryna','Savchenko');

INSERT INTO Assistants (TeacherId) VALUES
(1),(2),(3),(4);

INSERT INTO Curators (TeacherId) VALUES
(5),(6),(7),(8);

INSERT INTO Deans (TeacherId) VALUES
(9),(10);

INSERT INTO Heads (TeacherId) VALUES
(1),(2),(3),(4);

INSERT INTO Faculties (Building, Name, DeanId) VALUES
(1,'Computer Science',1),
(2,'Cybersecurity',2);

INSERT INTO Departaments (Building, Name, FacultyId, HeadId) VALUES
(1,'Software Development',1,1),
(1,'Data Science',1,2),
(2,'Information Security',2,3),
(2,'Networks',2,4);

INSERT INTO Groups (Name, Year, DepartmentId) VALUES
('SD-101',1,1),
('SD-201',2,1),
('DS-301',3,2),
('IS-401',4,3),
('NW-501',5,4);

INSERT INTO Subjects (Name) VALUES
('C#'),
('SQL'),
('Algorithms'),
('Networks'),
('Security'),
('Databases'),
('LINQ'),
('Cryptography');

INSERT INTO Lectures (SubjectId, TeacherId) VALUES
(1,1),(1,2),(2,2),(2,3),(3,3),
(3,4),(4,5),(4,6),(5,7),(5,8),
(6,1),(6,2),(7,3),(7,4),(8,5);

INSERT INTO LectureRooms (Building, Name) VALUES
(1,'101'),
(1,'102'),
(2,'201'),
(2,'202');

INSERT INTO Schedules (Class, DayOfWeek, Week, LectureId, LectureRooms) VALUES
(1,1,10,1,1),
(2,2,10,2,2),
(3,3,10,3,3),
(4,4,10,4,4),
(1,5,10,5,1),
(2,6,10,6,2),
(3,7,10,7,3),
(4,1,11,8,4),
(1,2,11,9,1),
(2,3,11,10,2);

INSERT INTO GroupsLectures (GroupId, LectureId) VALUES
(1,1),(1,2),(2,3),(2,4),(3,5),
(3,6),(4,7),(4,8),(5,9),(5,10);

INSERT INTO GroupsCurators (CuratorId, GroupId) VALUES
(1,1),(2,2),(3,3),(4,4),(1,5);

GO