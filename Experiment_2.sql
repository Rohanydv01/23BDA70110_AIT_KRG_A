-- Create Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Department VARCHAR(50)
);

-- Create Marks Table
CREATE TABLE Marks (
    MarkID INT PRIMARY KEY,
    StudentID INT,
    Subject VARCHAR(50),
    Marks INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

INSERT INTO Students (StudentID, StudentName, Department) VALUES
(1, 'Aarav', 'Computer Science'),
(2, 'Diya', 'Mechanical'),
(3, 'Rohan', 'Electronics'),
(4, 'Isha', 'Computer Science'),
(5, 'Kabir', 'Mechanical');

INSERT INTO Marks (MarkID, StudentID, Subject, Marks) VALUES
(1, 1, 'Math', 85),
(2, 1, 'Physics', 78),
(3, 2, 'Math', 92),
(4, 2, 'Physics', 81),
(5, 3, 'Math', 67),
(6, 3, 'Physics', 88),
(7, 4, 'Math', 91),
(8, 4, 'Physics', 95),
(9, 5, 'Math', 75),
(10, 5, 'Physics', 84);

SELECT 
    S.StudentName,
    S.Department,
    M.Subject,
    M.Marks
FROM 
    Students S
JOIN 
    Marks M ON S.StudentID = M.StudentID
WHERE 
    M.Marks > 80;



