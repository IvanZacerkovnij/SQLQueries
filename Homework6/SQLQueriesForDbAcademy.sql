USE Academy;

GO 

--Task1
SELECT d.Building AS [Building number] 
FROM Departaments AS d
GROUP BY d.Building
HAVING SUM(d.Financing) > 100000;

--Task2
SELECT g.Name FROM GroupsLecture AS gl
INNER JOIN Groups AS g ON g.id = gl.GroupId
INNER JOIN Departaments AS d ON d.Id = g.DepartamentId
INNER JOIN Lectures AS l ON l.Id = gl.LectureId
WHERE 
    g.[Year] = 5 AND
    d.Name = 'Software Development' AND
    l.[Date] BETWEEN GETDATE()-7 AND GETDATE()
GROUP BY g.Name
HAVING COUNT(l.Id) > 10 

GO 

--Task3
SELECT g.Name FROM GroupsStudents AS gs 
INNER JOIN Groups AS g ON g.Id = gs.GroupId
INNER JOIN Students AS s ON s.Id = gs.StudentId
GROUP BY g.id , g.Name
HAVING AVG(s.Raiting) > (
    SELECT AVG(s2.Raiting) FROM Groups AS g2
    INNER JOIN GroupsStudents AS gs2 ON g2.Id = gs2.GroupId
    INNER JOIN Students AS s2 ON s2.Id = gs2.StudentId
    WHERE g2.Name = 'D221'
);

--Task4
SELECT t.Name , t.Surname FROM Teachers AS t 
WHERE t.Salary > (
    SELECT AVG(t2.Salary) FROM Teachers AS t2
    WHERE t2.IsProfesor = 1
)

--Task5
SELECT g.Name FROM Groups AS g
INNER JOIN GroupsCurators AS gc ON gc.GroupId = g.Id
GROUP BY g.Name
HAVING COUNT(gc.CuratorId) > 1

--Task6
SELECT g.id, g.Name FROM Groups AS g
INNER JOIN GroupsStudents AS gs ON gs.GroupId = g.Id
INNER JOIN Students AS s ON s.Id = gs.StudentId
GROUP BY g.Id, g.Name
HAVING AVG(s.Raiting) < (
    SELECT MIN(GroupAvg)
    FROM (
        SELECT AVG(s2.Raiting) AS GroupAvg
        FROM Groups AS g2
        INNER JOIN GroupsStudents AS gs2 ON gs2.GroupId = g2.Id
        INNER JOIN Students AS s2 ON s2.Id = gs2.StudentId
        WHERE g2.[Year] = 5
        GROUP BY g2.Id, g2.Name
    ) AS FifthYearGroup
)

--Task7
SELECT f.id ,f.Name FROM Faculties AS f 
INNER JOIN Departaments AS d ON d.FacultyId = f.Id
GROUP BY f.id ,f.Name
HAVING SUM(d.Financing) > (
    SELECT SUM(d2.Financing) FROM Faculties AS f2
    INNER JOIN Departaments AS d2 ON d2.FacultyId = f2.Id
    WHERE f2.Name = 'Computer Science'
)

--Task8
SELECT t.Name , t.Surname , s.Name AS [Subject] FROM Lectures AS l 
INNER JOIN Teachers AS t ON t.Id = l.TeacherId
INNER JOIN Subjects AS s ON s.Id = l.SubjectId
GROUP BY t.Name , t.Surname , s.Name
HAVING COUNT(l.Id) = (
    SELECT MAX(LectureCount) FROM (
        SELECT COUNT(l2.Id) AS LectureCount FROM Lectures AS l2
        INNER JOIN Subjects AS s2 ON s2.Id = l2.SubjectId
        GROUP BY l2.TeacherId
    ) AS Count
)

--Task9
SELECT s.Name FROM Lectures AS l 
INNER JOIN Subjects AS s ON s.Id = l.SubjectId
GROUP BY s.Name
HAVING COUNT(l.id) = (
    SELECT MIN(LectureCount) FROM (
        SELECT COUNT(l2.Id) AS LectureCount
        FROM Lectures AS l2
        GROUP BY l2.SubjectId
    ) AS Count
)
--Task10
SELECT 
    COUNT(DISTINCT s.Id) AS [Students Count],
    COUNT(DISTINCT sub.Id) AS [Subjects Count]
FROM Departaments AS d
INNER JOIN Groups AS g ON g.DepartamentId = d.Id
INNER JOIN GroupsStudents AS gs ON gs.GroupId = g.Id
INNER JOIN Students AS s ON s.Id = gs.StudentId
INNER JOIN GroupsLecture AS gl ON gl.GroupId = g.Id
INNER JOIN Lectures AS l ON l.Id = gl.LectureId
INNER JOIN Subjects AS sub ON sub.Id = l.SubjectId
WHERE d.Name = 'Software Development'

