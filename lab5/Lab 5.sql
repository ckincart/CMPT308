-- Lab 5 --

-- 1 -- 
select a.city
from agents a,
     orders o,
     customers c
where 'Basics' = c.name
  and c.cid = o.cid
  and o.aid = a.aid;

-- 2 -- 
select distinct o2.pid
from customers c
inner join orders as o1
on c.cid = o1.cid
right join orders as o2
on o1.aid = o2.aid
where c.city = 'Kyoto'
order by o2.pid asc;

-- 3 --
select * 
from customers
where cid not in (select cid
			from orders o)
	;

-- 4 --
select c.name
from orders o right outer join customers c on o.cid = c.cid
where ordno is null;

-- 5 --
select distinct c.name, a.name
from agents a, 
     customers c,
     orders o
where c.city = a.city;

-- 6 --
select distinct c.name, a.name, a.city
from customers c,
orders o,
agents a
where c.city = a.city;

-- 7 --
select c.name, c.city
from customers c
left outer join products
on c.cid = products.pid 
where c.city in (select city 
		 from products
		 group by city
		 order by sum(quantity) asc
		 limit 1); 
