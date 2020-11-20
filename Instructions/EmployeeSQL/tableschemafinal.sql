CREATE TABLE Employees (
    EmployeeNumber  VARCHAR  PRIMARY KEY NOT NULL,
    EmpTitle VARCHAR   NOT NULL,
    Birthdate VARCHAR   NOT NULL,
    FirstName VARCHAR   NOT NULL,
    LastName VARCHAR   NOT NULL,
    Sex VARCHAR   NOT NULL,
    HireDate VARCHAR   NOT NULL
);

CREATE TABLE Departments (
    DeptNumber VARCHAR PRIMARY KEY   NOT NULL,
    DeptName VARCHAR   NOT NULL
);

CREATE TABLE Department_Manager (
    DeptNumber VARCHAR   NOT NULL,
    EmployeeNumber VARCHAR   NOT NULL,
	PRIMARY KEY (DeptNumber, EmployeeNumber),
	FOREIGN KEY (EmployeeNumber) REFERENCES Employees(EmployeeNumber),
	FOREIGN KEY (DeptNumber) REFERENCES Departments(DeptNumber)
);

CREATE TABLE Department_Employees (
    EmployeeNumber VARCHAR   NOT NULL,
    DeptNumber VARCHAR   NOT NULL,
	PRIMARY KEY (EmployeeNumber,DeptNumber),
	FOREIGN KEY (EmployeeNumber) REFERENCES Employees(EmployeeNumber),
	FOREIGN KEY (DeptNumber) REFERENCES Departments(DeptNumber)
);




CREATE TABLE Salaries (
    EmployeeNumber  VARCHAR PRIMARY KEY  NOT NULL,
    Salary VARCHAR   NOT NULL,
	FOREIGN KEY (EmployeeNumber) REFERENCES Employees(EmployeeNumber)
);

CREATE TABLE Titles (
    TitleID  VARCHAR PRIMARY KEY  NOT NULL,
    Title VARCHAR   NOT NULL
);
