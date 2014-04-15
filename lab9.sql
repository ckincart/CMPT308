create database NASA;

drop table Engineers;
drop table Astronauts;
drop table Flight Control Operators;
drop table Spacecraft;
drop table Crew;
drop table Systems;
drop table Parts;
drop table Suppliers;
drop table Catalog_;

create table Engineers
(
 eid				char(3) not null,   --engineer id
 firstname			text,
 lastname			text,
 highest degree			text,
 age				int,
 favorite video game		String,
 Primary Key (eid);
)

create table Astronauts
(
 aid				char(3) not null,   -- astronaut id
 firstname			text,
 lastname			text,
 years_flying			int,
 age				int,
 golf_handicap			int,
 Primary Key (aid); 
)

create table Flight Control Operators
(
 oid				char(3) not null,   -- operator id
 firstname			text,
 lastname			text,
 chair_preference		text,
 age				int,
 preferred_drink		String,
 Primary Key (oid);
)

create table Spacecraft
(
 sid				char(3) not null,   -- spacecraft id
 name				String,
 tail_number			int,
 weight_in_tons			int,
 fuel_type			text,
 crew_capacity			int,
 Primary Key(sid);
 )

create table Crew
(