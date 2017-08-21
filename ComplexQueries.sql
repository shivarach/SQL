--Employee Table
	create table Employee (
	id int not null primary key),
	name varchar(50),
	slary decimal(10,2));

--Query to find nth Highest Salary of Employee?

	--corelated sub query
	select salary from Employee e
	where n=(select count(distinct salary) from employee p
	where e.salary <= p.salary)
	
	--specific to sql server
	select top 1 from (select top n from Employee order by salary desc) as MyTabls 
	order by salary asc;
	
--Query to get n highest salaries
	select * from Employee e
	where n >= (select count(distinct salary) from employee p
		where e.salary <= p.salary)
	
--Query to find duplicate rows
	select name, id
	from Employee
	group by id
	having count(*) > 1
	
-- fetch top row
	select top (1) * from employee;
	
-- fetch last row
	select top (1) * from employee order by id desc;
	