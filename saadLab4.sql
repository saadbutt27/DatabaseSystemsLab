create database constraintsLab4;
use constraintsLab4;
create table customer (customer_id int not null unique, customer_name char(11), customer_email char(15) not null);

describe customer;
select * from customer;

insert into customer (customer_id, customer_name, customer_email) values
(01,"saad","s123@email.com"),(02,"usman","u123@email.com");

alter table customer
add constraint primary key (customer_id);

alter table customer add customer_address char(20) not null;
alter table customer add customer_contact char(20);
alter table customer modify customer_contact char(40) unique;

alter table customer
add check (customer_id >= 0);
insert into customer values
(-1,"esha","e123@email.com","abc","0123"),(03,"meera","m123@email.com","def","4567");

create table persons (id int not null, name varchar(255) not null, city varchar(255) default 'jacksonville', primary key(id));
insert into persons values
(1,"esha","khan","abc"),(2,"meera","ali@email.com","");
describe persons;
select * from persons;
alter table persons
add constraint primary key (city);
alter table persons auto_increment = 100;
insert into persons (id,name,city) values(1,"saad","khi"),(2,"usman","isl");

create table orders (order_no int not null, personID int, primary key (order_no), foreign key (personID) references persons(id));
