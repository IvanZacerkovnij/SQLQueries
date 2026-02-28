USE Academy;

GO

--Task1
SELECT t.Name , t.Surname , g.Name FROM Teachers AS t
CROSS JOIN Groups AS g

--Task2
SELECT f.Name FROM Faculties AS f 
INNER JOIN Departaments AS d ON d.FacultyId = d.id
WHERE f.Financing < d.Financing

--Task3
SELECT c.Name, c.Surname, g.Name FROM GroupsCurators AS gc
INNER JOIN Curators AS c ON c.Id = gc.CuratorId
INNER JOIN Groups AS g ON g.Id = gc.GroupId

--Taks4
SELECT t.Surname FROM GroupsLectures AS gl 
INNER JOIN Groups AS g ON g.id = gl.GroupId
INNER JOIN Lectures AS l ON l.Id = gl.LectureId
INNER JOIN Teachers AS t on t.Id = l.TeacherId
WHERE g.name = 'P107'

--Task5

--Не коректно задане тех. завдання

--Task6
SELECT g.Name AS [Group name] , d.Name AS [Departament name] FROM Groups AS g 
INNER JOIN Departaments AS d ON d.Id = g.DepartamentId

--Task7
SELECT s.Name AS [Subject] FROM Lectures AS l 
INNER JOIN Teachers AS t ON t.Id = l.TeacherId
INNER JOIN Subjects AS s ON s.Id = l.SubjectId
WHERE t.Name = 'Samantha Adams'

--Task8

--Не коректно задане тех. завдання

--Task9
SELECT g.Name AS [Group] FROM Groups AS g 
INNER JOIN Departaments AS d ON d.Id = g.DepartamentId
INNER JOIN Faculties AS f ON f.Id = d.FacultyId
WHERE f.Name = 'Computer Science'

--Task10
SELECT g.Name AS [Group] , f.Name AS [Faculty] FROM Groups AS g 
INNER JOIN Departaments AS d ON d.Id = g.DepartamentId
INNER JOIN Faculties AS f ON f.Id = d.FacultyId
WHERE g.[Year] = 5

--Task11
SELECT 
    t.Surname ,
    g.Name AS [Group],
    s.Name AS [Subject]
FROM GroupsLectures AS gl 
INNER JOIN Lectures AS l ON l.Id = gl.LectureId
INNER JOIN Subjects AS s ON s.Id = l.SubjectId
INNER JOIN Groups AS g ON g.Id = gl.GroupId
INNER JOIN Teachers AS t ON t.Id = l.TeacherId
WHERE l.LectureRoom = 'B103'