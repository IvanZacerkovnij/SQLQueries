USE Academy;

GO

INSERT INTO Faculties (Name)
VALUES 
('Computer Science'),
('Economics'),
('Engineering');

INSERT INTO Departaments (Financing, Name, FacultyId)
VALUES
(500000, 'Software Development', 1),
(350000, 'Cybersecurity', 1),
(250000, 'Accounting', 2),
(400000, 'Mechanical Engineering', 3);

INSERT INTO Teachers (Name, Surname, Salary)
VALUES
('Ivan',  'Petrenko',   30000),
('Ivan',  'Koval',      28000),
('Olena', 'Petrenko',   32000),
('Andriy','Shevchenko', 29000),
('Maria', 'Bondar',     31000),
('Ivan',  'Melnyk',     27000),
('Olena', 'Koval',      30500);

INSERT INTO Subjects (Name)
VALUES
('Databases'),
('Algorithms'),
('Cybersecurity Basics'),
('Financial Accounting'),
('Physics'),
('Web Development');

INSERT INTO Groups (Name, Year, DepartamentId)
VALUES
('P107',   1, 1),
('SD-201', 2, 1),
('CYB-101',1, 2),
('ACC-101',1, 3),
('ME-301', 3, 4);

INSERT INTO Lectures (DayOfWeek, LectureRoom, SubjectId, TeacherId)
VALUES
(1, 'A101', 1, 1),  
(2, 'B202', 2, 2),  
(3, 'C303', 3, 4), 
(4, 'D404', 4, 5),  
(5, 'E505', 5, 3),  
(6, 'F606', 6, 7); 

INSERT INTO GroupLecture (GroupId, LectureId)
VALUES
(1, 1), 
(1, 2), 
(1, 6), 
(2, 1), 
(2, 2), 
(3, 3), 
(4, 4), 
(5, 5);

GO