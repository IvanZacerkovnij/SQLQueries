USE Academy;

GO

--Task1
SELECT COUNT(DISTINCT t.Name + t.Surname) AS [Count of teacher Software Development Faculty] 
FROM GroupLecture AS gl 
INNER JOIN Lectures AS l ON l.Id = gl.LectureId
INNER JOIN Teachers AS t ON t.id = l.TeacherId
INNER JOIN Groups AS g ON g.Id = gl.GroupId
INNER JOIN Departaments AS d ON d.id = g.DepartamentId
WHERE d.Name = 'Software Development'

--Task2
SELECT COUNT(*) AS [Lecture count for teacher] 
FROM Lectures AS l 
INNER JOIN Teachers AS t ON t.Id = l.TeacherId
WHERE t.Name = 'Dave' AND t.Surname = 'McQueen'

--Task3
SELECT COUNT(*) AS [Lectures in D201] 
FROM Lectures AS l 
WHERE l.LectureRoom = 'D201'

--Task4
SELECT l.LectureRoom , COUNT(*) AS [Count Lecture for rooms]
 FROM Lectures AS l 
GROUP BY l.LectureRoom

--Task5
SELECT COUNT(DISTINCT gl.GroupId) AS [Groups count who visit teachers lecture]
FROM GroupLecture AS gl 
INNER JOIN Lectures AS l ON l.Id = gl.LectureId
INNER JOIN Teachers AS t ON t.Id = l.TeacherId
WHERE t.Name = 'Jake' AND t.Surname = 'Underhill'  --В тех завданні задано порахувати студентів, але воно не передбачало 
                                                   --цієї таблиці, тому я порахував групи...

--Task6
SELECT AVG(x.Salary) AS [Average salary teacher of Faculty]
FROM (
    SELECT DISTINCT t.Id, t.Salary
    FROM GroupLecture AS gl 
    INNER JOIN Lectures AS l ON l.Id = gl.LectureId
    INNER JOIN Teachers AS t ON t.Id = l.TeacherId
    INNER JOIN Groups AS g ON g.Id = gl.GroupId
    INNER JOIN Departaments AS d ON d.Id = g.DepartamentId
    INNER JOIN Faculties AS f ON f.Id = d.FacultyId
    WHERE f.Name = 'Computer Science'
) x;

--Task7

--Не коректно задане тех. завдання (завдання не передбачає таблицю студентів)

--Task8
SELECT AVG(d.Financing) AS [Average financing of departaments]
FROM Departaments AS d

--Task9
SELECT t.Name , t.Surname , COUNT(DISTINCT SubjectId) AS [Reading subjects] FROM Lectures AS l 
INNER JOIN Teachers AS t ON t.id = l.TeacherId
GROUP BY t.Name , t.Surname

--Task10
SELECT l.DayOfWeek , COUNT(*) AS [Lectures count]
FROM Lectures AS l 
GROUP BY l.DayOfWeek

--Task11
SELECT l.LectureRoom , COUNT(*) AS [Lectures count]
FROM GroupLecture AS gl 
INNER JOIN Lectures AS l ON l.Id = gl.LectureId
INNER JOIN Groups AS g ON g.Id = gl.GroupId
GROUP BY l.LectureRoom , g.DepartamentId

--Task12
SELECT f.Name , COUNT(l.SubjectId) FROM GroupLecture AS gl 
INNER JOIN Lectures AS l ON l.id = gl.LectureId
INNER JOIN Groups AS g ON g.Id = gl.GroupId
INNER JOIN Departaments AS d ON d.Id = g.DepartamentId
INNER JOIN Faculties AS f ON f.Id = d.FacultyId
GROUP BY f.Name

--Task13
SELECT t.Name , t.Surname , l.LectureRoom , COUNT(*) FROM Lectures AS l 
INNER JOIN Teachers AS t ON t.id = l.TeacherId
GROUP BY t.Name, t.Surname , l.LectureRoom

