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

-- SELECT * FROM Worker

CREATE TABLE Bonus(
    WORKER_REF_ID INT,
    BONUS_AMOUNT INT(10),
    BONUS_DATE DATETIME,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID) ON DELETE CASCADE
);

-- ON DELETE CASCADE means that if a record in the referenced table ("Worker" table in this case)
-- is deleted, and all the corresponding records in the current table (the referencing table) will also be
-- deleted.

INSERT INTO Bonus 
    (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES 
    (001, 5000, '16-02-23'),
    (002, 5000, '16-02-23'),
    (003, 5000, '16-02-23'),
    (004, 5000, '16-02-23'),
    (005, 5000, '16-02-23'),
    (006, 5000, '16-02-23');

-- Select * from Bonus;

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

-- Multiple Commandas 
-- Select Command
-- Select * from Title;
-- Select FIRST_NAME FROM Worker;
-- SELECT FIRST_NAME, LAST_NAME FROM Worker;

-- SELECT ucase('whitch');

-- UNIQUE and Check
-- CREATE TABLE Account (
--     id INT PRIMARY KEY,
--     name VARCHAR(255) UNIQUE,
--     balance INT,
--     CONSTRAINT account_balance check (balance > 1000)
-- );

-- INSERT INTO Account Value(1, 'A', 10000);

-- SELECT * FROM Account;

-- DEFAULT AND DROP
-- CREATE TABLE Account (
--     id INT PRIMARY KEY,
--     name VARCHAR(255) UNIQUE,
--     balance INT NOT NULL DEFAULT 0
-- );

-- INSERT INTO Account(id, name) Value(1, 'A');

-- SELECT * FROM Account;

-- ALTER OPERATIONS
CREATE TABLE Account (
    id INT PRIMARY KEY,
    name VARCHAR(255) UNIQUE,
    balance INT NOT NULL DEFAULT 0
);

-- ADD Operation
ALTER TABLE Account ADD Interest FLOAT NOT NULL DEFAULT 0;

-- MODIFY
ALTER TABLE Account MODIFY Interest Double NOT NULL DEFAULT 0;

-- DESC == Describe 
-- DESC Account;

-- CHANGE Column name
ALTER TABLE Account CHANGE Interest Saving_Interest FLOAT NOT NULL DEFAULT 0;

-- DROP COLUMN
ALTER TABLE Account DROP COLUMN Saving_Interest;

-- CHANGE TABLE NAME
ALTER TABLE Account RENAME TO Account_Customer;

INSERT INTO Account(id, name) Value(1, 'A');

SELECT * FROM Account;




















