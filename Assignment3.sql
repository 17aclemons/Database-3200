create table Customers(
CustomerID int not null primary key, 
FullName varchar(255) not null, 
Street varchar(255) not null, 
City varchar(255) not null, 
PostalCode int not null, 
PhoneNumber int not null, 
BirthDay Date not null);

insert Customers values(1, 'Cole Haan', 'Acorn', 'Cedar City', 11111, 1010, 19990101);
insert Customers values(2, 'Me self', 'Birch', 'Cedar City', 22222, 1234, 19990202);
insert Customers values(3, 'Person Person', 'Coniferous', 'Cedar City', 33333, 5678, 19990303);

create table Orders(
OrderID int primary key, 
OrderDate Date not null, 
TotalPrice double not null,
PaymentMethod varchar(255) not null,
OrderType varchar(255) not null,
CustomerID int not null,
Foreign key (CustomerID) references Customers(CustomerID));

insert Orders values(1, 19990101, 1.00, 'Credit', 'Digital',1);
insert Orders values(2, 19990202, 1.00, 'Credit', 'Digital',2);
insert Orders values(3, 19990303, 1.00, 'Credit', 'Digital',3);

create table DigitalOrder(
OrderID int not null primary key,
SubscriptionType varchar(255) not null); 

insert DigitalOrder values (1, 'test');
insert DigitalOrder values (2, 'test');
insert DigitalOrder values (3, 'test');

create table PhysicalOrder(
OrderID int not null primary key,
ShippingMethod varchar(255) not null); 

insert physicalorder values(1, 'test');
insert physicalorder values(2, 'test');
insert physicalorder values(3, 'test');


create table Book(
BookID int not null primary key, 
Title varchar(255) not null,
Price double not null,
ReleaseDate date not null); 

insert Book values(1, 'test', 1.0, 11111111);
insert Book values(2, 'test', 1.0, 11111111);
insert Book values(3, 'test', 1.0, 11111111);

create table Novel(
NovelID int not null primary key,
Title varchar(255) not null,
WordCount int not null); 

insert Novel values(1, "test", 1);
insert Novel values(2, "test", 1);
insert Novel values(2, "test", 1);

create table Author(
AuthorID int not null primary key,
AuthorName varchar(255) not null,
DebutDate date not null); 

insert Author values(1, 'test', 1111111);
insert Author values(2, 'test', 1111111);
insert Author values(3, 'test', 1111111);

create table Genre(
GenreName varchar(255) not null primary key); 

insert Genre values("test");
insert Genre values("mystery");
insert Genre values("Brandon");

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
Constraint foreign_key foreign key (AuthorName) references 
author(AuthorName)); 

create table Writes(
AuthorID int not null,
NovelID int not null,
primary key (AuthorID, NovelID), 
constraint fk_authorid foreign key (AuthorID)
references Author(AuthorID),
constraint fk_novelid1 foreign key (NovelID)
references Novel(NovelId)); 

