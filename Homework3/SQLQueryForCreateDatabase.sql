CREATE DATABASE Academy;

GO

USE Academy;

GO

CREATE TABLE Departaments(
    Id INT PRIMARY KEY IDENTITY(1,1),
    Financing MONEY CHECK(financing >= 0) DEFAULT(0) NOT NULL,
    Name NVARCHAR(100) CHECK(LEN(LTRIM(name)) > 0) NOT NULL
);

GO

CREATE TABLE Faculties(
    Id INT PRIMARY KEY IDENTITY(1,1),
    Dean NVARCHAR(100) CHECK(LEN(LTRIM(dean)) > 0) NOT NULL,
    Name NVARCHAR(100) CHECK(LEN(LTRIM(name)) > 0) NOT NULL
);

GO 

CREATE TABLE Groups(
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) CHECK(LEN(LTRIM(name)) > 0) NOT NULL,
    Raiting INT CHECK(Raiting >= 0 AND Raiting <= 5),
    Year INT CHECK(Year >= 1 AND Year <= 5)
);

GO 

CREATE TABLE Teachers(
    Id INT PRIMARY KEY IDENTITY(1,1),
    EmployementDate DATE CHECK(EmployementDate > '1990-01-01'),
    IsAssistant BIT DEFAULT(0) NOT NULL,
    IsProfessor BIT DEFAULT(0) NOT NULL,
    Name NVARCHAR(MAX) CHECK(LEN(LTRIM(Name)) > 0) NOT NULL,
    Position NVARCHAR(MAX) CHECK(LEN(LTRIM(Position)) > 0) NOT NULL,
    Premium MONEY CHECK(Premium >= 0) DEFAULT(0) NOT NULL,
    Salary MONEY CHECK(Salary > 0) DEFAULT(0),
    Surname NVARCHAR(MAX) CHECK(LEN(LTRIM(Surname)) > 0) NOT NULL
);

GO