-- 1. List the ordno and dollars of all orders.

SELECT ordnum, totalUSD
From orders;
	
--2. List the name and	city of	agents	named	Smith.

SELECT name, city
From agents
Where name = 'Smith';
	
--3. List the pid, name, and priceUSD	of products with quantity more	than 208,000.	

Select pid, name, priceUSD
From products
Where quantity > 208000;

--4. List the names and cities	of customers in	Dallas.	

SELECT name, city
From customers
Where city = 'Dallas';

--5. List the names of	agents	not in New York and not in Tokyo.

Select name
From agents
Where city NOT IN ( 'New York', 'Tokyo');
	
--6. List all data for	products not in	Dallas	or Duluth that cost US$1 or more.

Select *
From products
Where city NOT IN ( 'Dallas', 'Duluth') and priceUSD >= 1.00;	

--7. List all data for	orders	in January or March.	

SELECT *
From orders
Where mon = 'jan' or mon = 'mar';

--8. List all data for	orders	in February less than us$500.	

Select *
From orders
Where mon = 'feb' and totalUSD < 500;

--9. List all orders from the customer whose cid is C005.

Select *
From Orders
Where cid = 'C005';

-- Edward Achziger CAP3 HW#3

