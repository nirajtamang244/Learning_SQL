SELECT * 
from Parks_and_Recreation.employee_demographics;
# the * will select everything from your table "parks_and_recreation"
# you can alos notice that you do not need to put the full name "Parks_and_Recreation.employee_demographics"alter
# by using the dot but rathere you can use the name "employee_demographics" and simply it will work. 
# there is a caveat. You have to click the database in the "schemas". You will know it is selected when it is 
# in bold.

SELECT first_name, # you can put what you are selecting in different rows
last_name,			# this insures readability and tracking your columns in data bases easy
birth_date,
age,
age+20				# in mysql, you can add the number directly with the column. this will create a new column
from Parks_and_Recreation.employee_demographics;# named as "age+20" literally. 
#PEMDAS	 
# Mysql follows the "PEMDAS" rule: 
#	P for paranthesis
# 	E for exponential 
#   M for mulatiply
#.  D for division
#.  A for addition 
#   S for subtraction
# hence this order is followed in Mysql. 


select distinct first_name # this distict will actually filter and give you only the filtered row.
from Parks_and_Recreation.employee_demographics; # this means no any other row will have duplicates

select gender 		
from Parks_and_Recreation.employee_demographics;

select distinct gender 
from parks_and_recreation.employee_demographics;# this will only print male and female because they have many
												# duplicates. 

select distinct 
first_name,
gender 
from Parks_and_Recreation.employee_demographics;# despite gender has too many duplicates, the combination of name and 
											# gender are distinct itself. hence being very distinct it will print everything.