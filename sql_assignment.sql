create database consultation_terapy;
create table docters (id int primary key not null,name varchar(20),specialization varchar(30),gender varchar(20),ph_no int ,date_joined date);
create table appointments(appointment_id int primary key not null,doctor_id int not null,patient_id int not null,app_date date,app_time time,duration int,reason varchar(40));
create table patient (patient_id int primary key not null,name varchar(20),age int,consultation_date date,city varchar(20),bill int);
create table reviews(remark varchar(50),rating int);

create table contact(id int primary key not null,email varchar(30),fname varchar(30),lname varchar(30),company varchar(30),Active_flag int,opt_out int);
insert into contact values (123,'a@a.com','kian','seth','ABC',1,1),(133,'b@b.com','neha','seth','ABC',1,0),(234,'c@c.com','puru','malik','CDF',0,0),(342,'d@d.com','sid','maan','TEG',1,0);
select * from contact where Active_flag = 1;
delete from contact where opt_out=1; -- to deactivate contacts who are opted out
delete from contact where company='ABC';
insert into contact values (658,'mili@gmail.com','mili',null,'DGH',1,1);
select distinct company from contact;
update contact set fname='niti' where fname='mili';

create table customer (cus_id int,c_name varchar(30),city varchar(30),grade int,salesman_id int);
insert into customer values(3002, 'nick rimando','new york',100,5001),
(3007,'brad davis','new york',200,5001),(3005,'graham zusi','california',200,5002),
(3008,'julian green','london',300,5002),(3004,'fabian jhonson','paris',300,5006),(3009,'geoff cameron','berlin',100,5003),
(3003,'jozy altidor','moscow',200,5007),(3001,'brad gujan','london',null ,5005);


create table salesman(salesman_id int,name varchar(20),city varchar(30),commission float);
insert into salesman values(5001,'james hoog','new york',0.15),(5002,'nail knite','paris',0.13),(5005,'pit alex','london',0.11),
(5006,'mc lyon','paris',0.14),(5007,'paul adam','rome',0.13),(5003,'louson hen','san jose',0.12);

select * from customer;
select *from salesman;

select customer.c_name,customer.city as c_city,customer.grade,salesman.salesman_id ,salesman.city as s_city from customer join salesman on customer.salesman_id=salesman.salesman_id where customer.grade<100 order by customer.cus_id ASC;

