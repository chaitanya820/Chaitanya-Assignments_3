create database Test
use Test
create table subjects
(
subjectId int,
subtitle varchar(20),
);
select * from subjects

create table Book
(
bookId int,
title varchar(20),
price int,
volume int,
author varchar(20),
publication_date DateTime,
subjectId int,
);
select * from Book
--Q1. Inserting 5 subjects in subject table
insert into subjects( subjectId, subtitle)
values
(1,'English'),(2,'Maths'),(3,'Science'),
(4,'History'),(5,'Space');

--Q2. 
insert into Book (bookId,title,price,volume,author,publication_date,subjectId)
values
(1,'aa',100,1,'a','1990-07-12',1),
(2,'bb',700,2,'b','2000-08-12',2),
(3,'cc',600,3,'c','2010-07-12',3),
(4,'dd',400,1,'d','1970-03-12',4),
(5,'ee',200,3,'e','1950-05-12',5),
(6,'ff',600,1,'f','1900-02-12',2),
(7,'gg',300,4,'g','1995-01-12',1),
(8,'hh',800,6,'h','1998-12-4',4),
(9,'ii',900,1,'i','1940-06-12',2),
(10,'jj',200,3,'j','1955-08-12',4),
(11,'kk',278,2,'k','1977-06-12',5),
(12,'ll',350,1,'l','1976-09-12',1),
(13,'mm',470,5,'m','1932-11-12',2),
(14,'nn',280,1,'n','1965-4-12',5),
(15,'oo',190,2,'o','1954-6-12',4);
--Q3
select b.title,s.subtitle  from Book b inner join subjects s on b.subjectId=s.subjectId

--Q4
select title,publication_date from book where publication_date in('1976-09-12','2010-07-12');

--Q5
select author,count(bookId) as bookcount from book

--Q6
select subjects, count(*) AS number_of_books
from book
group by subjects
order by number_of_books DESC;


--Q7
select count(bookId) as bookcount from book
--Q8
UPDATE Book
SET price = 20, volume = 150
WHERE bookId = 123;
--Q9
update book
set price = price * 1.1
WHERE subjects = 'English';
--Q10
delete FROM Book WHERE bookId = 123;

--Q11
select * from book
where price > 500 AND subjects = 'Maths';

--Q12
select title, subjects, author, publication_date
from book
order by subjects ASC;
--Q13
select title, price
from book
where price = (select min(price) from book);
--Q14
select title, price
from book
where price = (select min(price) from book);
--Q15
select count(*) AS num_books_maths
from book b
JOIN booksubjects bs ON b.book_id = bs.book_id
JOIN subjects s ON bs.subject_id = s.subject_id
where s.name = 'Maths';






