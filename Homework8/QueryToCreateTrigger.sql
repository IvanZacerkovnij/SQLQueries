USE SportShopDB;

GO

CREATE TRIGGER trg_FireEmployee
ON Employees
AFTER DELETE 
AS 
BEGIN 
    INSERT INTO EmployeeArchive(FullName,Sex,Salary,PositionId,HireDate)
    SELECT
        FullName,
        Sex,
        Salary,
        PositionId,
        HireDate
    FROM deleted
END

GO