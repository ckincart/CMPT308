select name, city
from agents 
where name = 'Smith';

select pid, name, quantity
from products
where priceUSD > 1.25;

select ordno, aid
from orders;

select name, city 
from customers
where city = 'Dallas';

select name 
from agents
where city != 'New York'
  and city != 'Newark';

select * 
from products
where city != 'New York'
  or city != 'Newark'
  and priceUSD >= 1;

select *
from orders
where mon = 'jan'
or mon = 'mar';

select *
from orders 
where mon = 'feb'
and dollars < 100;

select *
from orders 
where cid = 'c001';