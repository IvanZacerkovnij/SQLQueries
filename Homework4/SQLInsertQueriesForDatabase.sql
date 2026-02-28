USE Academy;

GO 

INSERT INTO Faculties (Financing, Name)
VALUES 
(500000, 'Computer Science'),
(300000, 'Economics'),
(400000, 'Engineering');

INSERT INTO Departaments (Financing, Name, FacultyId)
VALUES
(200000, 'Software Development', 1),
(150000, 'Cybersecurity', 1),
(120000, 'Accounting', 2),
(180000, 'Mechanical Engineering', 3);

INSERT INTO Groups (Name, Year, DepartamentId)
VALUES
('CS-101', 1, 1),
('CS-201', 2, 1),
('CYB-101', 1, 2),
('ACC-101', 1, 3),
('ME-301', 3, 4);

INSERT INTO Subjects (Name)
VALUES
('Databases'),
('Algorithms'),
('Cybersecurity Basics'),
('Financial Accounting'),
('Physics');

INSERT INTO Teachers (Name, Surname, Salary)
VALUES
('Ivan', 'Petrenko', 25000),
('Olena', 'Shevchenko', 28000),
('Andriy', 'Koval', 30000),
('Maria', 'Bondar', 27000);

INSERT INTO Curators (Name, Surname)
VALUES
('Petro', 'Ivanov'),
('Svitlana', 'Melnyk'),
('Oleh', 'Tkachenko');

INSERT INTO Lectures (LectureRoom, SubjectId, TeacherId)
VALUES
('A101', 1, 1),
('B202', 2, 2),
('C303', 3, 3),
('D404', 4, 4),
('E505', 5, 1);

INSERT INTO GroupsLectures (GroupId, LectureId)
VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO GroupsCurators (CuratorId, GroupId)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 2),
(2, 4),
(3, 1),
(3, 5);

GO