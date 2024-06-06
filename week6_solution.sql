-- 1st
select e1.emp_name,e2.emp_name as manager_name, datediff(day,e1.dob, e2.dob) as date_diff_days
from employee e1
inner join employee e2
on e1.manager_id = e2.emp_id
where datediff(day,e1.dob, e2.dob) > 0


-- 2nd
select o.sub_category
from orders o
left join returns r
on o.order_id = r.[Order Id]
where r.[Return Reason] is null and datepart(month,o.order_date)=11
group by o.sub_category

--3rd
select order_id
from orders
group by order_id
having count(1) = 1


--4th
select e2.emp_name as manager_name,STRING_AGG(e1.emp_name,',' )  WITHIN GROUP (ORDER BY e1.salary) as list_of_employees
from employee e1
inner join employee e2
on e1.manager_id = e2.emp_id
group by e2.emp_name


--5th
select order_id,order_date,ship_date,datediff(day,order_date,ship_date) - (2*(datediff(week,order_date,ship_date))) as answer
from orders;

--6th
select o.category, sum(o.sales) as total_sales,sum(o.sales) as total_returned_sales,r.[Return Reason]
from orders o
left join returns r
on o.order_id = r.[Order Id]
group by o.category
having r.[Return Reason] is not null


--7th





--8th
select top 5 city
from orders
where region = 'West'
group by city
order by avg(datediff(day,order_date,ship_date))

--9th
select e1.emp_name,e2.emp_name as manager_name,e3.emp_name as senior_manager_name
from employee e1
inner join employee e2
on e1.manager_id = e2.emp_id
inner join employee e3
on e2.manager_id = e3.emp_id;



