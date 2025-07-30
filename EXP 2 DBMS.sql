/*You are a Database Engineer at TalentTree Inc., an enterprise HR analytics platform that stores employee data, including their reporting relationships. 
The company maintains a centralized Employee relation that holds:Each employee’s ID, name, department, and manager ID (who is also an employee in the same table).
Your task is to generate a report that maps employees to their respective managers, showing:
The employee’s name and department
Their manager’s name and department (if applicable)
This will help the HR department visualize the internal reporting hierarchy.*/

CREATE TABLE employee(
	EmpID INT,
	Ename VARCHAR(30),
	Department VARCHAR(20),
	ManagerID INT 
)

INSERT INTO employee(empID,Ename,Department,ManagerID) VALUES(1,'Alice','HR',NULL),(2,'Bob','Finance',1),(3,'Charlie','IT',1),
(4,'David','Finance',2),(5,'Eve','IT',3),(6,'Frank','HR',1)



SELECT e1.Ename 'Employee name',e2.Ename 'Manager name',e1.Department 'employee department',e2.Department 'manager name'
FROM employee e1
LEFT JOIN 
employee e2
ON e1.EmpID=e2.ManagerID



CREATE TABLE Year_tbl(
	ID INT,
	Year INT,
	NVP INT
)

CREATE TABLE Queries_tbl(
	ID INT ,
	Year INT
)

INSERT INTO Year_tbl VALUES(1,2018,100),(7,2020,300),(13,2019,40),(1,2019,113),(2,2008,121),(3,2009,12),(11,2020,99),(7,2019,0)
INSERT INTO Queries_tbl VALUES(1,2019),(2,2008),(3,2009),(7,2018),(7,2019),(7,2020),(13,2019)

SELECT q.ID,q.Year,ISNULL(y.NVP,0)
FROM Year_tbl y
RIGHT JOIN Queries_tbl q
ON y.ID=q.ID AND y.Year=q.Year
ORDER BY ID



DROP TABLE Queries_tbl