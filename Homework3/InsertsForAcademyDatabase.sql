USE Academy;

GO

INSERT INTO Departaments (Financing, Name) VALUES
(150000.00, N'Computer Science'),
(120000.00, N'Cybersecurity'),
(90000.00,  N'Mathematics'),
(80000.00,  N'Physics'),
(110000.00, N'Information Systems');

GO

INSERT INTO Faculties (Dean, Name) VALUES
(N'Petro Ivanenko',  N'Engineering'),
(N'Olena Kovalenko', N'Applied Sciences'),
(N'Andrii Melnyk',   N'IT Technologies'),
(N'Maria Shevchenko',N'Natural Sciences');

GO

INSERT INTO Groups (Name, Raiting, Year) VALUES
(N'CS-101', 4, 1),
(N'CS-202', 5, 2),
(N'CYB-301', 3, 3),
(N'IS-401', 4, 4),
(N'MTH-501', 5, 5);

GO

INSERT INTO Teachers
(EmployementDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname)
VALUES
('1995-03-12', 0, 1, N'Ivan',    N'Professor',          3000, 25000, N'Petrenko'),
('2001-09-01', 1, 0, N'Olena',   N'Assistant',           800, 14000, N'Kovalchuk'),
('2010-06-20', 0, 0, N'Serhii',  N'Senior Lecturer',    1500, 18000, N'Bondarenko'),
('1998-11-15', 0, 1, N'Maria',   N'Head of Department', 5000, 32000, N'Shevchenko'),
('2018-01-10', 1, 0, N'Andrii',  N'Lecturer',            600, 13000, N'Melnyk');

GO