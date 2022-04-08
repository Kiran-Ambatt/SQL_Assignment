
CREATE TABLE [dbo].[Customer](
	[ID] [int] NOT NULL,
	[FirstName] [nvarchar](40) NOT NULL,
	[LastName] [nvarchar](40) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](10) NOT NULL,
	[Fax] [nchar](10) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[Order](
	[ID] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[OrderNumber] [nvarchar](10) NULL,
	[CustomerID] [int] NOT NULL,
	[TotalAmount] [decimal](12, 2) NULL,
	[shippingdate] [datetime] NULL,
	[shippingcompanyID] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer1] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])

ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer1]



CREATE TABLE [dbo].[Product](
	[ID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[UnitPrice] [decimal](12, 2) NOT NULL,
	[Package] [nvarchar](30) NULL,
	[IsDiscontinued] [bit] NULL,
	[supplier] [nvarchar](50) NULL,
	[category] [nvarchar](50) NULL,
	[unitsavailable] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[OrderItem](
	[ID] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductID] [int] NULL,
	[UnitPrice] [decimal](12, 2) NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrederItem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[ShippingAgency](
	[id] [int] NOT NULL,
	[shipname] [nvarchar](50) NULL,
	[companyname] [nvarchar](50) NULL,
	[operational] [tinyint] NULL,
 CONSTRAINT [PK_shippingagency] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[employee](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[managerid] [int] NOT NULL,
	[joiningdate] [datetime] NULL,
	[managername] [nvarchar](50) NULL
) ON [PRIMARY]


INSERT INTO [dbo].[Customer]
           ([ID]
           ,[FirstName]
           ,[LastName]
           ,[City]
           ,[Country]
           ,[Phone]
           ,[Fax])
     VALUES
           (1,'MUNDAL','James','Delhi','India',0123456789,123),(2,'Daina','John','Bangalore','England',0122345678,NULL),(3,'Steve','Thomas','Mumbai','Australia',0300074321,''),(4,'John','T','Bangalore','Germany',0125647988,2323),




INSERT INTO [dbo].[Order]
           ([ID]
           ,[OrderDate]
           ,[OrderNumber]
           ,[CustomerID]
           ,[TotalAmount]
           ,[shippingdate]
           ,[shippingcompanyID])
     VALUES
           (1,'2020-02-01',3,1,100,'2018-02-04),(2,'2021-03-05',5,2,250,'1998-08-07'),(3,'2015-05-02',8,3,650,NULL),(4,'1997-07-05',7,4,950,'2010-06-03);


INSERT INTO [dbo].[Product]
           ([ID]
           ,[ProductName]
           ,[UnitPrice]
           ,[Package]
           ,[IsDiscontinued]
           ,[supplier]
           ,[category]
           ,[unitsavailable])
     VALUES
           (1,'car',20,2,0,'bosch','liquid',20),(2,'bike',50,3,1,''Exotic Liquids','tyre',30),(3,'chai',30,4,1,'abc','cda',50),(4,'book',80,5,0,'vds','seafood',70);


INSERT INTO [dbo].[OrderItem]
           ([ID]
           ,[OrderId]
           ,[ProductID]
           ,[UnitPrice]
           ,[Quantity])
     VALUES
           (1,1,1,15,5),(2,1,1,12,3)(3,2,2,13,2),(4,2,2,13,3),(5,3,3,16,4),(6,3,4,17,2);


INSERT INTO [dbo].[ShippingAgency]
           ([id]
           ,[shipname]
           ,[companyname]
           ,[operational])
     VALUES
           (1
           ,'La corned'abondance'
           ,'abc'
           NULL),(2
           ,'La corned'abondance'
           ,'ggg'
           NULL),(3
           ,'ygfdsasdf'
           ,'ryj'
           NULL);

INSERT INTO [dbo].[employee]
           ([id]
           ,[name]
           ,[managerid]
           ,[joiningdate]
           ,[managername])
     VALUES
           (1,'kiran',1,2020-02-01,'kumar'),(2,'arun',2,2021-04-05,'thomas'),(3,'lissy',3,2019-04-07,'jithin');



--Display all customer details

select * from [Customer];

--write a query to display Country whose name starts with A or I

select Country from Customer where Country like 'A%' or Country like 'i%';

--write a query to display whose name of customer whose third character is i

select FirstName from Customer where FirstName like '__i%';
