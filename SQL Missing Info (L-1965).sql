# Write your MySQL query statement below
(select employee_id from employees where employee_id not in(select employee_id from salaries))
union
(select employee_id from Salaries where employee_id not in (select employee_id from Employees))
order by employee_id;