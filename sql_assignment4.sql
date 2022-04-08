

--Display the employee details whose joined at first

select * from employee
order by joiningdate asc
limit 1;


--Display the employee details whose joined at recently

select * from employee
order by joiningdate desc
limit 1;

--Write a query to get most expense and least expensive Product list (name and unit price).

select ProductName, Max(UnitPrice) from Product
union all 
select ProductName, Min(UnitPrice) from Product;

--Display the list of products that are out of stock

select * from Product where IsDiscontinued = true;

--Display list of categories and suppliers who supply products within those categories

select category, supplier from Product;

--Display complete list of customers, the OrderID and date of any orders they have made

select concat(c.FirstName, ' ', c.LastName),O.ID, O.OrderDate
from customer as c
inner join Order as O on c.ID = O.CustomerID;

--Write  query that determines the customer who has placed the maximum number of orders

select * from [Customer] as c
left join [Order] as O on c.ID = O.CustomerID
group by c.ID
having Max(c.ID)

--Display the customerid whose name has substring ‘RA’

select ID from Customer where FirstName like '%RA%' OR LastName like '%RA%';

--Display the first word of all the company name

SELECT CompanyName, SUBSTR(CompanyName,1, INSTR(CompanyName, ' ')-1)
FROM ShippingAgency;


