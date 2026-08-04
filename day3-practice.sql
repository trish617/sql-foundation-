--UPDATE;INSERT INTO,ADD SPECIFIC COLUMN

ALTER TABLE personel
add column dept CHAR(2);

UPDATE personel SET dept = 'HR' WHERE emp_id = 01;
UPDATE personel SET dept = 'IT' WHERE emp_id = 02;
UPDATE personel SET dept = 'FN' WHERE emp_id = 03;
UPDATE personel SET dept = 'MK' WHERE emp_id = 04;

SELECT * FROM personel;

--COMPARISION AND LOGICAL OPERATORS 

CREATE TABLE titanic (
    PassengerId INT,
    Survived INT,
    Pclass INT,
    Name TEXT,
    Sex VARCHAR(10),
    Age NUMERIC,
    SibSp INT,
    Parch INT,
    Ticket TEXT,
    Fare NUMERIC,
    Cabin TEXT,
    Embarked VARCHAR(5)
);

DROP TABLE IF EXISTS titanic;
TRUNCATE TABLE titanic;
SELECT COUNT(*) FROM titanic;

SELECT * FROM titanic;

SELECT age, fare, parch, cabin 
FROM titanic
WHERE age >= 30
	AND fare > 20
	AND parch != 0
	AND cabin is not null
ORDER BY 
	age ASC;

    
