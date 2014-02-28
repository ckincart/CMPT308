--Conor Kincart --
-- Feb. 27, 2014 --
-- Worked with Kevin Bruce --

-- 1 --
select c.name, c.city
from customers c
left outer join products
on c.cid = products.pid 
where c.city in (select city 
		 from products
		 group by city
		 order by sum(quantity) desc
		 limit 1)
	; 


		

-- 3 --
select p.name
from products p
where p.priceUSD > (select avg(priceUSD)
		    from products p);

-- 4 --
select c.name, o.pid, o.dollars
from customers c,
     orders o
where o.cid = c.cid
order by o.dollars desc
	;

-- 5 --
select c.name, coalesce (sum(o.dollars), 0)
from customers c left outer join orders o on c.cid = o.cid
group by c.cid
order by c.name
;

-- 6 --
select c.name, a.name, p.name
from customers c,
     orders o,
     agents a,
     products p
where c.cid = o.cid
	and a.aid = o.aid
	and p.pid = o.pid
	and a.city = 'New York'
;

-- 7 --
select o.dollars, CAST((o.qty * p.priceUSD) - (o.qty * p.priceUSD *(c.discount/100.00)) as numeric)as PriceCheck
from    orders o,
	products p,
	customers c
where o.pid = p.pid 
	and c.cid = o.cid
;