--1
CREATE VIEW samsBills
AS SELECT first_name, surname, bill_date, cust_name, bill_total
FROM restStaff S, restBill B
WHERE S.first_name = 'Sam'
AND S.surname = 'Pitt'
AND S.staff_no = B.waiter_no;
-- SELECTing from the view to demonstrate it works correctly. 
SELECT * FROM samsBills;

--2
SELECT * 
FROM samsBills 
WHERE bill_total > 400;

--3
CREATE VIEW roomTotals
AS SELECT room_name, SUM(bill_total) AS "total_sum"
FROM restRest_table T, restBill B
WHERE T.table_no = B.table_no
GROUP BY room_name;
-- SELECTing from the view to demonstrate it works correctly. 
SELECT * FROM roomTotals;

--4
CREATE VIEW teamTotals
as select CONCAT(R.first_name, ' ', R.surname) AS headwaiter_name, sum(bill_total) AS total_sum
FROM	restStaff R
,		restStaff S
,		restBill  T	
where 	R.staff_no 		= S.headwaiter 
and 	T.waiter_no 	= S.staff_no 
group by  R.first_name, R.surname;

select * from teamtotals;

