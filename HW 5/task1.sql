--1.

SELECT bill_total, bill_date 
FROM restBill
WHERE cust_name = 'Bob Crow'

--2.
  
SELECT DISTINCT cust_name
FROM restBill
WHERE cust_name LIKE "%Smith%"
ORDER BY cust_name DESC

--3.

SELECT DISTINCT cust_name
FROM restBill
WHERE cust_name LIKE "% %C%"

--4.
  
SELECT first_name, surname
FROM restStaff
WHERE headwaiter is NULL

--5.
  
SELECT *
FROM restBill
WHERE bill_date LIKE "%1602%"

--6.
  
SELECT bill_date
FROM restBill
WHERE bill_date LIKE "15____"
