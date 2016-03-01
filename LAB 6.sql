-- Lab 6: Interesting and Painful Queries
-- Edward Achziger 
-- Due 3/1/16 @ 11:00am



--1. Display	the	name	and	city	of	customers	who	live	in	any	city
--that	makes	the	most different	kinds	of	products. (There are two cities	that
--make the most different products. Return the	name and city of customers from	either	one of those.)	

Create View mostprod AS
(select products.city, count(products.city)
		from products
		group by products.city
		having count(products.city) > 1
		order by count(products.city) desc
		limit 1); 

select customers.name, customers.city
from customers, mostprod
Where customers.city = mostprod.city;		

		


--2. Display	the	names	of	products whose	priceUSD is strictly above the	average	priceUSD,	
--in	reverse-alphabetical	order.	


select name, priceUSD
from products
where products.priceUSD > (select avg(products.priceUSD) 
			   from products)
 Order by name DESC;




--3. Display the customer name,	pid ordered, and the total for	all	orders,	sorted	by	total	
--from	high	to	low.	


SELECT customers.name, SUM(orders.totalUSD) as TOTUSD
FROM customers, orders
Where customers.cid = orders.cid
GROUP BY customers.name
Order by TOTUSD DESC;


--4. Display all customer names	(in alphabetical order)	and	their	total	ordered, and	
--nothing	more.	Use	coalesce to avoid	showing	NULLs.	

select coalesce(customers.name), coalesce(sum(orders.totalUSD))
from orders   inner join customers
              on customers.cid = orders.cid
    group by name
    order by name ASC;



--5. Display the names	of all	customers who bought products	from	agents	based	in  Tokyo
--along	with	the names  of the products they	ordered,  and	the	names	of	the	agents	who	
--sold	it	to	them.	


select customers.name as custName, products.name as prodName, agents.name as agName
from customers, products, orders, agents
where customers.cid = orders.cid
    and products.pid = orders.pid
    AND agents.aid = orders.aid
    and agents.city = 'Tokyo';




--6. Write a query	to	check	the	accuracy  of	the dollars column	in the	Orders	table.	
--This	means	calculating	Orders.totalUSD	from	data	in	other	tables	and comparing	those	
--values to the	values	in   Orders.totalUSD.   Display	all	rows	in Orders	where	
--Orders.totalUSD	is	incorrect,	if	any.	

Create view AccuracyCheck AS 
select orders.ordnum, orders.totalUSD, ((1.0 - (customers.discount / 100.0)) * (qty * priceusd)) as calctot
from customers, orders, products
where customers.cid = orders.cid
    and products.pid = orders.pid;

Select ordnum, totalUSD, calctot
From AccuracyCheck
Where totalUSD <> calctot;

--Somewhere deep in the zeros there must be an inconsitency for ordnum 1026

--7. What’s the	difference between a	LEFT	OUTER	JOIN	and a	RIGHT	OUTER	JOIN?	Give	
--example queries in	SQL to demonstrate. (Feel free	to use	the	CAP2	database to make your points here.)


--Really no difference between the two interms of their operational importance expect the Right Join uses the table you list second, or to the Right in the query
-- and left join uses the first table as the reference, or the one written on the left side of the join statement.
select ordnum, customers.name
from customers 
left outer join orders 
on customers.cid = orders.cid;
--This query is using customers to reference to orders and that is why we get Weyland to appear at the bottom even though he has no ordnum


select ordnum, customers.name
from customers
right outer join orders 
on customers.cid = orders.cid;
--The query looks similar to the first one, expect the second one is using orders to reference customers, thus not getting Weyland at the bottom since he has no ordnum

