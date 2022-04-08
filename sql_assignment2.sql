

--Display the details from Customer table who is from country Germany

select * from Customer where Country='Germany';

--Display the  full name of the employee

select name from employee 

--Print all Employees with Manager Name

select name, managername from employee 

--Display the  customer details  who has Fax number

select * from [Customer] where Fax <> '' and Fax is not NULL

--display the customer details whose name holds second letter as U

select * from Customer where FirstName like '_U%';

--select order Details where unit price is greater than 10 and less than 20

select * from OrderItem where UnitPrice > 10 AND UnitPrice < 20

--Display order details which contains shipping date and arrange the order by date

select * from [Order] where shippingdate is not NULL order by orderdate desc

--Print the products supplied by 'Exotic Liquids'

select * from Product where supplier ='Exotic Liquids'

--print the average quantity ordered for every product

select p.ProductName, avg(o.Quantity)
from Product as p 
left join OrderItem as o on p.ID=o.ProductID 
group by p.ProductName;

--Print the orders shipped by ship name 'La corned'abondance' between 2 dates(Choose dates of your choice)

select * 
from Order as o
left join ShippingAgency as s 
on o.shippingcompanyID = s.ID
where s.shipname="La corned'abondance" 
and o.shippingdate between '2022-04-01' and '2022-04-03';

--Print all the Shipping company name and the ship names if they are operational

select companyname from ShippingAgency where operational = 1;

--Print the bill for a given order id .bill should contain Productname, Categoryname,price after discount

select p.ProductName, p.category, (OI.unitprice - OI.discount) as effectivePrice
from Order as o
left join OrderItem as OI on OI.OrderId = o.ID
left join Product as p on p.ID = OI.ProductID
where o.ID = 1;

--Print the Total price of orders which have the products supplied by 'Exotic Liquids' if the price is > 50 and also print it by Shipping company's Name

select SUM(O.TotalAmount), s.companyName
from Order as O
left join ShippingAgency as  s on s.ID = O.shippingcompanyID
left join OrderItem as OI on OI.OrderId = O.ID
left join Product as p on p.ID = OI.ProductID
group by p.supplier
having p.supplier = 'Exotic Liquids' and p.UnitPrice > 50