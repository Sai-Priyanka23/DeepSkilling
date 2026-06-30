Scenario 1 : Process Monthly Interest


!.... Create Accounts Table...!

CREATE TABLE Accounts (
    accountId NUMBER PRIMARY KEY,
    accountType VARCHAR2(20),
    balance NUMBER
);

!... Insert Sample Data

INSERT INTO Accounts VALUES (101,'Savings',10000);
INSERT INTO Accounts VALUES (102,'Current',8000);
INSERT INTO Accounts VALUES (103,'Savings',5000);

COMMIT;

!...Display Table

SELECT * FROM Accounts;

!...Create Procedure

CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest
IS
BEGIN
    UPDATE Accounts
    SET balance = balance + (balance * 0.01)
    WHERE accountType = 'Savings';
END;
/

!.. Execute Procedure

EXEC ProcessMonthlyInterest;

!.. Display Updated Table

SELECT * FROM Accounts;




Scenario 2 : Update Employee Bonus

!..Create Employees Table

CREATE TABLE Employees (
    employeeId NUMBER PRIMARY KEY,
    employeeName VARCHAR2(30),
    department VARCHAR2(20),
    salary NUMBER
);

-- Insert Sample Data

INSERT INTO Employees VALUES (1,'Rahul','IT',50000);
INSERT INTO Employees VALUES (2,'Priya','HR',40000);
INSERT INTO Employees VALUES (3,'Amit','IT',60000);

COMMIT;

-- Display Table

SELECT * FROM Employees;

-- Create Procedure

CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(
    p_department VARCHAR2,
    p_bonus NUMBER
)
IS
BEGIN
    UPDATE Employees
    SET salary = salary + (salary * p_bonus / 100)
    WHERE department = p_department;
END;
/

-- Execute Procedure

EXEC UpdateEmployeeBonus('IT',10);

-- Display Updated Table

SELECT * FROM Employees;



Scenario 3 : Transfer Funds

-- Create BankAccounts Table

CREATE TABLE BankAccounts (
    accountId NUMBER PRIMARY KEY,
    customerName VARCHAR2(30),
    balance NUMBER
);

-- Insert Sample Data

INSERT INTO BankAccounts VALUES (101,'Rahul',10000);
INSERT INTO BankAccounts VALUES (102,'Priya',5000);

COMMIT;

-- Display Table

SELECT * FROM BankAccounts;

-- Create Procedure

CREATE OR REPLACE PROCEDURE TransferFunds(
    p_fromAccount NUMBER,
    p_toAccount NUMBER,
    p_amount NUMBER
)
IS
    v_balance NUMBER;
BEGIN
    SELECT balance
    INTO v_balance
    FROM BankAccounts
    WHERE accountId = p_fromAccount;

    IF v_balance >= p_amount THEN

        UPDATE BankAccounts
        SET balance = balance - p_amount
        WHERE accountId = p_fromAccount;

        UPDATE BankAccounts
        SET balance = balance + p_amount
        WHERE accountId = p_toAccount;

        DBMS_OUTPUT.PUT_LINE('Transfer Successful');

    ELSE

        DBMS_OUTPUT.PUT_LINE('Insufficient Balance');

    END IF;
END;
/

-- Execute Procedure

EXEC TransferFunds(101,102,3000);

-- Display Updated Table

SELECT * FROM BankAccounts;