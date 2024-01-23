create database db_JQCurd
use db_JQCurd
create table tblreg
(
id int primary key identity,
name varchar(50),
age int,
address varchar(50)
)

select * from tblreg

create procedure sp_insert
@name varchar(50),
@age int,
@address varchar(50)
as
begin
insert into tblreg(name,age,address)values(@name,@age,@address)
end