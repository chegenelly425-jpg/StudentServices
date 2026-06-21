USE STUDENTSERVICES;
SHOW TABLES;
SHOW CREATE TABLE Departments;
SHOW CREATE TABLE Courses;
SHOW CREATE TABLE Classes;
SHOW CREATE TABLE Modules;
SHOW CREATE TABLE Lecturers;
SHOW CREATE TABLE Subjects;
SHOW CREATE TABLE Hostels;
SHOW CREATE TABLE Students;
SHOW CREATE TABLE Assessments;
SHOW CREATE TABLE Clubs;
SHOW CREATE TABLE StudentClub;
SHOW CREATE TABLE Attachments;
ALTER TABLE Students
ADD CONSTRAINT chk_gender
CHECK (Gender IN ('Male', 'Female'));

ALTER TABLE Assessments
ADD CONSTRAINT chk_cat1
CHECK (CAT1 BETWEEN 0 AND 20);

ALTER TABLE Assessments
ADD CONSTRAINT chk_cat2
CHECK (CAT2 BETWEEN 0 AND 20);

ALTER TABLE Assessments
ADD CONSTRAINT chk_exam
CHECK (ExamScore BETWEEN 0 AND 60);
ALTER TABLE Students
ADD CONSTRAINT unique_student
UNIQUE (StudentName, DateOfBirth);
ALTER TABLE Courses
ADD CONSTRAINT fk_course_department
FOREIGN KEY (DepartmentID)
REFERENCES Departments(DepartmentID);

ALTER TABLE Classes
ADD CONSTRAINT fk_class_course
FOREIGN KEY (CourseID)
REFERENCES Courses(CourseID);

ALTER TABLE Modules
ADD CONSTRAINT fk_module_course
FOREIGN KEY (CourseID)
REFERENCES Courses(CourseID);

ALTER TABLE Lecturers
ADD CONSTRAINT fk_lecturer_department
FOREIGN KEY (DepartmentID)
REFERENCES Departments(DepartmentID);
ALTER TABLE Courses
ADD CONSTRAINT fk_course_department
FOREIGN KEY (DepartmentID)
REFERENCES Departments(DepartmentID);

ALTER TABLE Classes
ADD CONSTRAINT fk_class_course
FOREIGN KEY (CourseID)
REFERENCES Courses(CourseID);

ALTER TABLE Modules
ADD CONSTRAINT fk_module_course
FOREIGN KEY (CourseID)
REFERENCES Courses(CourseID);

ALTER TABLE Lecturers
ADD CONSTRAINT fk_lecturer_department
FOREIGN KEY (DepartmentID)
REFERENCES Departments(DepartmentID);
ALTER TABLE Students
ADD Email VARCHAR(100);

ALTER TABLE Students
MODIFY Address VARCHAR(200);
INSERT INTO Departments ...;

INSERT INTO Courses ...;

UPDATE Students
SET Address='Kiambu'
WHERE StudentID=701;

DELETE FROM Clubs
WHERE ClubID=801;
SELECT * FROM Students;

SELECT * FROM Courses;

SELECT COUNT(*) AS TotalStudents
FROM Students;



