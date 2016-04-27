--People Table
Drop table if exists People;
Create table People(
	pid		integer NOT null unique,
	FName		text not null,
	LName		text not null,
	DOB		text,
	Street		text,
	Zipcode		integer not null,
primary key(pid)
);



Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (001, 'Loretta',	'Mariscal', '24-FEB-1976', '3153 Lynn Avenue',	94080);

Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (002, 'Alicia' , 'Carr',	'19-JUN-1979' , '3853 Locust View Dr.', 94143);


Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (003, 'Tiger',	'Woods', '27-NOV-1989',	'4385 Meadow Dr.', 94080);


Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (004, 'David',	'Riddick', '14-NOV-1974', '4907 Boring Lane' ,94107);


Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (005, 'Stephen',  'Curry' , '16-AUG-1973', '694 Haul Rd.' , 94103);


Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (006, 'Barack',	'Obama' , '5-MAY-1983', '1600 Pennsylvania Ave', 20500);


Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (007, 'George',	'Delgado' , '8-AUG-1954', '900 Drainer Ave.' , 94080);


Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (008, 'Bill' ,  'Murray', '7-JUN-1977' , '2749 Harrison Street', 94107);


Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (009, 'Janet', 'Clayton' , '10-JAN-1984', '679 Green Avenue' ,94107);


Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (010, 'Wille',	'Mays',	 '18-FEB-1986', '4055 Friendship Lane',	94108);


Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (011, 'Jimmy',	'Martin', '28-AUG-1985', '2299 Rardin Drive', 94124);


Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (012, 'Tom', 'Brady', '1-MAY-1962', '3729 Park Street', 94124);


Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (013, 'Dennis',	'Murray' , '3/2/1950',	'3399 North Rd.', 12601);


Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (014, 'Joe', 'Montana', '14-SEP-1979','3101 Locust View Drive', 94607);

Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (015, 'Jerry',  'Rice' ,  '26-JAN-1957', '340 Alexander Ave', 94108);

Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (016, 'Andres' , 'Brooks' , '13-NOV-1975', '166 Wayside Lane' , 94612);

Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (017, 'Michelle', 'Obama', '8-DEC-1979', '1600 Pennsylvania Ave', 20500);

Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (018, 'William', 'Bentley', '20-DEC-1959', '1368 Sycamore Street', 95118);

Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (019, 'Condoleeza' , 'Rice' , '10-SEP-1971', '18 Taylor Ave.', 12601);

Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (020, 'Cristina', 'Stahl', '29-OCT-1951', '34800 Fairway Drive',	95113);

Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (021, 'Linda' , 'Terrio', '14-SEP-1974', '3824 Wolf Pen Rd.' , 95113);

Insert into People (pid,FName,Lname, DOB, Street, Zipcode) 
VALUES (022, 'Jerry' , 	'Aviles', '14-JUN-1967' , '1800 Clearview Drive', 95141);


--States Table
Drop table if exists States;
create table States(
	Zipcode		integer NOT null unique,
	City		text NOT null,
	State		text NOT null,
primary key(Zipcode)
);

Insert into States (Zipcode,City, State) 
VALUES (12601,'Poughkeepsie', 'NY');

Insert into States (Zipcode,City, State)  
VALUES (20500,'Washington', 'DC');

Insert into States (Zipcode,City, State)  
VALUES (94080,'South San Francisco ', 'CA');

Insert into States (Zipcode,City, State)  
VALUES (94103,'San Francisco ', 'CA');

Insert into States (Zipcode,City, State)  
VALUES (94107,'East San Francisco', 'CA');

Insert into States (Zipcode,City, State)  
VALUES (94108,'Union Square San Francsico', 'CA');

Insert into States (Zipcode,City, State)  
VALUES (94124,'West San Francisco', 'CA');

Insert into States (Zipcode,City, State) 
 VALUES (94143,'Oakland', 'CA');
 
Insert into States (Zipcode,City, State)  
VALUES (94607,'West Oakland', 'CA');

Insert into States (Zipcode,City, State)  
VALUES (94612,'North Oakland', 'CA');

Insert into States (Zipcode,City, State)  
VALUES (95113,'San Jose', 'CA');

Insert into States (Zipcode,City, State)  
VALUES (95118,'West San Jose', 'CA');

Insert into States (Zipcode,City, State)  
VALUES (95141,'East San Jose', 'CA');


--Staff Table
Drop table if exists Staff;
create table Staff(
	sid		integer NOT null references People(pid),
	DateHired	date,
primary key(sid)
);

Insert into Staff (sid,DateHired)  VALUES (001,'21-DEC-2011');
Insert into Staff (sid,DateHired)  VALUES (002,'26-JAN-2004');
Insert into Staff (sid,DateHired)  VALUES (004,'25-JUN-2002');
Insert into Staff (sid,DateHired)  VALUES (007,'15-May-2009');
Insert into Staff (sid,DateHired)  VALUES (011,'8-AUG-2003');
Insert into Staff (sid,DateHired)  VALUES (016,'28-SEP-2008');
Insert into Staff (sid,DateHired)  VALUES (021,'1-NOV-2004');
Insert into Staff (sid,DateHired)  VALUES (022,'17-APR-2006');

--ClubMembers Table
Drop table if exists ClubMembers;
create table ClubMembers(
	cid		integer NOT null references People(pid),
	DateJoined	date NOT null,
	MembershipType 	text NOT null CHECK
			(MembershipType in ('Gold' , 'Silver' , 'Bronze')),
primary key(cid)
);


Insert into ClubMembers (cid,DateJoined, MembershipType)  VALUES (003,'21-DEC-2011', 'Gold');
Insert into ClubMembers (cid,DateJoined, MembershipType)  VALUES (005,'26-JAN-2004', 'Gold');
Insert into ClubMembers (cid,DateJoined, MembershipType)  VALUES (009,'25-JUN-2002', 'Silver');
Insert into ClubMembers (cid,DateJoined, MembershipType)  VALUES (010,'15-May-2009', 'Gold');
Insert into ClubMembers (cid,DateJoined, MembershipType)  VALUES (012,'8-AUG-2003', 'Bronze');
Insert into ClubMembers (cid,DateJoined, MembershipType)  VALUES (014,'28-SEP-2008', 'Bronze');
Insert into ClubMembers (cid,DateJoined, MembershipType)  VALUES (015,'1-NOV-2004', 'Bronze');
Insert into ClubMembers (cid,DateJoined, MembershipType)  VALUES (018,'17-APR-2006', 'Silver');
Insert into ClubMembers (cid,DateJoined, MembershipType)  VALUES (020,'7-NOV-2009', 'Gold');

--Guests Table
Drop table if exists Guests;
create table Guests(
	vid		integer NOT null references People(pid),
	Sponsor		integer NOT null references ClubMembers(cid),
primary key(vid)
);

Insert into Guests (vid,Sponsor)  VALUES (006,018);
Insert into Guests (vid,Sponsor)  VALUES (008,003);
Insert into Guests (vid,Sponsor)  VALUES (013,010);
Insert into Guests (vid,Sponsor)  VALUES (017,018);
Insert into Guests (vid,Sponsor)  VALUES (019,009);

--Golfers Table
Drop table if exists Golfers;
create table Golfers(
	gid		integer NOT null unique,
	cid		integer references ClubMembers(cid),
	Vid		integer references Guests(vid),
	Handicap	float,
primary key(gid)
);


Insert into Golfers (gid,cid,Handicap)  VALUES (201,003, 9.9);
Insert into Golfers (gid,cid,Handicap)  VALUES (202,005, 13.3);
Insert into Golfers (gid,cid,Handicap)  VALUES (203,009,4.9);
Insert into Golfers (gid,cid,Handicap)  VALUES (204,010,12.3);
Insert into Golfers (gid,cid,Handicap)  VALUES (205,012,21.7);
Insert into Golfers (gid,vid,Handicap)  VALUES (206,006, 20.9);
Insert into Golfers (gid,vid,Handicap)  VALUES (207,008, 2.3);
Insert into Golfers (gid,vid,Handicap)  VALUES (208,013, 17.5);
Insert into Golfers (gid,cid,Handicap)  VALUES (209,020,12.3);
Insert into Golfers (gid,vid,Handicap)  VALUES (210,019, 11.6);
Insert into Golfers (gid,cid,Handicap)  VALUES (211,014, 0);
Insert into Golfers (gid,cid,Handicap)  VALUES (212,015,10.8);


--GolfCourse Table
Drop table if exists GolfCourse;
create table GolfCourse(
	gcid		integer NOT Null unique,
	Name		text,
	Holes		numeric,
	Par		numeric,
	Rating		float,
	Slope		numeric,
	Yards		numeric,
primary key(gcid)
);

Insert into GolfCourse (gcid,Name, Holes, Par, Rating, Slope, Yards) VALUES (301,'Lake Course', 18,70,73.2, 134, 6597 );
Insert into GolfCourse (gcid,Name, Holes, Par, Rating, Slope, Yards) VALUES (302,'Ocean Course', 18,71,71.1, 129, 6496 );
Insert into GolfCourse (gcid,Name, Holes, Par, Yards) VALUES (303,'Cliffs Course', 9,27,1800 );


--ClubHouseCrew Table
Drop table if exists ClubhouseCrew;
create table ClubhouseCrew(
	cbid		integer NOT null references Staff(sid),
	Salary		numeric,
primary key(cbid)
);

Insert into ClubHouseCrew (cbid,Salary)  VALUES (001,30000);
Insert into ClubHouseCrew (cbid,Salary)  VALUES (011,35000);
Insert into ClubHouseCrew (cbid,Salary)  VALUES (022,44000);


--Reservations Table
Drop table if exists Reservations;
create table Reservations(
	rvid		integer NOT null unique,
	cbid		integer NOT null references ClubhouseCrew(cbid),
	gcid		integer NOT null references GolfCourse(gcid),
	Date		date,
	Time		time,
primary key(rvid)
);

Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1001,001,303,'5-APR-2016' ,'08:38:19' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1002,011,302,'5-APR-2016' ,'10:35:00' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1003,001,301,'5-APR-2016' ,'13:48:07' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1004,011,302,'7-APR-2016' ,'06:01:21' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1005,001,303,'7-APR-2016' ,'07:59:34' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1006,022,302,'7-APR-2016' ,'08:53:25' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1007,001,301,'7-APR-2016' ,'11:35:21' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1008,001,302,'7-APR-2016' ,'12:10:29' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1009,001,301,'7-APR-2016' ,'13:29:18' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1010,011,302,'7-APR-2016' ,'13:53:44' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1011,011,302,'8-APR-2016' ,'07:34:46' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1012,011,302,'8-APR-2016' ,'11:52:10' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1013,001,303,'8-APR-2016' ,'13:27:43' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1014,022,303,'8-APR-2016' ,'14:59:05' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1015,022,303,'10-MAY-2016' ,'06:24:42' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1016,001,302,'10-MAY-2016' ,'15:14:11' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1017,022,302,'10-MAY-2016' ,'15:21:53' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1018,011,301,'15-MAY-2016' ,'08:04:52' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1019,001,302,'15-MAY-2016' ,'11:47:48' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1020,022,301,'15-MAY-2016' ,'13:04:33' );
Insert into Reservations (rvid, cbid, gcid, Date, Time) VALUES (1021,022,303,'15-MAY-2016' ,'14:04:29' );


--GolfParty Table 
Drop table if exists GolfParty;
create table GolfParty(
	rvid		integer NOT NULL references Reservations(rvid),
	gid		integer NOT Null references Golfers(gid),
primary key(rvid,gid)
);

Insert into GolfParty (rvid,gid)  VALUES (1001,203);
Insert into GolfParty (rvid,gid)  VALUES (1001,208);
Insert into GolfParty (rvid,gid)  VALUES (1001,210);
Insert into GolfParty (rvid,gid)  VALUES (1002,202);
Insert into GolfParty (rvid,gid)  VALUES (1003,207);
Insert into GolfParty (rvid,gid)  VALUES (1004,201);
Insert into GolfParty (rvid,gid)  VALUES (1004,211);
Insert into GolfParty (rvid,gid)  VALUES (1004,212);
Insert into GolfParty (rvid,gid)  VALUES (1004,207);
Insert into GolfParty (rvid,gid)  VALUES (1005,204);
Insert into GolfParty (rvid,gid)  VALUES (1006,204);
Insert into GolfParty (rvid,gid)  VALUES (1006,201);
Insert into GolfParty (rvid,gid)  VALUES (1008,202);
Insert into GolfParty (rvid,gid)  VALUES (1010,207);
Insert into GolfParty (rvid,gid)  VALUES (1010,204);
Insert into GolfParty (rvid,gid)  VALUES (1010,211);

--Rounds
Drop table if exists Rounds;
Create table Rounds (
	 rvid	 	 	 INTEGER NOT NULL references Reservations(rvid),
	 teeofftime		 TIME,
	 CurrentHole		 varchar (2) Default 'NA' Check
				 (CurrentHole in ('NA', '1' , '2' , '3', '4','5','6','7','8','9','10','11','12','13','14','15','16','17','18')),
	 EndTime 		 TIME,
Primary Key(rvid)	 
);

Insert into Rounds (rvid,teeofftime,currenthole,endtime) Values (1001, '08:45:19', '9', '11:02:00');
Insert into Rounds (rvid,teeofftime,currenthole,endtime) Values (1002, '10:50:19', '18', '2:34:00');
Insert into Rounds (rvid,teeofftime,currenthole,endtime) Values (1003, '13:54:19', '18', '17:04:00');
Insert into Rounds (rvid,teeofftime,currenthole,endtime) Values (1004, '06:15:19', '18', '10:02:00');
Insert into Rounds (rvid,teeofftime,currenthole,endtime) Values (1005, '08:15:19', '9', '10:30:00');
Insert into Rounds (rvid,teeofftime,currenthole,endtime) Values (1006, '08:45:19', '18', '1:02:00');
Insert into Rounds (rvid,teeofftime,currenthole,endtime) Values (1007, '11:45:19', '18', '15:32:00');
Insert into Rounds (rvid,teeofftime,currenthole,endtime) Values (1008, '12:22:19', '18', '16:42:00');
Insert into Rounds (rvid,teeofftime,currenthole,endtime) Values (1009, '13:45:19', '18', '17:02:00');
Insert into Rounds (rvid,teeofftime,currenthole,endtime) Values (1010, '14:00:19', '9', '16:09:00');
Insert into Rounds (rvid,teeofftime,currenthole,endtime) Values (1011, '07:45:19', '9', '09:12:00');
Insert into Rounds (rvid,teeofftime,currenthole) Values (1012, '11:45:19', '2');
Insert into Rounds (rvid,teeofftime,currenthole) Values (1013, '14:02:19', 'NA');


--GolfScores Table
Drop table if exists GolfScores;
create table GolfScores(
	rvid		integer NOT NULL references Rounds(rvid),
	gid		integer NOT NULL references Golfers(gid),
	Score		numeric,
primary key(rvid,gid)
);

Insert into GolfScores (rvid,gid,score)  VALUES (1001,203,33);
Insert into GolfScores (rvid,gid,score)  VALUES (1001,208,34);
Insert into GolfScores (rvid,gid,score)  VALUES (1001,210,40);
Insert into GolfScores (rvid,gid,score)  VALUES (1002,202,80);
Insert into GolfScores (rvid,gid,score)  VALUES (1003,207,77);
Insert into GolfScores (rvid,gid,score)  VALUES (1004,201,88);
Insert into GolfScores (rvid,gid,score)  VALUES (1004,211,93);
Insert into GolfScores (rvid,gid,score)  VALUES (1004,212,75);
Insert into GolfScores (rvid,gid,score)  VALUES (1004,207,83);
Insert into GolfScores (rvid,gid,score)  VALUES (1005,204,30);
Insert into GolfScores (rvid,gid,score)  VALUES (1006,204,78);
Insert into GolfScores (rvid,gid,score)  VALUES (1006,201,90);
Insert into GolfScores (rvid,gid,score)  VALUES (1008,202,79);
Insert into GolfScores (rvid,gid,score)  VALUES (1010,207,85);
Insert into GolfScores (rvid,gid,score)  VALUES (1010,204,84);
Insert into GolfScores (rvid,gid,score)  VALUES (1010,211,86);

--GroundsCrew Table
Drop table if exists GroundsCrew;
create table GroundsCrew(
	grid		integer NOT null references Staff(sid),
	gcid		integer NOT null references GolfCourse(gcid),
	PayperHr	numeric,
primary key(grid)
);

Insert into GroundsCrew (grid,gcid,PayperHR)  VALUES (002,301, 12);
Insert into GroundsCrew (grid,gcid,PayperHR)  VALUES (004,302, 12);
Insert into GroundsCrew (grid,gcid,PayperHR)  VALUES (007,301, 12);
Insert into GroundsCrew (grid,gcid,PayperHR)  VALUES (016,302, 12);
Insert into GroundsCrew (grid,gcid,PayperHR)  VALUES (021,303, 15);


--RoundTime
CREATE OR REPLACE FUNCTION RoundTime (roundtime INTEGER, startround TIME)
RETURNS TIME AS $$
DECLARE
	 length TIME;
BEGIN
	 SELECT (endtime::TIME - teeofftime::TIME)
	 INTO length
	 FROM Rounds
	 WHERE rvid = roundtime
 AND teeofftime = startround;
RETURN length AS length;
END;
$$ LANGUAGE plpgsql;

Select RoundTime (1003, '13:54:19');

--OverUnder Par

Create or Replace FUNCTION OverUnderPar(roundscore numeric, holepar text)
RETURNS NUMERIC AS $$
DECLARE
	 parscore numeric;
BEGIN
	 SELECT (gs.score::Numeric - gc.par::Numeric)
	 INTO parscore
	 FROM Golfscores gs,
	      Reservations rv,
	      Rounds r,
	      Golfcourse gc
	 WHERE rv.rvid = r.rvid AND
		r.rvid = gs.rvid AND
		rv.gcid = gc.gcid
 AND gs.score = roundscore
 AND gc.name = holepar;
RETURN parscore AS parscore;
END;
$$ LANGUAGE plpgsql;

Select OverUnderPar(88,'Ocean Course');



--Vistor Pass View

Create View VistorsPass AS
Select p.FName, p.LName
From People p
Where  p.pid IN (select cm.cid
		 From Clubmembers cm
		 Where MembershipType IN ( 'Gold','Silver'));

--Best in CA View 
Create View BestinCA AS
Select p.FName, p.LName, g.handicap
From people p,
     clubmembers cb,
     golfers g
Where p.pid = cb.cid AND
      cb.cid = g.cid AND
	p.zipcode IN ( select st.zipcode
		     From states st
		     Where st.state in ('CA'))
   Order by g.handicap ASC;
   
--Ocean Course Leaderboard View
Create View OceanCourseTopScores AS
Select distinct g.gid, gs.score, rv.date
From 	golfers g,
	golfscores gs,
	rounds r,
	reservations rv,
	golfcourse gc
Where   g.gid = gs.gid AND
	gs.rvid = r.rvid AND
	r.rvid = rv.rvid AND
	rv.gcid IN (select gc.gcid 
		    FROM golfcourse gc
		    Where gc.name = 'Ocean Course')
Order by gs.score ASC limit 10;

--NonGolfers View
Create View NonGolfers AS
Select p.fname,p.lname
From 	people p,
	clubmembers cb,
	golfers g
Where p.pid = cb.cid AND
      cb.cid NOT IN (select g.cid
		     From golfers g);

--Trigger
Create or Replace Function vistorallowed()
Returns trigger AS $$	
Begin
	IF new.sponsor NOT In (select cm.cid
			       From Clubmembers cm
		               Where MembershipType IN ( 'Gold','Silver'))
			 THEN
			 Raise Exception 'Membership Does Not Permit';
	End if;
	IF new.sponsor In (select cm.cid
			       From Clubmembers cm
		               Where MembershipType IN ( 'Gold','Silver'))
			Then 
			Raise Exception 'Allowed';
		END IF;
		Insert into guests (vid, sponsor)
			Values (new.vid, new.cid);
			Return NEW;
		
END;
$$ LANGUAGE plpgsql;

Create Trigger VistorsAllowed
After Insert OR Update on Guests
Execute procedure vistorallowed();

Insert into Guests (vid,Sponsor)  VALUES (001,018);

--Reports  Most Yards Walked

Select gp.gid, SUM(gc.yards) as totyards
From Reservations rv Inner Join GolfParty gp on gp.rvid = rv.rvid
		     Inner Join Golfcourse gc on rv.gcid = gc.gcid
Group by gp.gid
Order by totyards DESC;

--Workers 10 Year Anniversary this Month Report

Select count(*)
From staff s
Where extract (month from datehired) = extract(month from current_timestamp) AND
      extract (year from datehired) = extract(year from current_timestamp) -10;

--Secruity
Create ROLE ClubHouse;
Create Role Grounds;
Create Role Members;
Create Role Vistors;
Create Role ClubAdmin;
Create Role Golfer;


--Clubhouse Roles
Grant Select, Insert, Update on Reservations to ClubHouse;
Grant Select, Insert, Update on People to ClubHouse;
Grant Select, Insert, Update on Guests to ClubHouse;
Grant Select, Insert, Update on Clubmembers to ClubHouse;
Grant Select, Insert, Update on Golfers to ClubHouse;
Grant Select, Insert, Update on GolfParty to ClubHouse;
Grant Select, Insert, Update on States to ClubHouse;
Grant Select, Insert, Update on Rounds to ClubHouse;
Grant Select, Insert, Update on GolfScores to ClubHouse;
Grant Select on Golfcourse to ClubHouse;
Revoke all privileges on ClubhouseCrew from Clubhouse;
Revoke all privileges on GroundsCrew from Clubhouse;

--Grounds
Grant Select on Reservations to Grounds;
Grant Select on People to Grounds;
Grant Select on Guests to Grounds;
Grant Select on Clubmembers to Grounds;
Grant Select on Golfers to Grounds;
Grant Select on GolfParty to Grounds;
Grant Select on States to Grounds;
Grant Select on Rounds to Grounds;
Grant Select on GolfScores to Grounds;
Grant Select, Update on Golfcourse to Grounds;
Revoke all privileges on ClubhouseCrew from Grounds;
Revoke all privileges on GroundsCrew from Grounds;

--Members
Grant Select on Reservations to Members;
Grant Select on Clubmembers to Members;
Grant Select on GolfParty to Grounds;
Grant Select on GolfScores to Grounds;

--Club Admin
Grant Select, Insert, Update, Delete on Reservations to ClubAdmin;
Grant Select, Insert, Update, Delete on People to ClubAdmin;
Grant Select, Insert, Update, Delete on Staff to ClubAdmin;
Grant Select, Insert, Update, Delete on Guests to ClubAdmin;
Grant Select, Insert, Update, Delete on Golfscores to ClubAdmin;
Grant Select, Insert, Update, Delete on GolfCourse to ClubAdmin;
Grant Select, Insert, Update, Delete on ClubhouseCrew to ClubAdmin;

