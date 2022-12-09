use schoolmanagementsystem;
select * from studentpor;

select school,sex,age from studentpor where famsize = 'GT3' and guardian = 'father';
select school,sex,age from studentpor where famsize = 'GT3' or guardian = 'father';
select school,sex,age from studentpor where (famsize = 'GT3' and guardian = 'father') or (G1>=15);
select * from studentpor where Fjob like 't%';
select * from studentpor where Fjob like '%e';
select * from studentpor where Fjob like '_e%';
select * from studentpor where Fjob like '________%';
select * from studentpor where Mjob in ('health','at_home','teacher');
select* from studentpor where Mjob != 'other';
select * from studentpor where guardian is not null;
select * from studentpor where guardian is null;
select school,sex,G1 from studentpor where G1 between 8 and 15;
select distinct age from studentpor order by age;
create table age_15_16 select * from studentpor where (age =15 or age = 16);
create table age_17_18 select * from studentpor where age =17 or age = 18;
create table age_19_20 select * from studentpor where age =19 or age = 20;
create table age_21_22 select * from studentpor where age =21 or age = 22;


alter table age_15_16 add column ID int not null auto_increment primary key first;
alter table age_17_18 add column ID int not null auto_increment primary key first;
alter table age_19_20 add column ID int not null auto_increment primary key first;
alter table age_21_22 add column ID int not null auto_increment primary key first;
select * from age_15_16;
select age_19_20.school,age_19_20.sex,age_19_20.famsize,age_21_22.G1,age_21_22.G2 from age_19_20 inner join
age_21_22 on age_19_20.ID = age_21_22.ID;


select age_19_20.school,age_19_20.sex,age_19_20.famsize,age_21_22.G1,age_21_22.G2 from age_19_20 left join
age_21_22 on age_19_20.ID = age_21_22.ID;

select age_19_20.school,age_19_20.sex,age_19_20.famsize,age_21_22.G1,age_21_22.G2 from age_19_20 right join
age_21_22 on age_19_20.ID = age_21_22.ID;

select school,sex from age_19_20 cross join age_21_22;
