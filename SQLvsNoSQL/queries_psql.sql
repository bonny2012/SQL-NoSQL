--sql query
--query 1
select c_name, c_address, c_phone
from customer
where c_acctbal < 10000
     and c_mktsegment = 'AUTOMOBILE'; 

select c_name, c_address, c_phone
from customer
where c_acctbal < 10000
     and c_mktsegment = 'AUTOMOBILE'; 

select c_name, c_address, c_phone
from customer
where c_acctbal < 10000
     and c_mktsegment = 'AUTOMOBILE'; 


select c_name, c_address, c_phone
from customer
where c_acctbal < 10000
     and c_mktsegment = 'AUTOMOBILE'; 


select c_name, c_address, c_phone
from customer
where c_acctbal < 10000
     and c_mktsegment = 'AUTOMOBILE';

\o

EXPLAIN ANALYSE
select c_name, c_address, c_phone
from customer
where c_acctbal < 10000
     and c_mktsegment = 'AUTOMOBILE'; 


\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on





select c_name, c_address, c_phone
from customer
where c_acctbal < 1000
     and c_mktsegment = 'AUTOMOBILE'; 

select c_name, c_address, c_phone
from customer
where c_acctbal < 1000
     and c_mktsegment = 'AUTOMOBILE'; 

select c_name, c_address, c_phone
from customer
where c_acctbal < 1000
     and c_mktsegment = 'AUTOMOBILE'; 

select c_name, c_address, c_phone
from customer
where c_acctbal < 1000
     and c_mktsegment = 'AUTOMOBILE'; 

select c_name, c_address, c_phone
from customer
where c_acctbal < 1000
     and c_mktsegment = 'AUTOMOBILE'; 
    
\o

EXPLAIN ANALYSE
select c_name, c_address, c_phone
from customer
where c_acctbal < 1000
     and c_mktsegment = 'AUTOMOBILE';    



\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on

select c_name, c_address, c_phone
from customer
where c_acctbal < -950
     and c_mktsegment = 'AUTOMOBILE';  

select c_name, c_address, c_phone
from customer
where c_acctbal < -950
     and c_mktsegment = 'AUTOMOBILE';  

select c_name, c_address, c_phone
from customer
where c_acctbal < -950
     and c_mktsegment = 'AUTOMOBILE';  
select c_name, c_address, c_phone
from customer
where c_acctbal < -950
     and c_mktsegment = 'AUTOMOBILE';  

select c_name, c_address, c_phone
from customer
where c_acctbal < -950
     and c_mktsegment = 'AUTOMOBILE';  


\o

EXPLAIN ANALYSE
select c_name, c_address, c_phone
from customer
where c_acctbal < -950
     and c_mktsegment = 'AUTOMOBILE';      


--query 2 
\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on


select c_name, count(*)
from customer
where c_acctbal < 10000
     and c_mktsegment = 'AUTOMOBILE'
group by c_custkey, c_name;



select c_name, count(*)
from customer
where c_acctbal < 10000
     and c_mktsegment = 'AUTOMOBILE'
group by c_custkey, c_name;



select c_name, count(*)
from customer
where c_acctbal < 10000
     and c_mktsegment = 'AUTOMOBILE'
group by c_custkey, c_name;

select c_name, count(*)
from customer
where c_acctbal < 10000
     and c_mktsegment = 'AUTOMOBILE'
group by c_custkey, c_name;

select c_name, count(*)
from customer
where c_acctbal < 10000
     and c_mktsegment = 'AUTOMOBILE'
group by c_custkey, c_name;

\o

EXPLAIN ANALYSE
select c_name, count(*)
from customer
where c_acctbal < 10000
     and c_mktsegment = 'AUTOMOBILE'
group by c_custkey, c_name;


\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on




select c_name, count(*)
from customer
where c_acctbal < 1000
     and c_mktsegment = 'AUTOMOBILE'
group by c_custkey, c_name;



select c_name, count(*)
from customer
where c_acctbal < 1000
     and c_mktsegment = 'AUTOMOBILE'
group by c_custkey, c_name;



select c_name, count(*)
from customer
where c_acctbal < 1000
     and c_mktsegment = 'AUTOMOBILE'
group by c_custkey, c_name;



select c_name, count(*)
from customer
where c_acctbal < 1000
     and c_mktsegment = 'AUTOMOBILE'
group by c_custkey, c_name;


select c_name, count(*)
from customer
where c_acctbal < 1000
     and c_mktsegment = 'AUTOMOBILE'
group by c_custkey, c_name;

\o


EXPLAIN ANALYSE
select c_name, count(*)
from customer
where c_acctbal < 1000
     and c_mktsegment = 'AUTOMOBILE'
group by c_custkey, c_name;

\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on






select c_name, c_address, c_phone
from customer
where c_acctbal < -950
     and c_mktsegment = 'AUTOMOBILE'
group by c_custkey, c_name;


select c_name, c_address, c_phone
from customer
where c_acctbal < -950
     and c_mktsegment = 'AUTOMOBILE'
group by c_custkey, c_name;


select c_name, c_address, c_phone
from customer
where c_acctbal < -950
     and c_mktsegment = 'AUTOMOBILE'
group by c_custkey, c_name;



select c_name, c_address, c_phone
from customer
where c_acctbal < -950
     and c_mktsegment = 'AUTOMOBILE'
group by c_custkey, c_name;



select c_name, c_address, c_phone
from customer
where c_acctbal < -950
     and c_mktsegment = 'AUTOMOBILE'
group by c_custkey, c_name;



\o




EXPLAIN ANALYSE
select c_name, c_address, c_phone
from customer
where c_acctbal < -950
     and c_mktsegment = 'AUTOMOBILE'
group by c_custkey, c_name;



\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on


--query 3

select  c_name, o_clerk
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 1000000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10;     


select  c_name, o_clerk
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 1000000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10;     


select  c_name, o_clerk
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 1000000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10;     


select  c_name, o_clerk
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 1000000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10;   



select  c_name, o_clerk
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 1000000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10;  

\o


EXPLAIN ANALYSE
select  c_name, o_clerk
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 1000000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10;         

\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on




select  c_name, o_clerk
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 100000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10;   


select  c_name, o_clerk
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 100000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10;   


select  c_name, o_clerk
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 100000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10;   


select  c_name, o_clerk
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 100000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10;   



select  c_name, o_clerk
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 100000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10;   
\o

EXPLAIN ANALYSE
select  c_name, o_clerk
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 100000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10;         


\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on


select  c_name, o_clerk
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 5000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10;   

select  c_name, o_clerk
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 5000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10;   



select  c_name, o_clerk
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 5000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10;   


select  c_name, o_clerk
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 5000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10;   



select  c_name, o_clerk
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 5000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10;   

\o

EXPLAIN ANALYSE
select  c_name, o_clerk
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 5000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10;         


\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on


--query 4 


select o_clerk, count(distinct c_name)
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 1000000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10
group by o_clerk;


select o_clerk, count(distinct c_name)
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 1000000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10
group by o_clerk;


select o_clerk, count(distinct c_name)
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 1000000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10
group by o_clerk;


select o_clerk, count(distinct c_name)
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 1000000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10
group by o_clerk;


select o_clerk, count(distinct c_name)
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 1000000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10
group by o_clerk;

\o

EXPLAIN ANALYSE
select o_clerk, count(distinct c_name)
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 1000000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10
group by o_clerk;


\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on    



select o_clerk, count(distinct c_name)
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 100000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10
group by o_clerk;


select o_clerk, count(distinct c_name)
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 100000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10
group by o_clerk;


select o_clerk, count(distinct c_name)
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 100000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10
group by o_clerk;


select o_clerk, count(distinct c_name)
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 100000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10
group by o_clerk;


select o_clerk, count(distinct c_name)
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 100000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10
group by o_clerk;

\o 

EXPLAIN ANALYSE
select o_clerk, count(distinct c_name)
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 100000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10
group by o_clerk;

\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on    



select o_clerk, count(distinct c_name)
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 5000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10   
group by o_clerk;


select o_clerk, count(distinct c_name)
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 5000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10   
group by o_clerk;



select o_clerk, count(distinct c_name)
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 5000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10   
group by o_clerk;


select o_clerk, count(distinct c_name)
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 5000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10   
group by o_clerk;


select o_clerk, count(distinct c_name)
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 5000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10   
group by o_clerk;


\o



EXPLAIN ANALYSE
select o_clerk, count(distinct c_name)
from customer, orders
where o_custkey = c_custkey and
      o_totalprice < 5000 and o_orderpriority = '2-HIGH'
      and c_acctbal > 500 and c_nationkey = 10   
group by o_clerk;


\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on   



--query 5

select o_orderpriority, count(*) as order_count
from orders
where o_orderdate >= date '1993-07-01'
and o_orderdate < date '1993-07-01' + interval '36' month
and exists (select *
            from lineitem
            where l_orderkey = o_orderkey
            and l_commitdate < l_receiptdate)
group by o_orderpriority
order by o_orderpriority; 


select o_orderpriority, count(*) as order_count
from orders
where o_orderdate >= date '1993-07-01'
and o_orderdate < date '1993-07-01' + interval '36' month
and exists (select *
            from lineitem
            where l_orderkey = o_orderkey
            and l_commitdate < l_receiptdate)
group by o_orderpriority
order by o_orderpriority; 


select o_orderpriority, count(*) as order_count
from orders
where o_orderdate >= date '1993-07-01'
and o_orderdate < date '1993-07-01' + interval '36' month
and exists (select *
            from lineitem
            where l_orderkey = o_orderkey
            and l_commitdate < l_receiptdate)
group by o_orderpriority
order by o_orderpriority; 


select o_orderpriority, count(*) as order_count
from orders
where o_orderdate >= date '1993-07-01'
and o_orderdate < date '1993-07-01' + interval '36' month
and exists (select *
            from lineitem
            where l_orderkey = o_orderkey
            and l_commitdate < l_receiptdate)
group by o_orderpriority
order by o_orderpriority; 


select o_orderpriority, count(*) as order_count
from orders
where o_orderdate >= date '1993-07-01'
and o_orderdate < date '1993-07-01' + interval '36' month
and exists (select *
            from lineitem
            where l_orderkey = o_orderkey
            and l_commitdate < l_receiptdate)
group by o_orderpriority
order by o_orderpriority; 


\o 

EXPLAIN ANALYSE
select o_orderpriority, count(*) as order_count
from orders
where o_orderdate >= date '1993-07-01'
and o_orderdate < date '1993-07-01' + interval '36' month
and exists (select *
            from lineitem
            where l_orderkey = o_orderkey
            and l_commitdate < l_receiptdate)
group by o_orderpriority
order by o_orderpriority;  


\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on  ;  



select o_orderpriority, count(*) as order_count
from orders
where o_orderdate >= date '1993-07-01'
and o_orderdate < date '1993-07-01' + interval '3' month
and exists (select *
            from lineitem
            where l_orderkey = o_orderkey
            and l_commitdate < l_receiptdate)
group by o_orderpriority
order by o_orderpriority;


select o_orderpriority, count(*) as order_count
from orders
where o_orderdate >= date '1993-07-01'
and o_orderdate < date '1993-07-01' + interval '3' month
and exists (select *
            from lineitem
            where l_orderkey = o_orderkey
            and l_commitdate < l_receiptdate)
group by o_orderpriority
order by o_orderpriority;


select o_orderpriority, count(*) as order_count
from orders
where o_orderdate >= date '1993-07-01'
and o_orderdate < date '1993-07-01' + interval '3' month
and exists (select *
            from lineitem
            where l_orderkey = o_orderkey
            and l_commitdate < l_receiptdate)
group by o_orderpriority
order by o_orderpriority;


select o_orderpriority, count(*) as order_count
from orders
where o_orderdate >= date '1993-07-01'
and o_orderdate < date '1993-07-01' + interval '3' month
and exists (select *
            from lineitem
            where l_orderkey = o_orderkey
            and l_commitdate < l_receiptdate)
group by o_orderpriority
order by o_orderpriority;

select o_orderpriority, count(*) as order_count
from orders
where o_orderdate >= date '1993-07-01'
and o_orderdate < date '1993-07-01' + interval '3' month
and exists (select *
            from lineitem
            where l_orderkey = o_orderkey
            and l_commitdate < l_receiptdate)
group by o_orderpriority
order by o_orderpriority;


\o 


EXPLAIN ANALYSE
select o_orderpriority, count(*) as order_count
from orders
where o_orderdate >= date '1993-07-01'
and o_orderdate < date '1993-07-01' + interval '3' month
and exists (select *
            from lineitem
            where l_orderkey = o_orderkey
            and l_commitdate < l_receiptdate)
group by o_orderpriority
order by o_orderpriority;



\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on  ;  



select o_orderpriority, count(*) as order_count
from orders
where o_orderdate >= date '1993-07-01'
and o_orderdate < date '1993-07-01' + interval '1' month
and exists (select *
            from lineitem
            where l_orderkey = o_orderkey
            and l_commitdate < l_receiptdate)
group by o_orderpriority
order by o_orderpriority;


select o_orderpriority, count(*) as order_count
from orders
where o_orderdate >= date '1993-07-01'
and o_orderdate < date '1993-07-01' + interval '1' month
and exists (select *
            from lineitem
            where l_orderkey = o_orderkey
            and l_commitdate < l_receiptdate)
group by o_orderpriority
order by o_orderpriority;


select o_orderpriority, count(*) as order_count
from orders
where o_orderdate >= date '1993-07-01'
and o_orderdate < date '1993-07-01' + interval '1' month
and exists (select *
            from lineitem
            where l_orderkey = o_orderkey
            and l_commitdate < l_receiptdate)
group by o_orderpriority
order by o_orderpriority;


select o_orderpriority, count(*) as order_count
from orders
where o_orderdate >= date '1993-07-01'
and o_orderdate < date '1993-07-01' + interval '1' month
and exists (select *
            from lineitem
            where l_orderkey = o_orderkey
            and l_commitdate < l_receiptdate)
group by o_orderpriority
order by o_orderpriority;


select o_orderpriority, count(*) as order_count
from orders
where o_orderdate >= date '1993-07-01'
and o_orderdate < date '1993-07-01' + interval '1' month
and exists (select *
            from lineitem
            where l_orderkey = o_orderkey
            and l_commitdate < l_receiptdate)
group by o_orderpriority
order by o_orderpriority;


\o 



EXPLAIN ANALYSE
select o_orderpriority, count(*) as order_count
from orders
where o_orderdate >= date '1993-07-01'
and o_orderdate < date '1993-07-01' + interval '1' month
and exists (select *
            from lineitem
            where l_orderkey = o_orderkey
            and l_commitdate < l_receiptdate)
group by o_orderpriority
order by o_orderpriority;     



\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on    





--query 6


select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, 
       o_orderdate, o_shippriority
from customer, orders, lineitem
where c_mktsegment = 'AUTOMOBILE' and c_custkey = o_custkey
      and l_orderkey = o_orderkey and o_orderdate < date '1995-03-15' 
      and l_shipdate > date '1995-03-15'
group by l_orderkey, o_orderdate, o_shippriority
order by revenue desc, o_orderdate;   


select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, 
       o_orderdate, o_shippriority
from customer, orders, lineitem
where c_mktsegment = 'AUTOMOBILE' and c_custkey = o_custkey
      and l_orderkey = o_orderkey and o_orderdate < date '1995-03-15' 
      and l_shipdate > date '1995-03-15'
group by l_orderkey, o_orderdate, o_shippriority
order by revenue desc, o_orderdate;   


select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, 
       o_orderdate, o_shippriority
from customer, orders, lineitem
where c_mktsegment = 'AUTOMOBILE' and c_custkey = o_custkey
      and l_orderkey = o_orderkey and o_orderdate < date '1995-03-15' 
      and l_shipdate > date '1995-03-15'
group by l_orderkey, o_orderdate, o_shippriority
order by revenue desc, o_orderdate;   


select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, 
       o_orderdate, o_shippriority
from customer, orders, lineitem
where c_mktsegment = 'AUTOMOBILE' and c_custkey = o_custkey
      and l_orderkey = o_orderkey and o_orderdate < date '1995-03-15' 
      and l_shipdate > date '1995-03-15'
group by l_orderkey, o_orderdate, o_shippriority
order by revenue desc, o_orderdate;   


select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, 
       o_orderdate, o_shippriority
from customer, orders, lineitem
where c_mktsegment = 'AUTOMOBILE' and c_custkey = o_custkey
      and l_orderkey = o_orderkey and o_orderdate < date '1995-03-15' 
      and l_shipdate > date '1995-03-15'
group by l_orderkey, o_orderdate, o_shippriority
order by revenue desc, o_orderdate;   

\o

EXPLAIN ANALYSE
select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, 
       o_orderdate, o_shippriority
from customer, orders, lineitem
where c_mktsegment = 'AUTOMOBILE' and c_custkey = o_custkey
      and l_orderkey = o_orderkey and o_orderdate < date '1995-03-15' 
      and l_shipdate > date '1995-03-15'
group by l_orderkey, o_orderdate, o_shippriority
order by revenue desc, o_orderdate;           




\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on  ;  



select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, 
       o_orderdate, o_shippriority
from customer, orders, lineitem
where c_mktsegment = 'AUTOMOBILE' and c_custkey = o_custkey
      and l_orderkey = o_orderkey and o_orderdate < date '1995-03-15' 
      and l_shipdate > date '1995-03-15' and o_totalprice < 100000
group by l_orderkey, o_orderdate, o_shippriority
order by revenue desc, o_orderdate;         



select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, 
       o_orderdate, o_shippriority
from customer, orders, lineitem
where c_mktsegment = 'AUTOMOBILE' and c_custkey = o_custkey
      and l_orderkey = o_orderkey and o_orderdate < date '1995-03-15' 
      and l_shipdate > date '1995-03-15' and o_totalprice < 100000
group by l_orderkey, o_orderdate, o_shippriority
order by revenue desc, o_orderdate;         


select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, 
       o_orderdate, o_shippriority
from customer, orders, lineitem
where c_mktsegment = 'AUTOMOBILE' and c_custkey = o_custkey
      and l_orderkey = o_orderkey and o_orderdate < date '1995-03-15' 
      and l_shipdate > date '1995-03-15' and o_totalprice < 100000
group by l_orderkey, o_orderdate, o_shippriority
order by revenue desc, o_orderdate;         



select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, 
       o_orderdate, o_shippriority
from customer, orders, lineitem
where c_mktsegment = 'AUTOMOBILE' and c_custkey = o_custkey
      and l_orderkey = o_orderkey and o_orderdate < date '1995-03-15' 
      and l_shipdate > date '1995-03-15' and o_totalprice < 100000
group by l_orderkey, o_orderdate, o_shippriority
order by revenue desc, o_orderdate;         



select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, 
       o_orderdate, o_shippriority
from customer, orders, lineitem
where c_mktsegment = 'AUTOMOBILE' and c_custkey = o_custkey
      and l_orderkey = o_orderkey and o_orderdate < date '1995-03-15' 
      and l_shipdate > date '1995-03-15' and o_totalprice < 100000
group by l_orderkey, o_orderdate, o_shippriority
order by revenue desc, o_orderdate;         


select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, 
       o_orderdate, o_shippriority
from customer, orders, lineitem
where c_mktsegment = 'AUTOMOBILE' and c_custkey = o_custkey
      and l_orderkey = o_orderkey and o_orderdate < date '1995-03-15' 
      and l_shipdate > date '1995-03-15' and o_totalprice < 100000
group by l_orderkey, o_orderdate, o_shippriority
order by revenue desc, o_orderdate;         


\o

EXPLAIN ANALYSE
select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, 
       o_orderdate, o_shippriority
from customer, orders, lineitem
where c_mktsegment = 'AUTOMOBILE' and c_custkey = o_custkey
      and l_orderkey = o_orderkey and o_orderdate < date '1995-03-15' 
      and l_shipdate > date '1995-03-15' and o_totalprice < 100000
group by l_orderkey, o_orderdate, o_shippriority
order by revenue desc, o_orderdate;  




\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on  



select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, 
       o_orderdate, o_shippriority
from customer, orders, lineitem
where c_mktsegment = 'AUTOMOBILE' and c_custkey = o_custkey
      and l_orderkey = o_orderkey and o_orderdate < date '1995-03-15' 
      and l_shipdate > date '1995-03-15' and o_totalprice < 10000
group by l_orderkey, o_orderdate, o_shippriority
order by revenue desc, o_orderdate;  


select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, 
       o_orderdate, o_shippriority
from customer, orders, lineitem
where c_mktsegment = 'AUTOMOBILE' and c_custkey = o_custkey
      and l_orderkey = o_orderkey and o_orderdate < date '1995-03-15' 
      and l_shipdate > date '1995-03-15' and o_totalprice < 10000
group by l_orderkey, o_orderdate, o_shippriority
order by revenue desc, o_orderdate;  


select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, 
       o_orderdate, o_shippriority
from customer, orders, lineitem
where c_mktsegment = 'AUTOMOBILE' and c_custkey = o_custkey
      and l_orderkey = o_orderkey and o_orderdate < date '1995-03-15' 
      and l_shipdate > date '1995-03-15' and o_totalprice < 10000
group by l_orderkey, o_orderdate, o_shippriority
order by revenue desc, o_orderdate;  


select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, 
       o_orderdate, o_shippriority
from customer, orders, lineitem
where c_mktsegment = 'AUTOMOBILE' and c_custkey = o_custkey
      and l_orderkey = o_orderkey and o_orderdate < date '1995-03-15' 
      and l_shipdate > date '1995-03-15' and o_totalprice < 10000
group by l_orderkey, o_orderdate, o_shippriority
order by revenue desc, o_orderdate;  


select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, 
       o_orderdate, o_shippriority
from customer, orders, lineitem
where c_mktsegment = 'AUTOMOBILE' and c_custkey = o_custkey
      and l_orderkey = o_orderkey and o_orderdate < date '1995-03-15' 
      and l_shipdate > date '1995-03-15' and o_totalprice < 10000
group by l_orderkey, o_orderdate, o_shippriority
order by revenue desc, o_orderdate;  

\o


EXPLAIN ANALYSE
select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, 
       o_orderdate, o_shippriority
from customer, orders, lineitem
where c_mktsegment = 'AUTOMOBILE' and c_custkey = o_custkey
      and l_orderkey = o_orderkey and o_orderdate < date '1995-03-15' 
      and l_shipdate > date '1995-03-15' and o_totalprice < 10000
group by l_orderkey, o_orderdate, o_shippriority
order by revenue desc, o_orderdate;         


\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on  ; 


--query 7
select l_returnflag, l_linestatus, sum(l_quantity) as sum_qty,
       sum(l_extendedprice) as sum_base_price,
       sum(l_extendedprice*(1-l_discount)) as sum_disc_price,
       sum(l_extendedprice*(1-l_discount)*(1+l_tax)) as sum_charge,
       avg(l_quantity) as avg_qty, avg(l_extendedprice) as avg_price,
       avg(l_discount) as avg_disc, count(*) as count_order
from lineitem
where l_shipdate <= date '1998-12-01' - interval '90' day 
     and l_tax >0.01 and l_discount < .5
group by l_returnflag, l_linestatus
order by l_returnflag, l_linestatus;   

select l_returnflag, l_linestatus, sum(l_quantity) as sum_qty,
       sum(l_extendedprice) as sum_base_price,
       sum(l_extendedprice*(1-l_discount)) as sum_disc_price,
       sum(l_extendedprice*(1-l_discount)*(1+l_tax)) as sum_charge,
       avg(l_quantity) as avg_qty, avg(l_extendedprice) as avg_price,
       avg(l_discount) as avg_disc, count(*) as count_order
from lineitem
where l_shipdate <= date '1998-12-01' - interval '90' day 
     and l_tax >0.01 and l_discount < .5
group by l_returnflag, l_linestatus
order by l_returnflag, l_linestatus;   


select l_returnflag, l_linestatus, sum(l_quantity) as sum_qty,
       sum(l_extendedprice) as sum_base_price,
       sum(l_extendedprice*(1-l_discount)) as sum_disc_price,
       sum(l_extendedprice*(1-l_discount)*(1+l_tax)) as sum_charge,
       avg(l_quantity) as avg_qty, avg(l_extendedprice) as avg_price,
       avg(l_discount) as avg_disc, count(*) as count_order
from lineitem
where l_shipdate <= date '1998-12-01' - interval '90' day 
     and l_tax >0.01 and l_discount < .5
group by l_returnflag, l_linestatus
order by l_returnflag, l_linestatus;   


select l_returnflag, l_linestatus, sum(l_quantity) as sum_qty,
       sum(l_extendedprice) as sum_base_price,
       sum(l_extendedprice*(1-l_discount)) as sum_disc_price,
       sum(l_extendedprice*(1-l_discount)*(1+l_tax)) as sum_charge,
       avg(l_quantity) as avg_qty, avg(l_extendedprice) as avg_price,
       avg(l_discount) as avg_disc, count(*) as count_order
from lineitem
where l_shipdate <= date '1998-12-01' - interval '90' day 
     and l_tax >0.01 and l_discount < .5
group by l_returnflag, l_linestatus
order by l_returnflag, l_linestatus;   

select l_returnflag, l_linestatus, sum(l_quantity) as sum_qty,
       sum(l_extendedprice) as sum_base_price,
       sum(l_extendedprice*(1-l_discount)) as sum_disc_price,
       sum(l_extendedprice*(1-l_discount)*(1+l_tax)) as sum_charge,
       avg(l_quantity) as avg_qty, avg(l_extendedprice) as avg_price,
       avg(l_discount) as avg_disc, count(*) as count_order
from lineitem
where l_shipdate <= date '1998-12-01' - interval '90' day 
     and l_tax >0.01 and l_discount < .5
group by l_returnflag, l_linestatus
order by l_returnflag, l_linestatus;   

\o

EXPLAIN ANALYSE
select l_returnflag, l_linestatus, sum(l_quantity) as sum_qty,
       sum(l_extendedprice) as sum_base_price,
       sum(l_extendedprice*(1-l_discount)) as sum_disc_price,
       sum(l_extendedprice*(1-l_discount)*(1+l_tax)) as sum_charge,
       avg(l_quantity) as avg_qty, avg(l_extendedprice) as avg_price,
       avg(l_discount) as avg_disc, count(*) as count_order
from lineitem
where l_shipdate <= date '1998-12-01' - interval '90' day 
     and l_tax >0.01 and l_discount < .5
group by l_returnflag, l_linestatus
order by l_returnflag, l_linestatus;   


\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on   




select l_returnflag, l_linestatus, sum(l_quantity) as sum_qty,
       sum(l_extendedprice) as sum_base_price,
       sum(l_extendedprice*(1-l_discount)) as sum_disc_price,
       sum(l_extendedprice*(1-l_discount)*(1+l_tax)) as sum_charge,
       avg(l_quantity) as avg_qty, avg(l_extendedprice) as avg_price,
       avg(l_discount) as avg_disc, count(*) as count_order
from lineitem
where l_shipdate <= date '1998-12-01' - interval '90' day 
     and l_tax >0.05 and l_discount < .5
group by l_returnflag, l_linestatus
order by l_returnflag, l_linestatus; 

select l_returnflag, l_linestatus, sum(l_quantity) as sum_qty,
       sum(l_extendedprice) as sum_base_price,
       sum(l_extendedprice*(1-l_discount)) as sum_disc_price,
       sum(l_extendedprice*(1-l_discount)*(1+l_tax)) as sum_charge,
       avg(l_quantity) as avg_qty, avg(l_extendedprice) as avg_price,
       avg(l_discount) as avg_disc, count(*) as count_order
from lineitem
where l_shipdate <= date '1998-12-01' - interval '90' day 
     and l_tax >0.05 and l_discount < .5
group by l_returnflag, l_linestatus
order by l_returnflag, l_linestatus; 

select l_returnflag, l_linestatus, sum(l_quantity) as sum_qty,
       sum(l_extendedprice) as sum_base_price,
       sum(l_extendedprice*(1-l_discount)) as sum_disc_price,
       sum(l_extendedprice*(1-l_discount)*(1+l_tax)) as sum_charge,
       avg(l_quantity) as avg_qty, avg(l_extendedprice) as avg_price,
       avg(l_discount) as avg_disc, count(*) as count_order
from lineitem
where l_shipdate <= date '1998-12-01' - interval '90' day 
     and l_tax >0.05 and l_discount < .5
group by l_returnflag, l_linestatus
order by l_returnflag, l_linestatus; 

select l_returnflag, l_linestatus, sum(l_quantity) as sum_qty,
       sum(l_extendedprice) as sum_base_price,
       sum(l_extendedprice*(1-l_discount)) as sum_disc_price,
       sum(l_extendedprice*(1-l_discount)*(1+l_tax)) as sum_charge,
       avg(l_quantity) as avg_qty, avg(l_extendedprice) as avg_price,
       avg(l_discount) as avg_disc, count(*) as count_order
from lineitem
where l_shipdate <= date '1998-12-01' - interval '90' day 
     and l_tax >0.05 and l_discount < .5
group by l_returnflag, l_linestatus
order by l_returnflag, l_linestatus; 

select l_returnflag, l_linestatus, sum(l_quantity) as sum_qty,
       sum(l_extendedprice) as sum_base_price,
       sum(l_extendedprice*(1-l_discount)) as sum_disc_price,
       sum(l_extendedprice*(1-l_discount)*(1+l_tax)) as sum_charge,
       avg(l_quantity) as avg_qty, avg(l_extendedprice) as avg_price,
       avg(l_discount) as avg_disc, count(*) as count_order
from lineitem
where l_shipdate <= date '1998-12-01' - interval '90' day 
     and l_tax >0.05 and l_discount < .5
group by l_returnflag, l_linestatus
order by l_returnflag, l_linestatus; 

\o


EXPLAIN ANALYSE
select l_returnflag, l_linestatus, sum(l_quantity) as sum_qty,
       sum(l_extendedprice) as sum_base_price,
       sum(l_extendedprice*(1-l_discount)) as sum_disc_price,
       sum(l_extendedprice*(1-l_discount)*(1+l_tax)) as sum_charge,
       avg(l_quantity) as avg_qty, avg(l_extendedprice) as avg_price,
       avg(l_discount) as avg_disc, count(*) as count_order
from lineitem
where l_shipdate <= date '1998-12-01' - interval '90' day 
     and l_tax >0.05 and l_discount < .5
group by l_returnflag, l_linestatus
order by l_returnflag, l_linestatus;     


\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on   


select l_returnflag, l_linestatus, sum(l_quantity) as sum_qty,
       sum(l_extendedprice) as sum_base_price,
       sum(l_extendedprice*(1-l_discount)) as sum_disc_price,
       sum(l_extendedprice*(1-l_discount)*(1+l_tax)) as sum_charge,
       avg(l_quantity) as avg_qty, avg(l_extendedprice) as avg_price,
       avg(l_discount) as avg_disc, count(*) as count_order
from lineitem
where l_shipdate <= date '1998-12-01' - interval '90' day 
     and l_tax >0.07 and l_discount < .01
group by l_returnflag, l_linestatus
order by l_returnflag, l_linestatus;   

select l_returnflag, l_linestatus, sum(l_quantity) as sum_qty,
       sum(l_extendedprice) as sum_base_price,
       sum(l_extendedprice*(1-l_discount)) as sum_disc_price,
       sum(l_extendedprice*(1-l_discount)*(1+l_tax)) as sum_charge,
       avg(l_quantity) as avg_qty, avg(l_extendedprice) as avg_price,
       avg(l_discount) as avg_disc, count(*) as count_order
from lineitem
where l_shipdate <= date '1998-12-01' - interval '90' day 
     and l_tax >0.07 and l_discount < .01
group by l_returnflag, l_linestatus
order by l_returnflag, l_linestatus;   


select l_returnflag, l_linestatus, sum(l_quantity) as sum_qty,
       sum(l_extendedprice) as sum_base_price,
       sum(l_extendedprice*(1-l_discount)) as sum_disc_price,
       sum(l_extendedprice*(1-l_discount)*(1+l_tax)) as sum_charge,
       avg(l_quantity) as avg_qty, avg(l_extendedprice) as avg_price,
       avg(l_discount) as avg_disc, count(*) as count_order
from lineitem
where l_shipdate <= date '1998-12-01' - interval '90' day 
     and l_tax >0.07 and l_discount < .01
group by l_returnflag, l_linestatus
order by l_returnflag, l_linestatus;   

select l_returnflag, l_linestatus, sum(l_quantity) as sum_qty,
       sum(l_extendedprice) as sum_base_price,
       sum(l_extendedprice*(1-l_discount)) as sum_disc_price,
       sum(l_extendedprice*(1-l_discount)*(1+l_tax)) as sum_charge,
       avg(l_quantity) as avg_qty, avg(l_extendedprice) as avg_price,
       avg(l_discount) as avg_disc, count(*) as count_order
from lineitem
where l_shipdate <= date '1998-12-01' - interval '90' day 
     and l_tax >0.07 and l_discount < .01
group by l_returnflag, l_linestatus
order by l_returnflag, l_linestatus;   

select l_returnflag, l_linestatus, sum(l_quantity) as sum_qty,
       sum(l_extendedprice) as sum_base_price,
       sum(l_extendedprice*(1-l_discount)) as sum_disc_price,
       sum(l_extendedprice*(1-l_discount)*(1+l_tax)) as sum_charge,
       avg(l_quantity) as avg_qty, avg(l_extendedprice) as avg_price,
       avg(l_discount) as avg_disc, count(*) as count_order
from lineitem
where l_shipdate <= date '1998-12-01' - interval '90' day 
     and l_tax >0.07 and l_discount < .01
group by l_returnflag, l_linestatus
order by l_returnflag, l_linestatus;   

\o

EXPLAIN ANALYSE
select l_returnflag, l_linestatus, sum(l_quantity) as sum_qty,
       sum(l_extendedprice) as sum_base_price,
       sum(l_extendedprice*(1-l_discount)) as sum_disc_price,
       sum(l_extendedprice*(1-l_discount)*(1+l_tax)) as sum_charge,
       avg(l_quantity) as avg_qty, avg(l_extendedprice) as avg_price,
       avg(l_discount) as avg_disc, count(*) as count_order
from lineitem
where l_shipdate <= date '1998-12-01' - interval '90' day 
     and l_tax >0.07 and l_discount < .01
group by l_returnflag, l_linestatus
order by l_returnflag, l_linestatus;  




\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on  





--query 8 

select l_shipmode,
sum(case
    when o_orderpriority ='1-URGENT' or o_orderpriority ='2-HIGH'
    then 1 else 0 end) as high_line_count,
sum(case
    when o_orderpriority <> '1-URGENT' and o_orderpriority <> '2-HIGH' 
    then 1 else 0 end) as low_line_count
from orders, lineitem
where o_orderkey = l_orderkey
      and l_shipmode in ('MAIL', 'SHIP')
      and l_commitdate < l_receiptdate
      and l_shipdate < l_commitdate
      and l_receiptdate >= date '1994-01-01'
      and l_receiptdate < date '1994-01-01' + interval '5' year
group by l_shipmode
order by l_shipmode;   

select l_shipmode,
sum(case
    when o_orderpriority ='1-URGENT' or o_orderpriority ='2-HIGH'
    then 1 else 0 end) as high_line_count,
sum(case
    when o_orderpriority <> '1-URGENT' and o_orderpriority <> '2-HIGH' 
    then 1 else 0 end) as low_line_count
from orders, lineitem
where o_orderkey = l_orderkey
      and l_shipmode in ('MAIL', 'SHIP')
      and l_commitdate < l_receiptdate
      and l_shipdate < l_commitdate
      and l_receiptdate >= date '1994-01-01'
      and l_receiptdate < date '1994-01-01' + interval '5' year
group by l_shipmode
order by l_shipmode;   


select l_shipmode,
sum(case
    when o_orderpriority ='1-URGENT' or o_orderpriority ='2-HIGH'
    then 1 else 0 end) as high_line_count,
sum(case
    when o_orderpriority <> '1-URGENT' and o_orderpriority <> '2-HIGH' 
    then 1 else 0 end) as low_line_count
from orders, lineitem
where o_orderkey = l_orderkey
      and l_shipmode in ('MAIL', 'SHIP')
      and l_commitdate < l_receiptdate
      and l_shipdate < l_commitdate
      and l_receiptdate >= date '1994-01-01'
      and l_receiptdate < date '1994-01-01' + interval '5' year
group by l_shipmode
order by l_shipmode;   


select l_shipmode,
sum(case
    when o_orderpriority ='1-URGENT' or o_orderpriority ='2-HIGH'
    then 1 else 0 end) as high_line_count,
sum(case
    when o_orderpriority <> '1-URGENT' and o_orderpriority <> '2-HIGH' 
    then 1 else 0 end) as low_line_count
from orders, lineitem
where o_orderkey = l_orderkey
      and l_shipmode in ('MAIL', 'SHIP')
      and l_commitdate < l_receiptdate
      and l_shipdate < l_commitdate
      and l_receiptdate >= date '1994-01-01'
      and l_receiptdate < date '1994-01-01' + interval '5' year
group by l_shipmode
order by l_shipmode;   

select l_shipmode,
sum(case
    when o_orderpriority ='1-URGENT' or o_orderpriority ='2-HIGH'
    then 1 else 0 end) as high_line_count,
sum(case
    when o_orderpriority <> '1-URGENT' and o_orderpriority <> '2-HIGH' 
    then 1 else 0 end) as low_line_count
from orders, lineitem
where o_orderkey = l_orderkey
      and l_shipmode in ('MAIL', 'SHIP')
      and l_commitdate < l_receiptdate
      and l_shipdate < l_commitdate
      and l_receiptdate >= date '1994-01-01'
      and l_receiptdate < date '1994-01-01' + interval '5' year
group by l_shipmode
order by l_shipmode;   

\o


EXPLAIN ANALYSE
select l_shipmode,
sum(case
    when o_orderpriority ='1-URGENT' or o_orderpriority ='2-HIGH'
    then 1 else 0 end) as high_line_count,
sum(case
    when o_orderpriority <> '1-URGENT' and o_orderpriority <> '2-HIGH' 
    then 1 else 0 end) as low_line_count
from orders, lineitem
where o_orderkey = l_orderkey
      and l_shipmode in ('MAIL', 'SHIP')
      and l_commitdate < l_receiptdate
      and l_shipdate < l_commitdate
      and l_receiptdate >= date '1994-01-01'
      and l_receiptdate < date '1994-01-01' + interval '5' year
group by l_shipmode
order by l_shipmode;  

\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on  


select l_shipmode,
sum(case
    when o_orderpriority ='1-URGENT' or o_orderpriority ='2-HIGH'
    then 1 else 0 end) as high_line_count,
sum(case
    when o_orderpriority <> '1-URGENT' and o_orderpriority <> '2-HIGH' 
    then 1 else 0 end) as low_line_count
from orders, lineitem
where o_orderkey = l_orderkey
      and l_shipmode in ('MAIL', 'SHIP')
      and l_commitdate < l_receiptdate
      and l_shipdate < l_commitdate
      and l_receiptdate >= date '1994-01-01'
      and l_receiptdate < date '1994-01-01' + interval '1' year
group by l_shipmode
order by l_shipmode;   


select l_shipmode,
sum(case
    when o_orderpriority ='1-URGENT' or o_orderpriority ='2-HIGH'
    then 1 else 0 end) as high_line_count,
sum(case
    when o_orderpriority <> '1-URGENT' and o_orderpriority <> '2-HIGH' 
    then 1 else 0 end) as low_line_count
from orders, lineitem
where o_orderkey = l_orderkey
      and l_shipmode in ('MAIL', 'SHIP')
      and l_commitdate < l_receiptdate
      and l_shipdate < l_commitdate
      and l_receiptdate >= date '1994-01-01'
      and l_receiptdate < date '1994-01-01' + interval '1' year
group by l_shipmode
order by l_shipmode;   

select l_shipmode,
sum(case
    when o_orderpriority ='1-URGENT' or o_orderpriority ='2-HIGH'
    then 1 else 0 end) as high_line_count,
sum(case
    when o_orderpriority <> '1-URGENT' and o_orderpriority <> '2-HIGH' 
    then 1 else 0 end) as low_line_count
from orders, lineitem
where o_orderkey = l_orderkey
      and l_shipmode in ('MAIL', 'SHIP')
      and l_commitdate < l_receiptdate
      and l_shipdate < l_commitdate
      and l_receiptdate >= date '1994-01-01'
      and l_receiptdate < date '1994-01-01' + interval '1' year
group by l_shipmode
order by l_shipmode;   

select l_shipmode,
sum(case
    when o_orderpriority ='1-URGENT' or o_orderpriority ='2-HIGH'
    then 1 else 0 end) as high_line_count,
sum(case
    when o_orderpriority <> '1-URGENT' and o_orderpriority <> '2-HIGH' 
    then 1 else 0 end) as low_line_count
from orders, lineitem
where o_orderkey = l_orderkey
      and l_shipmode in ('MAIL', 'SHIP')
      and l_commitdate < l_receiptdate
      and l_shipdate < l_commitdate
      and l_receiptdate >= date '1994-01-01'
      and l_receiptdate < date '1994-01-01' + interval '1' year
group by l_shipmode
order by l_shipmode;   

select l_shipmode,
sum(case
    when o_orderpriority ='1-URGENT' or o_orderpriority ='2-HIGH'
    then 1 else 0 end) as high_line_count,
sum(case
    when o_orderpriority <> '1-URGENT' and o_orderpriority <> '2-HIGH' 
    then 1 else 0 end) as low_line_count
from orders, lineitem
where o_orderkey = l_orderkey
      and l_shipmode in ('MAIL', 'SHIP')
      and l_commitdate < l_receiptdate
      and l_shipdate < l_commitdate
      and l_receiptdate >= date '1994-01-01'
      and l_receiptdate < date '1994-01-01' + interval '1' year
group by l_shipmode
order by l_shipmode;   

\o


EXPLAIN ANALYSE
select l_shipmode,
sum(case
    when o_orderpriority ='1-URGENT' or o_orderpriority ='2-HIGH'
    then 1 else 0 end) as high_line_count,
sum(case
    when o_orderpriority <> '1-URGENT' and o_orderpriority <> '2-HIGH' 
    then 1 else 0 end) as low_line_count
from orders, lineitem
where o_orderkey = l_orderkey
      and l_shipmode in ('MAIL', 'SHIP')
      and l_commitdate < l_receiptdate
      and l_shipdate < l_commitdate
      and l_receiptdate >= date '1994-01-01'
      and l_receiptdate < date '1994-01-01' + interval '1' year
group by l_shipmode
order by l_shipmode; 

\q
sudo su;
systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on   


select l_shipmode,
sum(case
    when o_orderpriority ='1-URGENT' or o_orderpriority ='2-HIGH'
    then 1 else 0 end) as high_line_count,
sum(case
    when o_orderpriority <> '1-URGENT' and o_orderpriority <> '2-HIGH' 
    then 1 else 0 end) as low_line_count
from orders, lineitem
where o_orderkey = l_orderkey
      and l_shipmode in ('MAIL', 'SHIP')
      and l_commitdate < l_receiptdate
      and l_shipdate < l_commitdate
      and l_receiptdate >= date '1994-01-01'
      and l_receiptdate < date '1994-01-01' + interval '30' day 
group by l_shipmode
order by l_shipmode; 

select l_shipmode,
sum(case
    when o_orderpriority ='1-URGENT' or o_orderpriority ='2-HIGH'
    then 1 else 0 end) as high_line_count,
sum(case
    when o_orderpriority <> '1-URGENT' and o_orderpriority <> '2-HIGH' 
    then 1 else 0 end) as low_line_count
from orders, lineitem
where o_orderkey = l_orderkey
      and l_shipmode in ('MAIL', 'SHIP')
      and l_commitdate < l_receiptdate
      and l_shipdate < l_commitdate
      and l_receiptdate >= date '1994-01-01'
      and l_receiptdate < date '1994-01-01' + interval '30' day 
group by l_shipmode
order by l_shipmode; 

select l_shipmode,
sum(case
    when o_orderpriority ='1-URGENT' or o_orderpriority ='2-HIGH'
    then 1 else 0 end) as high_line_count,
sum(case
    when o_orderpriority <> '1-URGENT' and o_orderpriority <> '2-HIGH' 
    then 1 else 0 end) as low_line_count
from orders, lineitem
where o_orderkey = l_orderkey
      and l_shipmode in ('MAIL', 'SHIP')
      and l_commitdate < l_receiptdate
      and l_shipdate < l_commitdate
      and l_receiptdate >= date '1994-01-01'
      and l_receiptdate < date '1994-01-01' + interval '30' day 
group by l_shipmode
order by l_shipmode; 

select l_shipmode,
sum(case
    when o_orderpriority ='1-URGENT' or o_orderpriority ='2-HIGH'
    then 1 else 0 end) as high_line_count,
sum(case
    when o_orderpriority <> '1-URGENT' and o_orderpriority <> '2-HIGH' 
    then 1 else 0 end) as low_line_count
from orders, lineitem
where o_orderkey = l_orderkey
      and l_shipmode in ('MAIL', 'SHIP')
      and l_commitdate < l_receiptdate
      and l_shipdate < l_commitdate
      and l_receiptdate >= date '1994-01-01'
      and l_receiptdate < date '1994-01-01' + interval '30' day 
group by l_shipmode
order by l_shipmode; 

select l_shipmode,
sum(case
    when o_orderpriority ='1-URGENT' or o_orderpriority ='2-HIGH'
    then 1 else 0 end) as high_line_count,
sum(case
    when o_orderpriority <> '1-URGENT' and o_orderpriority <> '2-HIGH' 
    then 1 else 0 end) as low_line_count
from orders, lineitem
where o_orderkey = l_orderkey
      and l_shipmode in ('MAIL', 'SHIP')
      and l_commitdate < l_receiptdate
      and l_shipdate < l_commitdate
      and l_receiptdate >= date '1994-01-01'
      and l_receiptdate < date '1994-01-01' + interval '30' day 
group by l_shipmode
order by l_shipmode; 

\o

EXPLAIN ANALYSE
select l_shipmode,
sum(case
    when o_orderpriority ='1-URGENT' or o_orderpriority ='2-HIGH'
    then 1 else 0 end) as high_line_count,
sum(case
    when o_orderpriority <> '1-URGENT' and o_orderpriority <> '2-HIGH' 
    then 1 else 0 end) as low_line_count
from orders, lineitem
where o_orderkey = l_orderkey
      and l_shipmode in ('MAIL', 'SHIP')
      and l_commitdate < l_receiptdate
      and l_shipdate < l_commitdate
      and l_receiptdate >= date '1994-01-01'
      and l_receiptdate < date '1994-01-01' + interval '30' day 
group by l_shipmode
order by l_shipmode;               