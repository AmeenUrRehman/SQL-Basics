CREATE TABLE Worker (
    WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    FIRST_NAME CHAR(25),
    LAST_NAME CHAR(25),
    SALARY INT(15),
    JOINING_DATE DATETIME,
    DEPARTMENT CHAR(25)
);

INSERT INTO Worker(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
    (001, 'Super', 'Man', 15000, '14-02-23 09.00.00', 'DC'),
    (002, 'Bat', 'Man', 25000, '14-02-23 09.00.00', 'DC'),
    (003, 'Wonder', 'Woman', 25000, '14-02-23 09.00.00', 'DC'),
    (004, 'Iron', 'Man', 55000, '14-02-23 09.00.00', 'Marvel'),
    (005, 'Flask', 'Light', 45000, '14-02-23 09.00.00', 'DC'),
    (006, 'Captain', 'America', 65000, '14-02-23 09.00.00', 'Marvel');


CREATE TABLE Bonus(
    WORKER_REF_ID INT,
    BONUS_AMOUNT INT(10),
    BONUS_DATE DATETIME,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID) ON DELETE CASCADE
);


INSERT INTO Bonus 
    (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES 
    (001, 5000, '16-02-23'),
    (002, 5000, '16-02-23'),
    (003, 5000, '16-02-23'),
    (004, 5000, '16-02-23'),
    (005, 5000, '16-02-23'),
    (006, 5000, '16-02-23');


CREATE TABLE Title(
    WORKER_REF_ID INT,
    WORKER_TITLE CHAR(25),
    EFFECTIVE_FROM DATETIME,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID) ON DELETE CASCADE
);

INSERT INTO Title 
    (WORKER_REF_ID, WORKER_TITLE, EFFECTIVE_FROM) VALUES
    (001, 'PowerFul', '20-02-23 12.00.00'),
    (002, 'Rick', '20-02-23 12.00.00'),
    (003, 'CuteKnife', '20-02-23 12.00.00'),
    (004, 'Clever', '20-02-23 12.00.00'),
    (005, 'MasterMind', '20-02-23 12.00.00'),
    (006, 'Boss', '20-02-23 12.00.00');

-- SELECT * FROM Title;

-- Questions and Answers

-- SELECT FIRST_NAME AS WORKER_NAME FROM Worker;

-- SELECT UPPER(FIRST_NAME) FROM Worker;

-- SELECT DISTINCT Department FROM Worker;

-- SELECT substring(FIRST_NAME, 1, 3) from Worker;

-- SELECT INSTR(FIRST_NAME, 't') FROM Worker where FIRST_NAME  = "Bat"

-- Remove Spaces on the Left and Right Side of the Name

-- USE RTRIM FOR RIGHT AND LTRIM FOR LEFT

-- SELECT DISTINCT Department, LENGTH(Department) FROM Worker;
--
-- SELECT REPLACE(FIRST_NAME, 'S', 's') FROM Worker;
-- 
-- SELECT CONCAT(FIRST_NAME,' ', LAST_NAME) as FULL_NAME FROM Worker;

-- SELECT SALARY, Department FROM Worker ORDER BY Salary;

-- SELECT * FROM Worker Where FIRST_NAME IN ('super', 'bat');

-- SELECT * FROM Worker Where FIRST_NAME NOT IN ('super', 'bat');

-- SELECT * FROM Worker Where Department = 'DC';

-- SELECT * FROM Worker WHERE FIRST_NAME LIKE '%A%';

-- SELECT * FROM Worker WHERE SALARY BETWEEN 25000 AND 55000;

-- SELECT Department, COUNT(*) FROM Worker WHERE DEPARTMENT = 'DC';

-- SELECT CONCAT(FIRST_NAME , ' ', LAST_NAME) FROM Worker WHERE Salary BETWEEN 25000 AND 65000;

-- SELECT * FROM Worker as W INNER JOIN Title as T ON W.WORKER_ID = T.WORKER_REF_ID;

-- SELECT WORKER_TITLE, COUNT(*) FROM Title GROUP BY WORKER_TITLE HAVING COUNT(*) > 0;

-- SELECT * FROM Title WHERE MOD(WORKER_REF_ID, 2) != 0;

-- SELECT * FROM Title WHERE MOD(WORKER_REF_ID, 2) = 0;

-- CREATE TABLE WORKER_CLONE LIKE Worker;

-- SELECT curdate();
-- SELECT now();

-- SELECT * FROM Worker ORDER BY SALARY DESC limit 2; 

-- SELECT * FROM Worker ORDER BY SALARY DESC limit 2,3; 





















