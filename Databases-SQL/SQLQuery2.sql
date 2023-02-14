ALTER TABLE Students
ADD CHECK (Group_Id>=1 AND Group_Id<=5);
ALTER TABLE Marks
ADD CHECK (Mark>0);