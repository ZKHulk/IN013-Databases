--Task 5
--1



select 	first_name, surname, bill_date, count(*)	
from 	restStaff S
,		restBill B
where 	S.staff_no 	=	B.waiter_no 	
group by first_name, surname, bill_date
having 	count (*) > 1;


--2
select 	room_name, count(table_no) 
from 	restRest_table
where 	no_of_seats > 6
group by room_name;


--3
select 	room_name, sum(bill_total)
from 	restBill B
,		restRest_table T
where 	T.table_no = B.table_no 
group by room_name;



--4

select 	S.first_name, S.surname, sum(bill_total)
FROM	restStaff R
,		restStaff S
,		restBill  T	
where 	R.staff_no 		= S.headwaiter 
and 	T.waiter_no 	= S.staff_no 
group by  S.first_name, S.surname
order by (sum(bill_total)) desc;



--5
select 	cust_name, avg(bill_total) 
from 	restBill 
group by cust_name
having avg(bill_total) > 400;


--6

select S.first_name, S.surname, bill_date, count(bill_no) 
from 	restStaff S
,		restBill B
where 	S.staff_no =	B.waiter_no
group by S.first_name, S.surname, bill_date
having count(bill_no) > 2;


