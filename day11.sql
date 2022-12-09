create database NBA;
show databases;
drop database nba;

create database packwaystore;
use packwaystore;
create table itemlist(id int primary key not null, itemname varchar(255) not null, itencategory varchar(255) not null, 
itemcondition varchar(50) not null,itemquqauntity float not null);

alter table itemlist add column itemsupplydate  date  not null;
desc itemlist;
alter table itemlist add column dupplicateid int not null first;
desc itemlist;
alter table itemlist add column itemsubcategory varchar(50) not null after itencategory;
desc itemlist;
alter table itemlist modify column itencategory varchar(50) not null;
desc itemlist;
alter table itemlist change column itencategory itemcategory varchar(75) not null;
desc itemlist;
alter table itemlist drop column dupplicateid;
desc itemlist;
alter table itemlist rename to itemrecords;

drop table itemrecords;