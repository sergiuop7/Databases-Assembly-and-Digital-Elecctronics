/*INSERT INTO Students
VALUES ('381', 'Popescu', 'Ion', 'm', 11/30/2000, 3, 'yes')
INSERT INTO Students
VALUES ('120', 'Avram', 'Mircea', 'm', 09/17/2000, 1, 'no')
INSERT INTO Students
VALUES ('278', 'Ionescu', 'Iulia', 'f', 06/13/2000, 1, 'yes')
INSERT INTO Students
VALUES ('255', 'Oprea', 'Sergiu', 'm', 07/06/2000, 2, 'yes')
INSERT INTO Students
VALUES ('413', 'Moldovan', 'Radu', 'f', 06/13/2000, 1, 'no')
*/
SELECT * FROM Students

/*INSERT INTO Groups
VALUES ('3', 'Grupa 3023', '2022', 'Automatica', 'Desc')
INSERT INTO Groups
VALUES ('1', 'Grupa 3021', '2022', 'Automatica', 'Desc')
INSERT INTO Groups
VALUES ('2', 'Grupa 3022', '2022', 'Calculatoare', 'Descriere')
*/
SELECT * FROM Groups

SELECT * FROM Teachers

SELECT * FROM Disciplines

/*INSERT INTO Marks
VALUES (255, 150, 204, 9, 02/17/2022)
INSERT INTO Marks
VALUES (278, 150, 204, 7, 01/29/2022)
INSERT INTO Marks
VALUES (381, 493, 315, 4, 02/23/2022)
INSERT INTO Marks
VALUES (413, 325, 521, 6, 02/05/2022)
*/
SELECT * FROM Marks

/*a*/
SELECT Students.Name,Students.Surname, Students.Group_Id
 FROM Students INNER JOIN Marks ON Stud_Id=Student_Id
  JOIN Teachers ON Marks.Teacher_Id=Teachers.Teacher_Id
WHERE Teachers.Name ='Popovici'

/*
INSERT INTO Disciplines
VALUES (401, 'Databases', 'Informatics')

INSERT INTO Marks
VALUES (255, 325, 401, 9, 02/25/2022)
INSERT INTO Marks
VALUES (278, 325, 401, 6, 02/25/2022)
INSERT INTO Marks
VALUES (381, 325, 401, 8, 02/25/2022)
*/

/*b*/
SELECT  Students.Name,Students.Surname
 FROM Students WHERE Stud_Id  
    IN(SELECT Student_Id From Marks WHERE
        Mark > (SELECT Mark FROM Marks JOIN Disciplines on Disc_Id=Discipline_Id
		   JOIN Students ON Stud_Id=Student_Id
		  WHERE Disc_name='Databases' AND Students.Name='Popescu' AND Students.Surname='Ion'))

/*INSERT INTO Marks
VALUES (381, 493, 315, 4, 02/23/2022)
INSERT INTO Marks
VALUES (413, 325, 521, 6, 02/05/2022)
INSERT INTO Marks
VALUES (255, 325, 401, 9, 02/25/2022)
INSERT INTO Marks
VALUES (278, 325, 401, 6, 02/25/2022)
INSERT INTO Marks
VALUES (381, 325, 401, 8, 02/25/2022)
INSERT INTO Marks
VALUES (120, 271, 204, 5, 02/19/2022)
INSERT INTO Marks
VALUES (255, 271, 204, 8, 02/19/2022)
INSERT INTO Marks
VALUES (278, 271, 204, 8, 02/19/2022)
INSERT INTO Marks
VALUES (381, 271, 204, 9, 02/19/2022)
INSERT INTO Marks
VALUES (413, 271, 204, 4, 02/19/2022)
*/
SELECT * FROM Marks 

/*c*/
SELECT TOP (3) Students.Name,Students.Surname,Gr_name,Mark,Disc_name
 FROM  Students JOIN Groups ON Gr_Id=Group_Id JOIN Marks ON Stud_Id=Student_Id JOIN Disciplines ON Disc_Id=Discipline_Id
  WHERE Mark IN(SELECT Mark FROM Marks
                       WHERE Disc_name='Computer programming' )ORDER BY Mark DESC

/*d*/
SELECT Students.Name,Students.Surname ,AVG(Mark) FROM Students JOIN Marks ON Stud_Id=Student_Id JOIN Groups ON Gr_Id=Group_Id
 WHERE Gr_name='Grupa 30321' GROUP BY Students.Name,Students.Surname

/*e*/
SELECT Gr_Name,Group_Description ,COUNT(Stud_Id) FROM Students JOIN Groups ON Gr_Id=Group_Id
 GROUP BY Gr_name,Group_Description

/*f*/
SELECT Students.Name,Students.Surname, COUNT(Disc_Id) FROM Students LEFT JOIN Marks ON Student_Id=Stud_Id
 GROUP BY Students.Name,Students.Surname

/*/*g*/
SELECT Teachers.Surname,Teachers.Name FROM Teachers JOIN TeachersDisciplines ON TeachersDisciplines.Teach_Id=Teachers.Teacher_Id JOIN Disciplines ON TeachersDisciplines.Disc_Id=Disciplines.Discipline_Id
 WHERE Teachers.Teacher_Id IN(SELECT TeachersDisciplines.Teach.Id FROM TeachersDisciplines WHERE Disc_name='Databases' ) AND
   Teachers.Teacher_Id IN(SELECT TeachersDisciplines.Teach.Id FROM TeachersDisciplines JOIN Disciplines ON TeachersDisciplines.Disc_Id=Disciplines.Discipline_Id WHERE Disc_name='Computer Programming')
*/
/*h*/
SELECT Students.Name, Students.Surname, Gr_name FROM Students JOIN Groups ON Group_Id=Gr_Id
WHERE Stud_Id NOT IN ( SELECT Student_Id FROM Marks JOIN Disciplines ON Disc_Id = Discipline_Id WHERE Disc_name = 'Databases')

