-- Group By

select * 
from employee_demographics
;	# in this line of code, we are basically viewing the table names employee_demographics

select gender 
from employee_demographics
group by gender
;			# here we have introduced "group by" which basically groups everything together
			# "group by" is similar to "distinct" where distinct used to get only one of the repeated element from the table.alter
			# however, group by has many other usage compared to distince. we can use aggregate values with in the similar element. 



select gender, avg(age) 
from employee_demographics
group by gender			# this is a perfect example of how we can use aggregate values in the group by. Here, we can get the average of all ages with in the same group/
;						# here, there are female and male groups. What it does is, gives us average values for male groups and female groups and puts it on new column 
						# called "avg(age)"



select gender, avg(age), Max(age), min(age), count(age)
from employee_demographics
group by gender
;						# here are few examples of using aggregate values such as max(),min() and count() for a group where it gives us maximum values, minimum values and 
						# the number of things in that group




-- now using employee_salary table

select * 
from employee_salary
;	#here we are viewing the employee_salary table

select occupation	
from employee_salary
group by occupation
; 	# here we are grouping the occupation column. It aggregated the redundanct or repeating occupation and gave us one distinct row than many rows. 
	# herer we have only one office manager compared to the table that line of code from 35-37 did.


select occupation,salary
from employee_salary
group by occupation, salary
; 	# in this code, we have grouped two columns called occupation and salary. Since, there are distinct values of salary for same occupation, we can see both 
	# same position called "office manager" in the table. 
    # if there were to have same occupation and salary, there would have been only one rows.




-- ORDER BY 



select *
from employee_demographics
;	# we are viewing the employee_demographics table



select * 
from employee_demographics
order by first_name # ASC is the default
;	# here we have selected all columns of the table "employee_demographics" and have sorted them out on ascending order.
	# the default is ascending that is why we did not have to specify on the code. 
    # however, if we want to specify, we have to use "ASC" after the column name ( here first_name)



select * 
from employee_demographics
order by first_name DESC # this will now change the table sorting out on the first name from descending order
; 							



select * 
from employee_demographics
order by gender, age	# this line of code prioritizes the gender column and then only age column. What this does is, sorts out the gender in ascending order.
;						# when gender is sorted out in ascending order, then it prioritizes age column.
						# for example, in this line of code, gender column is sorted out with female and then male as female comes first in ascending alphabetical order.
						# Now, age is sorted out in ascending order for female which gives us ascending order for ages for female.
                        
                        # and it does same for male where male will have ascending order ages.


select * 
from employee_demographics
order by gender, age desc
;						# here we have prioritized gender and age, same like before but we have changed the sorting as descending for age. 
						# what this will do is, this will sort gender on ascending and age on descending with in the same gender

select * 
from employee_demographics 
order by age, gender				# In this line of code, it will give priority to age. if there were multiple people of same age, then it will have sorted out the row
; 									# with ascending order with female as first and then male
									# since there are no same age, gender is pretty use less
                                    


select * 
from employee_demographics
order by 5,4 			# this is basically the same as using "order by gender, age" but rather, we are using here is the column number instead of name. 
;						# this is considered as a bad practice as we can easily get confused with the column number as they are not specific with meanings. 
						# Hence, it is a wide practice to follow the order by naming convention. 
                        

