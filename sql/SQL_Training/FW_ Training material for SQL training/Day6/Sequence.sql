CREATE SEQUENCE SequenceCounter 
    AS decimal (3,0)   
    START WITH 10  
    INCREMENT BY 5  
    MINVALUE 10  
    MAXVALUE 500  
    CYCLE  
   ;


   CREATE TABLE Training(
    TrainingId int PRIMARY KEY,
    TrainingName nvarchar(50) NOT NULL,
    TrainingDate date NOT NULL)


INSERT INTO Training(TrainingId, TrainingName, TrainingDate)
VALUES(NEXT VALUE FOR SequenceCounter, 'SEO' , '11/23/2022');

INSERT INTO Training(TrainingId, TrainingName, TrainingDate)
VALUES(NEXT VALUE FOR SequenceCounter, 'SQL Server', '11/24/2022');

SELECT * FROM dbo.Training