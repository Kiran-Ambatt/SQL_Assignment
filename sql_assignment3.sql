

--write a query to display the orders placed by customer with phone number 030-0074321

select * from Customer as c
left join Order as O on c.ID= o.CustomerID 
left join OrderItem as OI on OI.OrderId = O.ID
left join Product as p on p.ID = OI.ProductID
where c.Phone = '030-0074321';

--fetching all the products which are available under Category ‘Seafood’.

select * from Product
where category = 'Seafood';

--Display the orders placed by customers not in London

select * from Customer as c
left join Order as O on c.ID= o.CustomerID 
left join OrderItem as OI on OI.OrderId = O.ID
left join Product as p on p.ID = OI.ProductID
where c.City <> 'London';



--selects all the order which are placed for the product Chai

select * from Order as O
left join OrderItem as OI on OI.OrderId = O.ID
left join Product as p on p.ID = OI.ProductID
where p.ProductName = 'Chai';

