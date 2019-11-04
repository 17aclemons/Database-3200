/* 7  
select concat(firstname, " " , lastname) as FullName from customers where state in ('fl', 'tx'); 
*/

/* 8 
select * from orders where shipdate is null; 
*/

/* 9 
select count(distinct state) from customers; 
*/

/* 10 
select * from books where pubid = 4 order by Category; 
*/

/* 11 
create table Student(StudentID int auto_increment primary key, FirstName varchar(255), LastName varchar(255), Major varchar(255),
AdvisorID int)
*/
/*12
create table Advisor(AdvisorID int primary key, FullName varchar(255) not null ); 
*/

/*13 
alter table Student add constraint c_t_fk foreign key(advisorID) references Advisor (advisorID); 
*/

/* 14
insert Advisor values (100, 'Mary Hanes'); 
insert Advisor values (101, 'James Wesley'); 
 */

/* 15 
update Student set Major = 'Music' where firstName = 'JUlia' and lastname = 'james' 
*/
/* 16
delete from Student where firstname = 'Mark'; 
*/

/* 17 
alter table Student change firstname firstname varchar(255) not null;
alter table Student change  lastname lastname varchar(255) not null; 
*/