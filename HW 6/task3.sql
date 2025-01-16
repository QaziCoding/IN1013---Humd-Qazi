-- 1 List the names of the waiters who have served the customer Tanya Singh.

SELECT first_name, surname
FROM restStaff T1
INNER JOIN restBill T2
ON T1.staff_no = T2.waiter_no
WHERE cust_name = 'Tanya Singh';


-- 2 On which dates in February 2016 did the Headwaiter 'Charles' manage the 'Green' room? You may output dates in the format they are stored.

SELECT room_date
FROM restStaff T1
INNER JOIN restRoom_management T2
ON T1.staff_no = T2.headwaiter
WHERE first_name = 'Charles' AND room_date BETWEEN 160201 and 160228 AND room_name = 'Green';
 
-- 3 List the names of the waiters who serve tables in the same team as the waiter Zoe Ball.

SELECT T1.first_name, T1.surname
FROM restStaff T1
INNER JOIN restStaff T2
ON T1.headwaiter = T2.headwaiter
WHERE T2.first_name = 'Zoe' AND T2.surname = 'Ball';


-- 4 List the customer name, the amount they spent, and the waiter’s name for all bills. Order the list by the amount spent, highest bill first.

SELECT cust_name, bill_total, first_name, surname
FROM restBill T1
INNER JOIN restStaff T2
WHERE T1.waiter_no = T2.staff_no
ORDER BY bill_total DESC;

-- 5 List the names and surnames of the waiters who serve tables that worked in the same team that served bills 00014 and 00017.

SELECT T3.first_name, T3.surname
FROM restBill T1
INNER JOIN restStaff T2
ON T1.waiter_no = T2.staff_no
INNER JOIN restStaff T3
ON T2.headwaiter = T3.headwaiter
WHERE T1.bill_no in (00014, 00017);

-- 6 List the names and surnames of the waiters in the team (including the headwaiter) that served Blue room on 160312.

SELECT T1.first_name, T1.surname
FROM restStaff T1
INNER JOIN restRoom_management T2
ON T1.headwaiter = T2.headwaiter
WHERE T2.room_name = "Blue" and T2.room_date = "160312"
UNION
SELECT T1.first_name, T1.surname
FROM restStaff T1
INNER JOIN restRoom_management T2
ON T1.staff_no = T2.headwaiter
WHERE T2.room_name = "Blue" and T2.room_date = "160312";
