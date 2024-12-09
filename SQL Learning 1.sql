CREATE DATABASE Pratice; 
CREATE DATABASE IF NOT EXISTS Pratice; 
USE Pratice; 

CREATE TABLE questions (
ID INT PRIMARY KEY, 
description VARCHAR (50)
);

ALTER  TABLE questions
RENAME COLUMN COMMENTS TO Comments ;

INSERT INTO questions
(ID, Comments)
VALUES 
(1, "venkat"),
(2, "shahul"),
(3, "prinsha"),
(4, "athira"),
(5, "rohit");

ALTER TABLE questions
ADD Age int; 

UPDATE  questions
SET Age  = CASE
    WHEN ID = 1 THEN 25
    WHEN ID = 2 THEN 30
    WHEN ID = 3 THEN 26
    WHEN ID = 4 THEN 28
    WHEN ID = 5 THEN 27
END
WHERE ID IN (1, 2, 3, 4, 5);


UPDATE questions
SET Comments = CASE
     WHEN Comments = "venkat" THEN "Venkat"
     WHEN Comments = "shahul" THEN "Shahul" 
     WHEN Comments = "prinsha" THEN "Prinsha"
     WHEN Comments = "athira" THEN "Athira" 
     WHEN Comments = "rohit" THEN "Rohit"
     WHEN Comments = "prabhas" THEN "Prabhas"
     ELSE Comments
END
WHERE ID IN (1, 2, 3, 4, 5,6);


SELECT *
FROM questions
WHERE Comments LIKE "%VEnk%";

SELECT * 
FROM questions 
WHERE Comments LIKE "%a%";

SELECT * 
FROM questions 
ORDER BY  Comments ASC , Age DESC ;  

SELECT * 
FROM questions
WHERE Age = 26 OR  ID = 5; 

SELECT * 
FROM questions
WHERE Age = 26 AND (Comments LIKE '%a' OR Comments LIKE 'a%');

SELECT * 
FROM questions 
WHERE Comments = 'shahul' OR Comments = 'rohit';

SELECT ID , Comments , Age 
FROM questions 
WHERE NOT Age  = 27; 

SELECT * 
FROM questions 
WHERE Age NOT IN (27); 

INSERT INTO questions (ID, Comments , Age)
VALUES ( 6, "prabhas" , 40);

SELECT * 
FROM questions
WHERE ID IS  NULL; 

DELETE FROM questions 
WHERE ID = 1; 

SELECT *
FROM questions 
WHERE AGE 
ORDER BY Age
LIMIT 3;

SELECT Avg(Age) AS Average
FROM questions;

SELECT MAX(Age) AS MAX_Value , Comments
FROM questions
GROUP BY Comments; -- Group by is used to find the  unique value here comments column has all unique values so group by is not applicable 

SELECT Comments Decsription
FROM questions; 

SELECT * 
FROM questions Age_Table; 

SELECT COUNT(Age)
FROM questions; 

SELECT COUNT(*)
FROM questions
WHERE Age < 25;

SELECT COUNT(*) AS 'Number of records'
FROM questions; 

SELECT SUM(Age) AS 'Age Average'
FROM questions
WHERE ID = 5;

SELECT * 
FROM questions 
WHERE Age <= (SELECT Avg(Age) FROM questions);

SELECT * 
FROM questions 
WHERE AGE NOT IN (30 , 40);

SELECT * 
FROM questions 
WHERE AGE BETWEEN 27 AND 40
AND ID IN (1,2,3,4,5);

