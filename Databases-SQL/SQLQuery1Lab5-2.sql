SELECT * FROM Students
SELECT * FROM Teachers
SELECT * FROM Disciplines
SELECT * FROM Marks
SELECT * FROM Groups

SELECT Name,Surname FROM Students 
WHERE NOT EXISTS (SELECT Mark FROM Marks JOIN  Teachers
ON Marks.Teacher_Id=Teachers.Teacher_Id 
WHERE Marks.Student_Id=Students.Stud_Id AND Teachers.Name='Ionescu' AND Teachers.Surname='Vasile')

