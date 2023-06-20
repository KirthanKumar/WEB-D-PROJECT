create database WEB_D_project;
use WEB_D_project;
create table t(//checking purpose table 
    variable int
);
truncate TABLE t;
insert into t values(1);
desc login;
create table login(
    username varchar(20),
    email varchar(40),
    password varchar(20)
);
insert into login(username, email, password) values('sagar','sagar.cs21@bmsce.ac.in','sagar123');
select * from t;
select * from login;
SELECT * FROM login where username = "sagar";