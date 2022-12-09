#sum, avg, max, min, count, first ,last
use schoolmanagementsystem;
select * from studentpor;
select sum(G1) as result from studentpor;
select famsize, sum(G1) as rusult from studentpor group by famsize;
select max(G1) - min(G1) as difference from studentpor;
select age, max(G2) as result from studentpor group by age;
select age, min(G2) as result from studentpor group by age;
select count(age) from studentpor;
select Mjob, count(Mjob) from studentpor group by Mjob;
select Mjob, avg(traveltime) from studentpor group by Mjob;
select * from studentpor limit 1;
select * from studentpor order by age limit 1;
