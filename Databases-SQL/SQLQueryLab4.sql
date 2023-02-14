SELECT * FROM Students

SELECT Name, Surname FROM Students
WHERE Group_Id = 3

SELECT Name, Surname, Date_of_Birth FROM Students
WHERE Name Like 'A%'

DROP table Groups
CREATE table Groups
( Gr_Id int,
  Gr_name varchar(50),
  Year_of_Study int,
  Comments varchar(100)
);
ALTER TABLE Groups ADD Group_description varchar(100);
SELECT * FROM Groups

INSERT INTO Groups (Gr_Id, Gr_name, Year_of_Study, Comments, Group_description)
VALUES (3, 'Automatica', 2022, 'nimic', 'faina')
INSERT INTO Groups (Gr_Id, Gr_name, Year_of_Study, Comments, Group_description)
VALUES (2, 'Calculatoare', 2022, '.', 'grupa')
INSERT INTO Groups (Gr_Id, Gr_name, Year_of_Study, Comments, Group_description)
VALUES (1, 'Mecanica', 2022, 'Haha', 'XD')
SELECT * FROM Groups

SELECT * FROM Teachers

SELECT * FROM Disciplines

INSERT INTO Marks(Student_Id, Teacher_Id, Disc_Id, Mark, Date_of_Exam)
VALUES (276, 625, 521, 4, 13/10/2022) 
SELECT * FROM Marks