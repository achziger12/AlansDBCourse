
--Edward Achziger CAP3 Lab#4


--1. Get the cities of agents booking	an order for a	customer whose cid is 'c002'.	

Select city
From agents
Where agents.aid In (select aid
              From orders
              Where cid = 'c002' )
	      ;


--2. Get the ids of products ordered through any agent who takes at least one	order from a customer in Dallas, sorted by pid	from highest to	lowest.	
--(This	is not	the same as asking for	ids of	products ordered by customers in Dallas.)

Select pid
From orders
Where orders.aid In ( select aid
		      From orders
		      Where cid In (select cid
				    From Customers
                                   Where city = 'Dallas'))
         Order by pid DESC;



--3. Get the ids and names of	customers who did not place an	order through agent a01.	

Select name, cid
From customers
Where customers.cid NOT In ( select cid
			      From orders
	                      Where aid = 'a01')
	      ;



--4. Get the ids of customers	who ordered both product p01 and p07.	

Select cid
From orders
Where pid = 'p01'
Intersect
Select cid
From orders 
Where pid = 'p07';
		
		

--5. Get the ids of products not ordered by any customers who	placed any order through agent	a07 in	pid order from	highest	to lowest.	

Select pid
From products
Where pid NOT IN (select pid
		  From orders
		  Where cid In ( select cid
				 From orders
				 Where aid = 'a07'))
	Order by pid ASC;




-- 6. Get the name, discounts,	and city for all customers who	place orders through agents in	London	or New York.	

Select name, discount, city
From customers 
Where cid In ( select cid
		From orders
		Where aid In (select aid
			      From agents
			      Where city IN ('London', 'New York'))
			      );
			      




--7. Get all customers	who have the same discount as that of any customers in	 Dallas	 or London.

Select name, discount
From customers
Where discount In ( select discount
		    From customers
		    Where city In ('Dallas', 'London'))



--8. Tell me about check constraints:	What are they?	What are they good for? What’s	the	
--advantage of	putting	that sort of thing inside the database? Make up some examples	
--of good uses	of check constraints and some examples	of bad uses of check constraints.	
--Explain the differences in your examples and	argue your case

--Check constraints are constraints used when creating tables in SQL that limit the range or value that can be entered for a column, row, or at an intersection of a column and row.  
--The check constraints are good for making sure a place where a primary key needs to be entered is not null and has the right data type to be the primary key you want it to be.  
--There can be many advantages to putting in this constraints in your database, but the main reason is to preserve referential integrity of the data you entered and eliminate unwanted null values. 
--Here is an example of a good check statement:
--CREATE TABLE Baseball Players(
  -- PID  PRIMARY KEY     NOT NULL,
   --NAME           TEXT    NOT NULL,
   --AGE            INT     NOT NULL,
   --TEAM        CHAR(25),
   --SALARY         REAL    CHECK(SALARY > 0) 
--Here is an example of bad check constraints
  -- PID  PRIMARY KEY     NOT NULL,
  -- NAME           TEXT    NOT NULL,
  -- AGE            INT     CHECK(AGE>18)
  -- TEAM        CHAR(25),
  -- BATAVG         REAL    CHECK(BATAVG > 0)
--This would be a bad example of a check statement because in both cases they check constraint is limiting the data in unnecessary ways. 
-- A player, in theory should have the ability to play even if they aren’t 18 and also a player can have a 0 batting avg when they enter the MLB.

