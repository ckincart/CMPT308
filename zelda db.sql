--Conor Kincart --
--Database Systems--
--Design Project--
--The Legend of Zelda: Ocarina of Time Database--
--April 24, 2014--
drop database if exists Zelda;
create database Zelda;

drop table if exists Characters;
drop table if exists Race;
drop table if exists Allies;
drop table if exists Enemies;
drop table if exists Sages;
drop table if exists Medallions;
drop table if exists Locations;
drop table if exists WeaponsItems;
drop table if exists SpiritualStones;
drop table if exists OcarinaSongs;
drop table if exists Tunic;

create table Characters
(
 cid		char(3) not null,   --PK for Characters, character ID
 name		text,
 locId		char(5) not null,
 rid		char(3) not null,
 Primary Key (cid)
);

insert into Characters (cid, name, locId, rid)
values ('c01', 'Link', 'loc01', 'r01');

insert into Characters (cid, name, locId, rid)
values ('c02', 'Zelda', 'loc09', 'r01');

insert into Characters (cid, name, locId, rid)
values ('c03', 'Ganondorf', 'loc14', 'r03');

insert into Characters (cid, name, locId, rid)
values ('c04', 'Sheik', 'loc04', 'r01');

insert into Characters (cid, name, locId, rid)
values ('c05', 'Rauru', 'loc13', 'r01');

insert into Characters (cid, name, locId, rid)
values ('c06', 'Saria', 'loc01', 'r02');

insert into Characters (cid, name, locId, rid)
values ('c07', 'Darunia', 'loc06', 'r04');

insert into Characters (cid, name, locId, rid)
values ('c08', 'Princess_Ruto', 'loc05', 'r05');

insert into Characters (cid, name, locId, rid)
values ('c09', 'Impa', 'loc04', 'r01');

insert into Characters (cid, name, locId, rid)
values ('c10', 'Nabooru', 'loc14', 'r03');

insert into Characters (cid, name, locId, rid)
values ('c11', 'Malon', 'loc03', 'r01');

insert into Characters (cid, name, locId, rid)
values ('c12', 'Talon', 'loc03', 'r01');

insert into Characters (cid, name, locId, rid)
values ('c13', 'Biggoron', 'loc06', 'r04');

insert into Characters (cid, name, locId, rid)
values ('c14', 'King_Zora', 'loc05', 'r05');

insert into Characters (cid, name, locId, rid)
values ('c15', 'Queen_Gohma', 'loc08', 'r06');

insert into Characters (cid, name, locId, rid)
values ('c16', 'King_Dodongo', 'loc06', 'r06');

insert into Characters (cid, name, locId, rid)
values ('c17', 'Barinade', 'loc07', 'r06');

insert into Characters (cid, name, locId, rid)
values ('c18', 'Volvagia', 'loc11', 'r06');

insert into Characters (cid, name, locId, rid)
values ('c19', 'Bongo_Bongo', 'loc15', 'r06');

select *
from Characters;

create table Race
(
 rid		char(3) not null,
 name		text,
 Primary Key (rid)
);

insert into Race (rid, name)
values ('r01', 'Hyrulian');

insert into Race (rid, name)
values ('r02', 'Kokori');

insert into Race (rid, name)
values ('r03', 'Gerudian');

insert into Race (rid, name)
values ('r04', 'Kokori');

insert into Race (rid, name)
values ('r05', 'Zoran');

insert into Race (rid, name)
values ('r06', 'Shadow_Being');

Select *
from Race;

create table Allies
(
 aid		char(3) not null,
 cid		char(3) not null,
 name		text,
 Primary Key (aid,cid)
);

insert into Allies (aid, cid, name)
values('a01', 'c02', 'Zelda');

insert into Allies (aid, cid, name)
values('a02', 'c04', 'Sheik');

insert into Allies (aid, cid, name)
values('a03', 'c05', 'Rauru');

insert into Allies (aid, cid, name)
values('a04', 'c06', 'Saria');

insert into Allies (aid, cid, name)
values('a05', 'c07', 'Darunia');

insert into Allies (aid, cid, name)
values('a06', 'c08', 'Princess Ruto');

insert into Allies (aid, cid, name)
values('a07', 'c09', 'Impa');

insert into Allies (aid, cid, name)
values('a08', 'c10', 'Nabooru');

insert into Allies (aid, cid, name)
values('a09', 'c11', 'Malon');

insert into Allies (aid, cid, name)
values('a10', 'c12', 'Talon');

insert into Allies (aid, cid, name)
values('a11', 'c13', 'Biggoron');

insert into Allies (aid, cid, name)
values('a12', 'c14', 'King_Zora');

select *
from Allies;

create table Enemies
(
 eid		char(3) not null,
 cid		char(3) not null,
 name		text,
 Primary Key (eid,cid)
);

insert into Enemies (eid, cid, name)
values ('e01', 'c03', 'Ganondorf');

insert into Enemies (eid, cid, name)
values ('e02', 'c15', 'Queen_Gohma');

insert into Enemies (eid, cid, name)
values ('e03', 'c16', 'King_Dodongo');

insert into Enemies (eid, cid, name)
values ('e04', 'c17', 'Barinade');

insert into Enemies (eid, cid, name)
values ('e05', 'c18', 'Volvagia');

insert into Enemies (eid, cid, name)
values ('e06', 'c19', 'Bongo_Bongo');

select *
from Enemies;


create table Sages
(
 sid		char(3) not null,
 cid		char(3) not null,
 sageName	text,
 Primary Key (sid,cid)
);

insert into Sages ( sid, cid, sageName)
values ('s01', 'c05', 'Rauru');

insert into Sages ( sid, cid, sageName)
values ('s02', 'c06', 'Saria');

insert into Sages ( sid, cid, sageName)
values ('s03', 'c07', 'Darunia');

insert into Sages ( sid, cid, sageName)
values ('s04', 'c08', 'Princess_Ruto');

insert into Sages ( sid, cid, sageName)
values ('s05', 'c09', 'Impa');

insert into Sages ( sid, cid, sageName)
values ('s06', 'c10', 'Nabooru');

select * 
from Sages;

create table Medallions
(
 mid		char(3) not null,
 name		text,
 Primary Key (mid)
);

insert into Medallions ( mid, name)
values ('m01', 'Light Medallion');

insert into Medallions ( mid, name)
values ('m02', 'Forest Medallion');

insert into Medallions ( mid, name)
values ('m03', 'Fire Medallion');

insert into Medallions ( mid, name)
values ('m04', 'Water Medallion');

insert into Medallions ( mid, name)
values ('m05', 'Shadow Medallion');

insert into Medallions ( mid, name)
values ('m06', 'Spirit Medallion');

select *
from Medallions;

create table Locations
(
 locId		char(5) not null,
 name		text,
 Primary Key(locId)
);

insert into Locations (locId, name)
values ('loc01', 'Kokori Forest');

insert into Locations (locId, name)
values ('loc02', 'Hyrule Field');

insert into Locations (locId, name)
values ('loc03', 'Lon Lon Ranch');

insert into Locations (locId, name)
values ('loc04', 'Kakariko Village');

insert into Locations (locId, name)
values ('loc05', 'Zoras Domain');

insert into Locations (locId, name)
values ('loc06', 'Goron City');

insert into Locations (locId, name)
values ('loc07', 'Inside Jabu Jabus Belly');

insert into Locations (locId, name)
values ('loc08', 'Inside the Deku Tree');

insert into Locations (locId, name)
values ('loc09', 'Hyrule Castle');

insert into Locations (locId, name)
values ('loc10', 'Forest Temple');

insert into Locations (locId, name)
values ('loc11', 'Fire Temple');

insert into Locations (locId, name)
values ('loc12', 'Ice Cavern');

insert into Locations (locId, name)
values ('loc13', 'Temple of Time');

insert into Locations (locId, name)
values ('loc14', 'Gerudo Valley');

insert into Locations (locId, name)
values ('loc15', 'Shadow Temple');

select *
from Locations;

create table WeaponsItems
(
 wid		char(3) not null,
 name		text,
 description	text,
 locId		char(5) not null,
 Primary Key (wid)
);

insert into WeaponsItems ( wid, name, description, locId)
values ('w01', 'Kokori Sword', 'Your first blade in the game.', 'loc01');

insert into WeaponsItems ( wid, name, description, locId)
values ('w02', 'Deku Shield', 'Bought in the Deku Shop', 'loc01');

insert into WeaponsItems ( wid, name, description, locId)
values ('w03', 'Fairy Slingshot', 'First projectile weapon, use to shoot eyes.', 'loc08');

insert into WeaponsItems ( wid, name, description, locId)
values ('w04', 'Bombs', 'Look for cracks in the wall.', 'loc06');

insert into WeaponsItems ( wid, name, description, locId)
values ('w05', 'Fairy Bow', 'Finally a real bow and arrow.', 'loc10');

insert into WeaponsItems ( wid, name, description, locId)
values ('w06', 'Megaton Hammer', 'Very powerful, bone-crushing hammer.', 'loc11');

insert into WeaponsItems ( wid, name, description, locId)
values ('w07', 'Gorons Bracelet', 'You can now pickup bomb flowers.', 'loc06');

insert into WeaponsItems ( wid, name, description, locId)
values ('w08', 'Iron Boots', 'Now stay underwater.', 'loc12');

insert into WeaponsItems ( wid, name, description, locId)
values ('w09', 'Master Sword', 'You can slay Ganondorf with this ultimate sword.', 'loc13');

insert into WeaponsItems ( wid, name, description, locId)
values ('w10', 'Hylian Shield', '80 rupees at the market.', 'loc09');

select * 
from WeaponsItems;

create table SpiritualStones
(
 ssid		char(4) not null,
 name		text,
 locId		char(5) not null,
 Primary Key (ssid)
);

insert into SpiritualStones ( ssid, name, locId)
values ('ss01', 'Kokori Emerald', 'loc08' );

insert into SpiritualStones ( ssid, name, locId)
values ('ss02', 'Goron Ruby', 'loc06' );

insert into SpiritualStones ( ssid, name, locId)
values ('ss03', 'Zora Sapphire', 'loc07' );

select * 
from SpiritualStones;


create table OcarinaSongs
(
 oid		char(3) not null,
 name		text,
 purpose	text,
 locId		char(5) not null,
 Primary Key (oid)
);

insert into OcarinaSongs ( oid, name, purpose, locId)
values ('o01', 'Zeldas Lullaby', 'Various magical purposes.', 'loc09');

insert into OcarinaSongs ( oid, name, purpose, locId)
values ('o02', 'Sarias Song', 'Lets you always speak with Saria.', 'loc01');

insert into OcarinaSongs ( oid, name, purpose, locId)
values ('o03', 'Eponas Song', 'Calls your horse.', 'loc03');

insert into OcarinaSongs ( oid, name, purpose, locId)
values ('o04', 'Song of Time', 'Allows access to the Master Sword.', 'loc13');

insert into OcarinaSongs ( oid, name, purpose, locId)
values ('o05', 'Minuet of Forest', 'Teleports Link to the Forest Temple.', 'loc01');

insert into OcarinaSongs ( oid, name, purpose, locId)
values ('o06', 'Bolero of Fire', 'Teleports Link to the Fire Temple.', 'loc06');

insert into OcarinaSongs ( oid, name, purpose, locId)
values ('o07', 'Serenade of Water', 'Teleports Link to the Water Temple.', 'loc05');

insert into OcarinaSongs ( oid, name, purpose, locId)
values ('o08', 'Song of Storms', 'Creates stormy weather.', 'loc04');

select *
from OcarinaSongs;



create table Tunic
(
 tid		char(3) not null,
 name		text,
 color		text,
 purpose	text,
 locId		char(5) not null,
 Primary Key (tid)
);

insert into Tunic ( tid, name, color, purpose, locId)
values ( 't01', 'Kokori Tunic', 'green', 'Standard tunic.', 'loc01');

insert into Tunic ( tid, name, color, purpose, locId)
values ( 't02', 'Goron Tunic', 'red', 'Allows unlimited extreme heat.', 'loc06');

insert into Tunic ( tid, name, color, purpose, locId)
values ( 't03', 'Zora Tunic', 'blue', 'Allows breathing underwater.', 'loc01');

select *
from Tunic;