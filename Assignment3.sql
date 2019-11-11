create table Customers(
CustomerID int not null primary key, 
FullName varchar(255) not null, 
Street varchar(255) not null, 
City varchar(255) not null, 
PostalCode int not null, 
PhoneNumber int not null, 
BirthDay Date not null);

create table Orders(
OrderID int primary key, 
OrderDate Date not null, 
TotalPrice double not null,
PaymentMethod varchar(255) not null,
OrderType varchar(255) not null,
CustomerID int not null,
Foreign key (CustomerID) references Customers(CustomerID));

create table DigitalOrder(
OrderID int not null primary key,
SubscriptionType varchar(255) not null); 

create table PhysicalOrder(
OrderID int not null primary key,
ShippingMethod varchar(255) not null); 

create table Book(
BookID int not null primary key, 
Title varchar(255) not null,
Price double not null,
ReleaseDate date not null); 

create table Novel(
NovelID int not null primary key,
Title varchar(255) not null,
WordCount int not null); 

create table Author(
AuthorID int not null primary key,
AuthorName varchar(255) not null,
DebutDate date not null); 

create table Genre(
GenreName varchar(255) not null primary key); 

create table OrderLine(
OrderID int not null,
BookID int not null, 
QuantityOrdered int not null, 
Primary key (OrderID,BookID),
Constraint fk_orderid foreign key (OrderID) references Orders
(OrderID),
Constraint fk_bookid foreign key (BookID) references Book(BookID)
);

create table ReadingHistory(
OrderID int not null,
NovelID int not null, 
ReadDate date not null, 
ReadCount double not null,
Primary key (OrderID,NovelID),
Constraint fk_stuff foreign key (OrderID) references Orders
(OrderID),
Constraint fk_novelid foreign key (NovelID) references Novel(NovelID)
);

create table BelongsTo(
NovelID int not null,
AuthorName varchar(255) not null,
primary key (NovelID, AuthorName),
Constraint fk foreign key (NovelID) 
references Novel(NovelID),
Constraint foreignkey foreign key (AuthorName) references 
author(AuthorName)); 

create table Writes(
AuthorID int not null,
NovelID int not null,
primary key (AuthorID, NovelID),
constraint fk_authorid foreign key (AuthorID)
references Author(AuthorID),
constraint fk_novelid1 foreign key (NovelID)
references Novel(NovelId)); 