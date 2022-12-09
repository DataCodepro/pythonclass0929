create database schoolmanagementsystem;
use schoolmanagementsystem;
select * from studentpor where G1 < 10;
select distinct Mjob from studentpor;
select distinct Mjob,famsize from studentpor;
select school, sex, age from studentpor order by age;
select school, sex, age from studentpor order by age desc;
select school,sex,age from studentpor group by age;


select school,sex,age, if(G1 >= 15,'True','False') from studentpor;

select school,Mjob, Fjob, if(famsize ='GT3','Yes','No') as result from studentpor;
select sex,age , ifnull(famsize,Mjob) as result from studentpor;
select sex,school ,nullif(G1,G2) as result from studentpor;
select * from studentpor;
select distinct age  from studentpor order by age;
select school,sex,age,
	case age
		when 15 then 'Fifteen'
        when 16 then 'sixteen'
        when 17 then 'seventeen'
        when 18 then 'Eighteen'
        when 19 then 'Nineteen'
        when 20 then 'Twenty'
        when 21 then 'Twenty-one'
        else 'Twenty-Two'
	end as STUDENTAGE from studentpor;





