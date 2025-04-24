-- having v.s where

select gender, avg(age)
from employee_demographics
where avg(age)>40
group by gender
;			#if we run this block of code, we will get error
			# the reason being simple. 'where' cannot be used before group by 
            


select gender, avg(age)
from employee_demographics
group by gender
having avg(age)>40
;			# Hence for this very reason of where not working for aggregate function before group by, 
			# there is the use of 'having'. this will work for every aggregate value and after group by

select * 
from employee_salary
;			# we used this to see what is in the 'employee_salary' table

select occupation, avg(salary)
from employee_salary
group by occupation
;			# this is an example to show how 'group by' uses the aggregate of avg(salary)

select occupation, avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation
;			# here, it will give all occupation which has 'manager' in them.


select occupation, avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary)>70000		# having comes here to filter out after group by
;