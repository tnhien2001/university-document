use northwind;

-- DISTINCT
select count(distinct country)
from supplier;

-- WHERE
select id, companyname, city, country
from supplier
where country in ('USA','UK','Japan');

select id, firstname,lastname, country
from customer
where country in (select country
                  from supplier);
                    
-- WHERE LIKE
select id, productname, unitprice, package
from product
where productname like 'Ca%';

select id, productname, unitprice, package
from product
where productname like 'Cha_' or productname like 'Chan_';

-- is NULL
select id, companyname, phone, fax
from supplier
where fax is null;

select id, companyname, phone, fax
from supplier
where phone like '%9%';

-- Group By
select count(id), country,city
from customer
group by country, city
order by country;

select c.FirstName, c.LastName, sum(o.totalamount) as 'Total Price'
from orderdata as o 
join customer as c on o.customerId = c.Id
group by c.firstname, c.lastname
order by sum(o.totalamount) DESC;



