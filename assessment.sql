create database region;
use region;
drop table city;
create table city(
city_id int primary key,
city_name varchar(30),
lat double,
 lone double,
 country_id int
);

create table customer(
customer_id int primary key,
customer_name varchar(20),
city_id int,
customer_address varchar (40)
);
drop table country;
create table country(
country_id int primary key,
country_name varchar(20),
country_code varchar(10)
);

insert into city values
(1,'berlin',34.5,44.5,1),
(2,'goa',35.6,45.6,2),
(3, 'france' , 37.7,55.5,3)
;
insert into customer values 
(1,'jew',3,'longstreet'),
(2,'sse',1,'pillstreet')
;
insert into country values
(1,'usa','deu'),
(2,'india','flw')
;

select city.city_name , country.country_name , customer.customer_name from city join
country on 
city.country_id=country.country_id
join customer 
on  city.city_id = customer.city_id


