--Edward Achziger
--CMPT 308
--4/19/16

--Lab 10: The Very Last Lab before the Database Project

--1 Create a stored procedure that returns the prereq for a course number

CREATE OR REPLACE FUNCTION PreReqsFor(int, REFCURSOR) RETURNS refcursor AS
$$
DECLARE
	in_course_num 	int		:= $1;
	resultset 	REFCURSOR	:= $2;
BEGIN
    open resultset FOR
    SELECT courses.name, courses.num
    FROM Courses,
         Prerequisites
     WHERE in_course_num IN (prerequisites.coursenum)
     AND prerequisites.prereqnum = courses.num;
     RETURN resultset;     
END;
$$
LANGUAGE plpgsql;

--Example of using function

SELECT PreReqsFor(220, 'results');
FETCH FROM ALL results;

--2 Create a stored procedure that returns what a class is a prereq for.

CREATE OR REPLACE FUNCTION IsPreReqFor(int, REFCURSOR) RETURNS refcursor AS 
$$
DECLARE
	in_course_num	int		:= $1;
	resultset	REFCURSOR	:= $2;
BEGIN
      open resultset FOR
      SELECT courses.name, courses.num
      FROM courses,
           prerequisites
      WHERE in_course_num = prereqnum
      AND prerequisites.coursenum = courses.num;
      RETURN resultset;
END;
$$
LANGUAGE plpgsql;

SELECT IsPreReqFor(220, 'results');
FETCH ALL FROM results;

--OPITIONAL
--Don't have Jedi like Database powers yet but hopefully traveling to Dagobah on the weekend
-- to find Yoga to train me enough for the final project.


