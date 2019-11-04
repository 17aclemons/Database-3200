Create table EMPLOYEE(
EmployeeID int NOT NULL,
FirstName varchar(255),
LastName varchar(255),
BirthYear int,
Street varchar(255),
City varchar(255),
ZipCode int,
Salary int,
DepartmentID int,
Primary key (EmployeeID)
);

Create table PROJECT(
ProjectID int NOT NULL,
ProjectName varchar(255),
OwnerName varchar(255),
Primary key (ProjectID)
);

Create table Department(
DepartmentID int NOT NULL,
DepartmentName varchar(255),
ManagerID int,
Primary key (DepartmentID)
);

Create table Dependent(
DependentID int NOT NULL,
DependentName varchar(255),
EmployeeID int,
Relationship varchar (255),
Primary key (DependentID)
);

Create table EmployeeProjects(
EmployeeID int NOT NULL,
ProjectID int NOT NULL,
Primary key (EmployeeID, ProjectID)
);

Create table Course(
CourseID int NOT NULL,
Coursename varchar(255),
CourseDescription varchar(255),
Primary key (CourseID)
);

Create table Certificate(
EmployeeID int NOT NULL,
CourseID int NOT NULL,
DateOfCompletion date,
Primary key (EmployeeID, CourseID)
);


insert into employee values(1001, 'John', 'Doe', 1970, '123 Nostreet', 'Cedar City', 84720,95000, 001);
insert into employee values(1002, 'Mary', 'Phillips', 1962, '111 Nostreet', 'Cedar City', 84720,86000, 001);
insert into employee values(1003, 'Alice', 'Johns', 1980, '736 1st dr.', 'Other City', 84220,102000, 002);
insert into employee values(1004, 'Gary', 'McDonalds', 1974, '1323 Jasmin Rd.', 'Flower City', 81123,90000, 002);
insert into employee values(1005, 'Bob', 'Rays', 1951, '1011 Old Ave.', 'Old City', 84000,133000, 003);
insert into employee values(1006, 'Janet', 'Walters', 1988, '2232 SomeStreet', 'Cedar City', 84721,67000, 003);
insert into employee values(1007, 'James', 'Berg', 1970, '122 Nostreet', 'Cedar City', 84720,66000, 003);



insert into department values (001, 'IT deparment', 1002);
insert into department values (002, 'Human Resources', 1005);
insert into department values (003, 'Accounting', 1007);


insert into project values (1, 'Wireless Routers', 'The Wireless World');
insert into project values (2, 'Cell Phone Network', 'Phones 4 You');
insert into project values (3, 'End of Year Revenue Calculation', 'Investment Unlimited');


insert into dependent values (1,' Sarah', 1001, 'Wife');
insert into dependent values (2,' Mariah', 1001, 'Child');
insert into dependent values (3,' Tim', 1001, 'Child');
insert into dependent values (4,' Nate', 1006, 'Husband');


insert into course values (1,'Safety At Work', 'This course talks about how to be safe at work');
insert into course values (2,'Microsoft Word', 'This course teaches you how to use MS Word');
insert into course values (4,'Work Ethics', 'This course talks ethical behaviours at work');
insert into course values (3,'Microsoft Powerpoint', 'This course teaches you how to use MS PowerPoint');



insert into certificate values(1001,1, '2015-05-01');
insert into certificate values(1001,2, '2017-07-21');
insert into certificate values(1001,4, '2009-08-22');
insert into certificate values(1005,1, '2011-11-11');
insert into certificate values(1005,3, '2013-04-13');
insert into certificate values(1007,4, '2016-12-18');


insert into employeeprojects values (1001,1);
insert into employeeprojects values (1002,1);
insert into employeeprojects values (1001,2);
insert into employeeprojects values (1005,3);
insert into employeeprojects values (1006,3);
