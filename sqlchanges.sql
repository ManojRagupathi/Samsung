with maximum_salary as
(Select*
from employee
where emp_salary >= 1000000)
select emp_name,dense_rank() over (order by emp_salary  desc) as salary_rank
from maximum_salary
where emp_name like 'ma%'
and employeetype ='HR'
and trunc(DOJ)>trunc(sysdate+20)