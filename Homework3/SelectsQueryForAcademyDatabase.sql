--Task 1
SELECT d.Name , d.Financing  FROM Departaments AS d
ORDER BY Id DESC

--Task2
SELECT g.Name , g.Raiting FROM Groups AS g

--Task3
SELECT 
    t.Surname ,
    (t.Premium * 100 / t.Salary) AS SalaryToPremiumProcent,
    (t.Salary * 100 /(t.Salary + t.Premium)) AS SalaryToTotalProcent
FROM Teachers AS t

--Task4
SELECT 'The dean of faculcy ' + f.Name + ' is ' + f.Dean AS FacultyInfo FROM Faculties AS f

--Task5
SELECT t.Surname FROM Teachers AS t
WHERE t.IsProfessor = 1 AND t.Salary > 1050

--Task6
SELECT d.Name FROM Departaments AS d
WHERE d.Financing < 11000 OR d.Financing > 25000

--Task7
SELECT d.Name FROM Departaments AS d
WHERE d.Name <> 'Computer Science'

--Task8
SELECT t.Name , t.Surname , t.[Position] FROM Teachers AS t
WHERE t.IsProfessor = 0

--Task9
SELECT t.Surname , t.[Position] , t.Salary , T.Premium FROM Teachers AS t
WHERE t.Premium > 160 AND t.Premium < 550

--Task10
SELECT t.Surname , t.Premium FROM Teachers AS t
WHERE t.IsAssistant = 1

--Task11
SELECT t.Surname , t.[Position] FROM Teachers AS t
WHERE t.EmployementDate < '2000-01-01'

--Task12
SELECT d.Name AS [Name of department] FROM Departaments AS D
WHERE d.name < 'Software development'
ORDER BY d.name ASC

--Task13
SELECT t.Surname FROM Teachers AS t
WHERE t.IsAssistant = 1 AND (t.Premium + t.Salary) < 1200

--Task14
SELECT g.Name FROM Groups AS g
WHERE g.[Year] = 5 AND g.Raiting >= 2 AND g.Raiting <= 4

--Task15
SELECT t.Surname FROM Teachers AS t
WHERE t.Salary < 550 OR t.Premium < 200