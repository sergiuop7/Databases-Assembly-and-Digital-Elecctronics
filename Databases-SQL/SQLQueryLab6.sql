CREATE VIEW Exercise1a AS
SELECT Name,Surname,Group_Id,Disc_name,Date_of_Exam,Mark
FROM Students JOIN Marks on (Stud_Id=Student_Id) JOIN Disciplines ON (Disc_Id=Discipline_Id)

CREATE VIEW Exercise1b AS
SELECT Name,Surname,
					(CASE WHEN [TeachersDisciplines].Disc_Id IS NULL THEN 'No discipline' ELSE Disc_name END ) AS Discipline_name
FROM Teachers LEFT JOIN [TeachersDisciplines] ON (Teachers.Teacher_Id=[TeachersDisciplines].Teach_Id) 
				LEFT JOIN Disciplines on ([TeachersDisciplines].Disc_Id =Disciplines.Discipline_Id)
			
CREATE VIEW Exercise1c AS
SELECT Teachers.Name, Teachers.Surname
FROM Teachers LEFT JOIN Marks ON (Teachers.Teacher_Id=Marks.Teacher_Id) LEFT JOIN Students ON (Student_Id=Stud_Id)
WHERE Students.Group_Id<>(SELECT Gr_id
						  FROM  Groups JOIN Students ON (Group_Id=Gr_Id)
						  WHERE Gr_Name='3021'
						  GROUP BY Gr_Id)
GROUP BY Teachers.Teacher_Id, Teachers.Name, Teachers.Surname


CREATE VIEW Exercise1d AS
(
SELECT Students.Name,Students.Surname
FROM Students JOIN Marks ON (Student_Id=Stud_Id)
WHERE Disc_Id=(   SELECT Discipline_id
			      FROM Disciplines
				  WHERE Disc_name='Databases' )
				  )
EXCEPT
(
SELECT Students.Name,Students.Surname
FROM Students JOIN Marks ON (Student_Id=Stud_Id)
WHERE Disc_Id=(   SELECT Discipline_id
				  FROM Disciplines
				  WHERE Disc_name='Computer Programming' )
)

CREATE VIEW Exercise1e AS
SELECT Name,Surname
FROM Teachers JOIN Marks on (Teachers.Teacher_Id=Marks.Teacher_Id) JOIN Disciplines ON (Disc_Id=Discipline_Id)
WHERE Disc_Id=(   SELECT Discipline_id
			      FROM Disciplines
				  WHERE Disc_name='Mathematics' )


ALTER VIEW Exercise1a AS
SELECT Name,Surname,Group_Id,Disc_name,Date_of_Exam,Mark
FROM Students JOIN Marks ON (Student_Id=Stud_Id) JOIN Disciplines ON (Disc_Id=Discipline_Id)
WHERE Disc_Id=(   SELECT Discipline_id
			      FROM Disciplines
				  WHERE Disc_name='Databases' )
		

USE Exams
UPDATE [Exercise1e] 
SET dbo.Exercise1e.Name = 'Pop' 
WHERE dbo.Exercise1e.Name = 'Popescu' AND dbo.Exercise1e.Surname = 'Maria'
