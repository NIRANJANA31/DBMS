CREATE DATABASE PaymentDB;
USE PaymentDB;

CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY,
    Customer_ID INT,
    Amount DECIMAL(10,2),
    Payment_Mode VARCHAR(20),
    Payment_Date DATE,
    Status VARCHAR(20)
);

INSERT INTO Payment VALUES
(101, 1, 5000.00, 'UPI', '2026-08-20', 'Successful'),
(102, 2, 2500.00, 'Card', '2026-08-21', 'Successful'),
(103, 3, 1500.00, 'Cash', '2026-08-22', 'Failed'),
(104, 4, 3000.00, 'UPI', '2026-08-23', 'Successful'),
(105, 5, 4500.00, 'Net Banking', '2026-08-24', 'Failed');

SELECT * FROM Payment;

SELECT * FROM Payment
WHERE Status = 'Successful';

SELECT * FROM Payment
WHERE Status = 'Failed';

SELECT Payment_Mode, COUNT(*) AS Total_Transactions
FROM Payment
GROUP BY Payment_Mode;

SELECT Payment_Mode, Status, COUNT(*) AS Total
FROM Payment
GROUP BY Payment_Mode, Status;