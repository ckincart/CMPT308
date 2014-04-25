-- Conor Kincart --
-- Database Systems --
-- April 24, 2014 --
-- Lab 10 - Stored Procedures --

-- 1.  function PreReqsFor(courseNum) - Returns immediate prereqs for the passed-in course no.
create or replace function PreReqsFor(int, REFCURSOR) returns refcursor as
$$
declare
	course_num 	int		:= $1;
	resultset 	REFCURSOR	:= $2;
begin
	open resultset for
		select c.name, c.num
		from courses c,
		     prerequisites p
		where course_num in (p.coursenum)
		      and p.prereqnum = c.num;
	return resultset;
end;
$$
language plpgsql;

select PreReqsFor(221, 'results');
Fetch all from results;

-- 2. function IsPreReqFor(courseNum) - Returns the courses for which the passed-in course no. is 
-- an immediate pre-requisite.

create or replace function IsPreReqFor(int, REFCURSOR) returns refcursor as 
$$
declare
	course_num	int		:= $1;
	resultset	REFCURSOR	:= $2;
begin
	open resultset for
		select c2.name, c2.num, c2.credits
		from courses c1,
		     courses c2,
		     prerequisites p
		where course_num = c1.num
		   and c1.num = p.prereqnum
		   and p.coursenum = c2.num;
	return resultset;
end;
$$
language plpgsql;

select IsPreReqFor(120, 'results');
Fetch all from results;
