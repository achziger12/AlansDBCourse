--Edward Achziger CAP3 Lab 5 assingment
-- Due 2/23/16 @ 11:00am


--1. Show	the	cities	of	agents	booking	an	order	for	a	customer	whose	id	is	'c002'.	Use	
--joins;	no	subqueries.	

Select agents.city
From agents, orders, customers
Where agents.aid = orders.aid  AND
      customers.cid = orders.cid  AND
      customers.cid = 'c002';
      
	


--2. Show	the	ids	of	products	ordered	through	any	agent	who	makes	at	least	one	order	for	
--a	customer	in	Dallas,	sorted	by	pid	from	highest	to	lowest.	Use	joins;	no	subqueries.	

Select products.pid, products.name
From   products, agents, orders, customers
Where products.pid = orders.pid AND
      agents.aid = orders.aid  AND
      customers.cid = orders.cid AND
      customers.city = 'Dallas'
  Order by products.pid DESC;



--3. Show	the	names	of	customers	who	have	never	placed	an	order.	Use	a	subquery.


Select customers.name
From customers
Where customers.cid NOT IN (select orders.cid
			    From orders);

	
--4. Show	the	names	of	customers	who	have	never	placed	an	order.	Use	an	outer	join.	

Select distinct customers.name
From customers LEFT JOIN orders On customers.cid = orders.cid
Where orders.cid is NULL;





--5. Show	the	names	of	customers	who	placed	at	least	one	order	through	an	agent	in	their	
--own	city,	along	with	those	agent(s')	names.	

Select customers.name, agents.name, orders.ordnum
From customers, orders, agents
Where customers.cid = orders.cid  AND
      agents.aid = orders.aid  AND
      agents.city = customers.city;



--6. Show	the	names	of	customers	and	agents	living	in	the	same	city,	along	with	the	name	
--of	the	shared	city,	regardless	of	whether	or	not	the	customer	has	ever	placed	an	order	
--with	that	agent.	


Select customers.name
From customers
Where customers.city IN (select city
			From ag_cust_city)
Union
Select agents.name
From agents
Where agents.city IN (select city
			From ag_cust_city);	       

--The most complex query you will ever see for this problem 
-- The view I used below

Create view ag_cust_city
as      
Select customers.city
From customers
Intersect
Select agents.city
From agents;




--7. Show	the	name	and	city	of	customers	who	live	in	the	city	that	makes	the	fewest
--different	kinds	of	products.	(Hint:	Use	count	and	group	by	on	the	Products	table.)

Select customers.name, customers.city
From customers, products, orders
Where customers.cid = orders.cid AND
      products.pid = orders.pid AND
      customers.city IN ( select products.city
			  From products
			  Where quantity = 1
			  Order by count(quantity))

