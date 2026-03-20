USE SportShopDB;

GO

INSERT INTO Positions (Name)
VALUES 
('Продавець'),
('Менеджер');

INSERT INTO Employees (FullName, PositionId, HireDate, Sex, Salary)
VALUES 
('Іван Петренко', 1, '2022-05-10', 1, 15000),
('Олег Коваль', 2, '2021-03-15', 1, 20000),
('Марія Шевченко', 1, '2023-01-20', 0, 14000);

GO

SELECT * FROM Employees;

DELETE FROM Employees
WHERE FullName = 'Іван Петренко';

SELECT * FROM EmployeeArchive;

GO