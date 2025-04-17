-- WHERE clause

select *			# with '*' I am selecting everything
from employee_salary	# from employee_salary table
where first_name= 'leslie'	# within the column called 'first_name' with row called 'leslie'
;

select * 
from employee_salary	
where salary> 50000;	# this operator ">" is called greater than operator.
						# In this line of code, it will give us every result from 'salary' column 
						# where the row is greater than 50000


select * 
from employee_salary
where salary>= 50000;	# this operator ">=" is called 'greater than or equal to'  operator.
						# In this line of code, it will give us every result from 'salary' column 
						# where the row is greater than or equal to 50000
						# that is why 'tom' and 'jerry' is also included in this filtered table


select * 
from employee_salary
where salary<50000;		# this operator "<" is called 'less than'  operator.
						# In this line of code, it will give us every result from 'salary' column 
						# where the row is less than 50000
						# that is why 'tom' and 'jerry' is not included in this filtered table



select * 
from employee_salary
where salary<=50000
;						# this operator "<=" is called 'less than'  operator.
						# In this line of code, it will give us every result from 'salary' column 
						# where the row is less than or equal to 50000
						# that is why 'tom' and 'jerry' is not included in this filtered table


select * 
from employee_demographics
where gender!= 'female'
;						# this operator "!=" is called 'not equal to' operator.
						# In this line of code, it will give us every result from 'gender' column 
						# where the row is 'Female'
						# that is why 'male' is not included in this filtered table

select * 
from employee_demographics
where birth_date> '1985-01-01' # uses YYYY/MM/DD format
;							   # This will give me all result from column 'birth_date' 
							   # where rows is greater than '1985-01-01'
							   # that is why results less than or equal to '1985-01-01' is not included


-- AND, OR, NOT logical operators!!!!
select * 
from employee_demographics 
where birth_date> '1985-01-01'
and gender= 'male'
;							   # This will give me all result from column 'birth_date' 
							   # where rows is greater than '1985-01-01' 
                               # we also are using "and" operator. 
                               # this operator works like a "intersection". 
							   # that is why results greater than '1985-01-01' and gender 'male' are displayed

select * 
from employee_demographics
where birth_date >'1985-01-01'
or gender='male'
;							   # This will give me all result from column 'birth_date' 
							   # where rows is greater than '1985-01-01' 
                               # we also are using "or" operator. 
                               # this operator works like a "union". 
							   # that is why results greater than '1985-01-01' or gender 'male' are displayed



select * 
from employee_demographics
where birth_date >'1985-01-01'
or not gender='male'
;							   # This will give me all result from column 'birth_date' 
							   # where rows is greater than '1985-01-01' 
                               # we also are using "not" operator along with "or" operator
                               # this operator works like a "negation". 
							   # that is why results greater than '1985-01-01' or the gender which are not 'male' are displayed



select * 
from employee_demographics
where (first_name= 'leslie' and age= 44) or age>55 # we do not need quotes for integers
;# this where clause also follows PEMDAS

# here because of PEMDAS rule, we will first work inside the paranthesis and then only the outside of paranthesis


-- Like statement
-- %  and _

select * 
from employee_demographics
where first_name like 'leslie' ;	# with the statement called "like", we will get all the result from 
									# column called "first_name" with all name which has words "leslie" in their name

select * 
from employee_demographics
where first_name like 'les%' ;		# with the operator "%", it fills everything behind the letters.
									# in this line of code, it will give all results from column called "first_name"
									# which has "les" at first
select *
from employee_demographics
where first_name like '%es%';		# in this line of code, it will give all results from column called "first_name"
									# which has something at first and then "es" and something at last. 
									# it will basically give every result of rows from column with letter "es" at the middle

select *
from employee_demographics
where first_name like 'a%'
;									# in this line of code, it will give all results from column called "first_name"
									# which has "a" at first and something at last. 
									# it will basically give every result of rows from column with letter "a" at the start




select *
from employee_demographics
where first_name like 'a__'
;									# "_" operator is basically a letter filler. it is same like "%" but it only gives us
									# results with exactly same number of "_" if there are less or more letters than 
                                    # "_", it will not display anything
	

select *
from employee_demographics
where first_name like 'a___%'
;									# this will display the results with exactly same number of "_" and everything after that
									# this will get result with first name starting at "a"
									# and 3 letters and everything after that. 
                                    # this means the result which starts with "a" and has "3 or more than 3" letters after "a"

select *
from employee_demographics
where birth_date like '1989%';		# this will display the results for birth_date that are in the year 1989. 
									# it does not matter whatever month or day it is. if it is 1989, it will be displayed.