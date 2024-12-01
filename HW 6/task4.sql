--Task 4
--1

select 	cust_name
from 	restBill T
,		restStaff R
where 	T.waiter_no = R.staff_no 
  and 	T.bill_total > 450.00
  and 	R.headwaiter = ( select staff_no from restStaff T where T.first_name = 'Charles' );
  
  
--2

SELECT 	T.first_name, T.surname
FROM 	restStaff R
,		restStaff T
where 	T.staff_no = R.headwaiter	
and		R.staff_no =	(SELECT 	waiter_no
FROM 	restBill B
WHERE 	B.cust_name = 'Nerida Smith' 
and 	B.bill_date = 160111);


--3
select 	cust_name
from 	restbill 
where 	bill_total = (
	select min(bill_total)
	from restbill );


--4
select 	first_name,surname
from 	reststaff R
where 	staff_no not in(
	select waiter_no
	from restbill);


--5
select 	B.cust_name, R.first_name, R.surname, T.room_name
from 	restBill B, reststaff R, reststaff S, restrest_table T
where 	R.staff_no = S.headwaiter
and 	S.staff_no = B.waiter_no
and 	T.table_no = B.table_no
and 	B.bill_total = (select max(bill_total) from restBill);

