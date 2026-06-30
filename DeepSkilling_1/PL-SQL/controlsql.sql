CREATE TABLE Customers (
    customerId NUMBER PRIMARY KEY,
    customerName VARCHAR2(50),
    age NUMBER,
    balance NUMBER,
    loanInterest NUMBER,
    isVIP VARCHAR2(5)
);

INSERT INTO Customers VALUES (101,'Rahul',65,15000,8,'FALSE');
INSERT INTO Customers VALUES (102,'Priya',45,7000,9,'FALSE');

BEGIN
   FOR c IN (SELECT * FROM Customers)
   LOOP
      IF c.age > 60 THEN
         UPDATE Customers
         SET loanInterest = loanInterest - 1
         WHERE customerId = c.customerId;
      END IF;
   END LOOP;
END;
/

SELECT * FROM Customers;