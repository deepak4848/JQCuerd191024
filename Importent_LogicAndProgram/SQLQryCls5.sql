create database dbcurd181223
use dbcurd181223
create table tblemployee
(
id int primary key identity,
name varchar(50),
age int,
contactno bigint,
address varchar(100)
)

select * from tblemployee