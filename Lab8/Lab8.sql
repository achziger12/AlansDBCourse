--People Table
Drop table if exists People;
Create table People(
	pid		integer NOT null,
	Name		text,
primary key(pid)
);


--Actors Table

Drop table if exists Actors;
create table Actors(
	pid		integer NOT null references People(pid),
	Birthdate	date,
	HairColor	text,
	EyeColor	text,
	HeightIN	float,
	WeightLB	float,
	FavColor	text,
	ActGuildAnv	date,
primary key(pid)
);

--Relationships Table
Drop table if exists Relationships;
create table Relationships(
	pid		integer NOT null references People(pid),
	SpouseName	text,
primary key(pid)
);

--Directors Table
Drop table if exists Directors;
create table Directors(
	pid		integer NOT null references People(pid),
	FilmSchool	text,
	FavLens		text,
	DirGuildAnv	date,
primary key(pid)
);

--Address Table
Drop table if exists Address;
create table Address(
	pid		integer NOT null references People(pid),
	HouseNum	integer,
	Street		text,
	City		char(2),
	Zipcode		integer,
primary key(pid)
);

--Movies Table

Drop table if exists Movies;
create table Movies(
	MPAA		integer NOT null,
	Title		text,
	RelDate		date,
primary key(MPAA)
);

--Particpation Table
Drop table if exists Particpation;
create table Particpation(
	MPAA		integer NOT null references Movies(MPAA),
	Pid		integer NOT null references People(pid),
	Role		text,
primary key(MPAA, pid)
);

--Sales Table
Drop table if exists Sales;
create table Sales(
	MPAA		integer NOT null references Movies(MPAA),
	SalesType	text,
	SalesUSD	numeric,
primary key(MPAA, SalesType)
);

--Question #4
Create View seancon AS
(Select MPAA, pid
From Particpation par
Where par.role = 'Actor' AND
      par.pid IN (select p.pid
		  From 	people p
		  Where p.name = 'Sean Connery'));

Select p.name
From People p
Where pid In (select par.pid
		   From Particpation par
		   Where par.role = 'Director' AND
			    Par.MPAA In (select MPAA
		   			 From seancon));

