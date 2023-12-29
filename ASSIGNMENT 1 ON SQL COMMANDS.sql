use mavenmovies;
-- Assignment 01

-- Q1 Identify the primary keys and foreign keys in maven movies db. Discuss the differences 
/*
primary key -->
- It represent a column with unique values in a table.
- There is an only one primary key in a table.
- Primary key can not be null value.
- It's value can not be deleted from parent table.
---------------------------------------------------------------------------------------------

Foreign Key -->
- Fror most of the time foreign key is primary key of another table.
- Foreign key is column which provides link between data of two tables.
- It allows duplicate values.
- It can contain null values.alter*/

describe film;
-- A we can see that In the Film Table of MAVENMOVIES Film-ID is a Primary Key and Language_ID may be Foreign Key , Because primary key has unique values and not null values.

-- Q2 List all details of actors
describe  actor;

-- Q3 List all customer information from DB.
select * from customer;

-- Q4 List different countries.
select * from country;

-- Q5 Display all active customers.
select * from customer where active =1;

-- Q6 List of all rental IDs for customer with ID 1.
select rental_id, customer_id from rental where customer_id =1;

-- Q7 Display all the films whose rental duration is greater than 5.
select * from film where rental_duration >5;

-- Q8 List the total number of films whose replacement cost is greater than $15 and less than $20.
select * from film where replacement_cost > 15 and replacement_cost < 20;

-- Q9 Display the count of unique first names of actors.
select count(distinct(first_name)) from actor;

-- Q10 Display the first 10 records from the customer table
select * from customer limit 10;

-- Q11 display first 3 records from customer table whose first name starts with "b".
select * from customer where first_name like 'b%' limit 3;

-- Q12 Display the names of the first 5 movies which are rated as ‘G’.
select title,rating from film where rating = "G"limit 5;

-- Q13 Find all customers whose first name starts with "a".
select * from customer where first_name like 'a%';

-- Q14 Find all customers whose first name ends with "a".
select * from customer where first_name like'%a';

-- Q15 Display the list first 4 cities which start and end with "a"
select * from city where city like 'a%a' limit 4;

-- Q16 Find all customers whose first name have "NI" in any position.
select * from customer where first_name  like '%NI%';

-- Q17 Find all customers whose first name have "r" in the second position
select * from customer where first_name  like '_r%';

-- Q18 Find all customers whose first name starts with "a" and are at least 5 characters in length.
select * from customer where first_name like 'a%' and length(first_name)>=5;

-- Q19 Find all customers whose first name starts with "a" and ends with "o".
select * from customer where first_name like 'a%o';

-- Q20 Get the films with pg and pg-13 rating using IN operator.
select * from film where rating in('pg','pg-13');

-- Q21 Get the films with length between 50 to 100 using between operator.
select * from film where length between 50 and 100;

-- Q22 Get the top 50 actors using limit operator.
select * from actor limit 50;

-- Q23 Get the distinct film ids from inventory table.
select distinct(film_id) from inventory;
