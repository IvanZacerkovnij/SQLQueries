USE Academy;

GO

INSERT INTO Faculties (Name) VALUES
(N'Computer Science'),
(N'Engineering'),
(N'Business');
GO

INSERT INTO Departaments (Building, Financing, Name, FacultyId) VALUES
(1, 200000, N'Software Development', 1),
(2, 150000, N'Cybersecurity', 1),
(3, 120000, N'Electrical Engineering', 2),
(4, 100000, N'Mechanical Engineering', 2),
(5, 180000, N'Finance and Analytics', 3);
GO

INSERT INTO Groups (Name, Year, DepartamentId) VALUES
(N'SD-101', 1, 1),
(N'SD-201', 2, 1),
(N'CY-101', 1, 2),
(N'EE-301', 3, 3),
(N'ME-201', 2, 4),
(N'FA-401', 4, 5);
GO

INSERT INTO Curators (Name, Surname) VALUES
(N'Іван', N'Коваль'),
(N'Олена', N'Шевченко'),
(N'Андрій', N'Мельник'),
(N'Марія', N'Бондар');
GO

INSERT INTO GroupsCurators (GroupId, CuratorId) VALUES
(1,1),
(2,1),
(3,2),
(4,3),
(5,4),
(6,2);
GO

INSERT INTO Subjects (Name) VALUES
(N'Databases'),
(N'Algorithms'),
(N'Cybersecurity Basics'),
(N'Physics'),
(N'Corporate Finance');
GO

INSERT INTO Students (Name, Surname, Raiting) VALUES
(N'Максим', N'Іваненко', 5),
(N'Олександр', N'Петренко', 4),
(N'Юлія', N'Савченко', 5),
(N'Ірина', N'Кравчук', 3),
(N'Дмитро', N'Лисенко', 4),
(N'Анна', N'Ткаченко', 5),
(N'Богдан', N'Романюк', 2),
(N'Вікторія', N'Дорошенко', 4);
GO

INSERT INTO Teachers (Name, Surname, IsProfesor, Salary) VALUES
(N'Сергій', N'Білоус', 1, 45000),
(N'Наталія', N'Гнатюк', 0, 30000),
(N'Василь', N'Олійник', 1, 50000),
(N'Тетяна', N'Мазур', 0, 28000),
(N'Олег', N'Клименко', 1, 47000);
GO

INSERT INTO Lectures (Date, SubjectId, TeacherId) VALUES
('2024-03-01', 1, 1),
('2024-03-05', 2, 1),
('2024-04-01', 3, 3),
('2024-04-10', 4, 2),
('2024-05-01', 5, 5);
GO

INSERT INTO GroupsLecture (GroupId, LectureId) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(6,5);
GO

INSERT INTO GroupsStudents (GroupId, StudentId) VALUES
(1,1),
(1,2),
(2,3),
(3,4),
(4,5),
(5,6),
(6,7),
(6,8);
GO