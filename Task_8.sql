select * from sales

select * from sales where product_id ~ 'TEC\-MA';

select * from sales where discount::varchar ~ '^0$'

select * from sales where discount::varchar ~ '^0.[0-9][0-9]'

select * from sales where order_date::varchar ~ '^201[0-9]-01-01$'

select * from sales where profit::varchar ~ '^100.([0-9]|[0-9]{2}|[0-9]{3}|[0-9]{4})'
	
select * from customer

select customer_id, customer_name,postal_code:: varchar from customer
where postal_code:: varchar ~ '^[0-3]{2}[3-6]{2}[(7|8|9)]$';

select customer_id,segment,state,city from customer 
where city ~* '^[a-z]{2}[u][a-z]{4}$';

select customer_id,customer_name,age::varchar,segment from customer
where segment ~* '^co[a-z]{6}$' and age::varchar ~* '(2|3)[0-9]'

select customer_id,city,postal_code from customer
where city ~* '^[a-z]' 
and postal_code::varchar ~* '^[0-9][0-9][0-9]17$'
order by postal_code

select customer_id,segment,city,postal_code from customer
where city ~* '^[a-z][h][a-z]{5}$' and
postal_code:: varchar ~ '^[0-6]{2}[0-9][0-6]{2}$'

