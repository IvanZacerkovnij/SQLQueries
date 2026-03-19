USE Academy;

GO

--Task1 
SELECT DISTINCT lr.Building , lr.Name FROM Schedules AS s 
INNER JOIN LectureRooms AS lr ON lr.Id = s.LectureRooms
INNER JOIN Lectures AS l ON l.Id = s.LectureId
INNER JOIN Teachers AS t ON t.Id = l.TeacherId
WHERE t.Name = 'Edward' AND t.Surname = 'Hopper'

--Task2
SELECT DISTINCT t.Surname FROM GroupsLectures AS gl 
INNER JOIN Groups AS g ON g.Id = gl.GroupId
INNER JOIN Lectures AS l ON l.Id = gl.LectureId
INNER JOIN Teachers AS t ON t.Id = l.TeacherId
INNER JOIN Assistants AS a ON a.TeacherId = t.Id
WHERE g.Name = 'DS-101'

--Task3
SELECT DISTINCT s.Name AS [Subject]
FROM Lectures AS l 
INNER JOIN Teachers AS t ON t.Id = l.TeacherId
INNER JOIN Subjects AS s ON s.Id = l.SubjectId
INNER JOIN GroupsLectures AS gl ON gl.LectureId = l.Id
INNER JOIN Groups AS g ON g.Id  = gl.GroupId
WHERE t.Name = 'Alex' AND t.Surname = 'Carmak' AND g.[Year] = 5

--Task4
SELECT t.Surname
FROM Teachers AS t
WHERE NOT EXISTS (
    SELECT *
    FROM Lectures AS l
    INNER JOIN Schedules AS s ON s.LectureId = l.Id
    WHERE s.DayOfWeek = 1 AND l.TeacherId = t.Id
)

--Task5
SELECT lr.Name, lr.Building
FROM LectureRooms AS lr
WHERE NOT EXISTS(
    SELECT *
    FROM Schedules AS s 
    WHERE s.DayOfWeek = 3 AND s.[Week] = 2 AND s.LectureRooms = lr.Id
);

--Task6
SELECT t.Name + ' ' + t.Surname AS [Full name]
FROM Teachers AS t
LEFT JOIN Curators AS c ON c.TeacherId = t.Id
INNER JOIN GroupsCurators AS gc ON gc.CuratorId = c.Id
INNER JOIN Groups AS g ON g.Id = gc.GroupId
INNER JOIN Departaments AS d ON d.Id = g.DepartmentId
INNER JOIN Faculties AS f ON f.Id = d.FacultyId
WHERE f.Name = 'Computer Science'
    AND NOT EXISTS (
        SELECT * 
        FROM GroupsCurators AS gc2 
        INNER JOIN Groups AS g2 ON g2.Id = gc2.GroupId
        INNER JOIN Departaments AS d2 ON d2.Id = g2.DepartmentId
        WHERE gc2.CuratorId = c.Id AND d2.Name <> 'Software Development'
    )

--Task7
SELECT DISTINCT f.Building
FROM LectureRooms AS lr 
INNER JOIN Faculties AS f ON f.Building = lr.Building
INNER JOIN Departaments AS d ON d.Building = lr.Building

--Task8
SELECT t.Name + ' ' + t.Surname AS [Full Name]
FROM Teachers t
LEFT JOIN Deans AS d ON d.TeacherId = t.Id
LEFT JOIN Heads AS h ON h.TeacherId = t.Id
LEFT JOIN Assistants AS a ON a.TeacherId = t.Id
LEFT JOIN Curators AS c ON c.TeacherId = t.Id
ORDER BY 
CASE 
    WHEN d.TeacherId IS NOT NULL THEN 1 
    WHEN h.TeacherId IS NOT NULL THEN 2  
    WHEN c.TeacherId IS NOT NULL THEN 4  
    WHEN a.TeacherId IS NOT NULL THEN 5  
    ELSE 3                               
END

--Task9
SELECT DISTINCT s.DayOfWeek
FROM Schedules AS s
INNER JOIN LectureRooms AS lr ON lr.Id = s.LectureRooms
WHERE lr.Building = 6
      AND lr.Name IN ('A311', 'A104')
GROUP BY s.DayOfWeek
HAVING COUNT(DISTINCT lr.Name) = 2