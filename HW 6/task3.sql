--Task 3
--1
SELECT DISTINCT first_name,surname
FROM 	reststaff R
, 		restbill T
WHERE 	cust_name = 'Tanya Singh'
and		T.waiter_no = R.staff_no;


--2
SELECT 	room_date
FROM 	restRoom_management M
,		reststaff R
WHERE 	first_name = 'Charles' 
  AND 	surname = 'Watson'
  AND 	room_name = 'Green'
  AND 	room_date BETWEEN 160201 AND 160229
  and 	M.headwaiter   = R.staff_no;  
 
 
  
--3 			
select	R3.first_name , R3.surname
from 	reststaff R3, reststaff R1
where   R1.first_name = 'Zoe'
and 	R1.surname = 'Ball'
and 	R1.headwaiter = R3.headwaiter 	;

		
		
 
--4
select 	cust_name, bill_total, first_name,surname
from	restBill T, reststaff R
where 	T.waiter_no=R.staff_no
order by bill_total desc; 


--5
 			
 select R.first_name, R.surname
 from 	restStaff R,  restStaff S, restBill B
 where 	B.waiter_no = S.staff_no 
 and 	B.bill_no in (00014,00017)
 and 	R.headwaiter = S.headwaiter;



