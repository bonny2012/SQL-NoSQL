--query 1
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

select value->>'c_name' as name, value->>'c_address' as address, value->>'c_phone' as phone
from customer_or_lm
where (value->>'c_acctbal') ::float < 10000 and value->>'c_mktsegment'='AUTOMOBILE';

select value->>'c_name' as name, value->>'c_address' as address, value->>'c_phone' as phone
from customer_or_lm
where (value->>'c_acctbal') ::float < 10000 and value->>'c_mktsegment'='AUTOMOBILE';

select value->>'c_name' as name, value->>'c_address' as address, value->>'c_phone' as phone
from customer_or_lm
where (value->>'c_acctbal') ::float < 10000 and value->>'c_mktsegment'='AUTOMOBILE';

select value->>'c_name' as name, value->>'c_address' as address, value->>'c_phone' as phone
from customer_or_lm
where (value->>'c_acctbal') ::float < 10000 and value->>'c_mktsegment'='AUTOMOBILE';

select value->>'c_name' as name, value->>'c_address' as address, value->>'c_phone' as phone
from customer_or_lm
where (value->>'c_acctbal') ::float < 10000 and value->>'c_mktsegment'='AUTOMOBILE';

\o

EXPLAIN ANALYSE 
select value->>'c_name' as name, value->>'c_address' as address, value->>'c_phone' as phone
from customer_or_lm
where (value->>'c_acctbal') ::float < 10000 and value->>'c_mktsegment'='AUTOMOBILE';

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


select value->>'c_name' as name, value->>'c_address' as address, value->>'c_phone' as phone
from customer_or_lm
where (value->>'c_acctbal') ::float < 1000 and value->>'c_mktsegment'='AUTOMOBILE';


select value->>'c_name' as name, value->>'c_address' as address, value->>'c_phone' as phone
from customer_or_lm
where (value->>'c_acctbal') ::float < 1000 and value->>'c_mktsegment'='AUTOMOBILE';

select value->>'c_name' as name, value->>'c_address' as address, value->>'c_phone' as phone
from customer_or_lm
where (value->>'c_acctbal') ::float < 1000 and value->>'c_mktsegment'='AUTOMOBILE';


select value->>'c_name' as name, value->>'c_address' as address, value->>'c_phone' as phone
from customer_or_lm
where (value->>'c_acctbal') ::float < 1000 and value->>'c_mktsegment'='AUTOMOBILE';

select value->>'c_name' as name, value->>'c_address' as address, value->>'c_phone' as phone
from customer_or_lm
where (value->>'c_acctbal') ::float < 1000 and value->>'c_mktsegment'='AUTOMOBILE';

\o

EXPLAIN ANALYSE 
select value->>'c_name' as name, value->>'c_address' as address, value->>'c_phone' as phone
from customer_or_lm
where (value->>'c_acctbal') ::float < 1000 and value->>'c_mktsegment'='AUTOMOBILE';

\q
sudo su

systemctl stop postgresql-10.service;
sync;
echo 3 > /proc/sys/vm/drop_caches;
systemctl start postgresql-10.service;
exit;
export PATH=/usr/pgsql-10/bin:$PATH
psql project2;
\o out1.txt;
\timing on


select value->>'c_name' as name, value->>'c_address' as address, value->>'c_phone' as phone
from customer_or_lm
where (value->>'c_acctbal') ::float < -950 and value->>'c_mktsegment'='AUTOMOBILE';


select value->>'c_name' as name, value->>'c_address' as address, value->>'c_phone' as phone
from customer_or_lm
where (value->>'c_acctbal') ::float < -950 and value->>'c_mktsegment'='AUTOMOBILE';


select value->>'c_name' as name, value->>'c_address' as address, value->>'c_phone' as phone
from customer_or_lm
where (value->>'c_acctbal') ::float < -950 and value->>'c_mktsegment'='AUTOMOBILE';


select value->>'c_name' as name, value->>'c_address' as address, value->>'c_phone' as phone
from customer_or_lm
where (value->>'c_acctbal') ::float < -950 and value->>'c_mktsegment'='AUTOMOBILE';


select value->>'c_name' as name, value->>'c_address' as address, value->>'c_phone' as phone
from customer_or_lm
where (value->>'c_acctbal') ::float < -950 and value->>'c_mktsegment'='AUTOMOBILE';

\o

EXPLAIN ANALYSE 
select value->>'c_name' as name, value->>'c_address' as address, value->>'c_phone' as phone
from customer_or_lm
where (value->>'c_acctbal') ::float < -950 and value->>'c_mktsegment'='AUTOMOBILE';

--query 2
--2a
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

select value->>'c_name', count(*) as count
from customer_or_lm
where (value->>'c_acctbal')::float < 10000
     and value->>'c_mktsegment'='AUTOMOBILE'
group by value->>'c_custkey', value->>'c_name';

select value->>'c_name', count(*) as count
from customer_or_lm
where (value->>'c_acctbal')::float < 10000
     and value->>'c_mktsegment'='AUTOMOBILE'
group by value->>'c_custkey', value->>'c_name';


select value->>'c_name', count(*) as count
from customer_or_lm
where (value->>'c_acctbal')::float < 10000
     and value->>'c_mktsegment'='AUTOMOBILE'
group by value->>'c_custkey', value->>'c_name';


select value->>'c_name', count(*) as count
from customer_or_lm
where (value->>'c_acctbal')::float < 10000
     and value->>'c_mktsegment'='AUTOMOBILE'
group by value->>'c_custkey', value->>'c_name';


select value->>'c_name', count(*) as count
from customer_or_lm
where (value->>'c_acctbal')::float < 10000
     and value->>'c_mktsegment'='AUTOMOBILE'
group by value->>'c_custkey', value->>'c_name';

\o

EXPLAIN ANALYSE 
select value->>'c_name', count(*) as count
from customer_or_lm
where (value->>'c_acctbal')::float < 10000
     and value->>'c_mktsegment'='AUTOMOBILE'
group by value->>'c_custkey', value->>'c_name';

--2b

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

select value->>'c_name', count(*) as count
from customer_or_lm
where (value->>'c_acctbal')::float < 1000
     and value->>'c_mktsegment'='AUTOMOBILE'
group by value->>'c_custkey', value->>'c_name';


select value->>'c_name', count(*) as count
from customer_or_lm
where (value->>'c_acctbal')::float < 1000
     and value->>'c_mktsegment'='AUTOMOBILE'
group by value->>'c_custkey', value->>'c_name';


select value->>'c_name', count(*) as count
from customer_or_lm
where (value->>'c_acctbal')::float < 1000
     and value->>'c_mktsegment'='AUTOMOBILE'
group by value->>'c_custkey', value->>'c_name';


select value->>'c_name', count(*) as count
from customer_or_lm
where (value->>'c_acctbal')::float < 1000
     and value->>'c_mktsegment'='AUTOMOBILE'
group by value->>'c_custkey', value->>'c_name';


select value->>'c_name', count(*) as count
from customer_or_lm
where (value->>'c_acctbal')::float < 1000
     and value->>'c_mktsegment'='AUTOMOBILE'
group by value->>'c_custkey', value->>'c_name';

\o


EXPLAIN ANALYSE
select value->>'c_name', count(*) as count
from customer_or_lm
where (value->>'c_acctbal')::float < 1000
     and value->>'c_mktsegment'='AUTOMOBILE'
group by value->>'c_custkey', value->>'c_name';

--2c
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



select value->>'c_name', count(*) as count
from customer_or_lm
where (value->>'c_acctbal')::float < -950
     and value->>'c_mktsegment'='AUTOMOBILE'
group by value->>'c_custkey', value->>'c_name';

select value->>'c_name', count(*) as count
from customer_or_lm
where (value->>'c_acctbal')::float < -950
     and value->>'c_mktsegment'='AUTOMOBILE'
group by value->>'c_custkey', value->>'c_name';

select value->>'c_name', count(*) as count
from customer_or_lm
where (value->>'c_acctbal')::float < -950
     and value->>'c_mktsegment'='AUTOMOBILE'
group by value->>'c_custkey', value->>'c_name';


select value->>'c_name', count(*) as count
from customer_or_lm
where (value->>'c_acctbal')::float < -950
     and value->>'c_mktsegment'='AUTOMOBILE'
group by value->>'c_custkey', value->>'c_name';

select value->>'c_name', count(*) as count
from customer_or_lm
where (value->>'c_acctbal')::float < -950
     and value->>'c_mktsegment'='AUTOMOBILE'
group by value->>'c_custkey', value->>'c_name';

\o



EXPLAIN ANALYSE
select value->>'c_name', count(*) as count
from customer_or_lm
where (value->>'c_acctbal')::float < -950
     and value->>'c_mktsegment'='AUTOMOBILE'
group by value->>'c_custkey', value->>'c_name';


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
--3a
select  c.value->'c_name', 
    a->'data'->>'o_clerk' as clerk
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 1000000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
    and (c.value->>'c_nationkey')::int = 10;


select  c.value->'c_name', 
    a->'data'->>'o_clerk' as clerk
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 1000000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
    and (c.value->>'c_nationkey')::int = 10;


select  c.value->'c_name', 
    a->'data'->>'o_clerk' as clerk
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 1000000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
    and (c.value->>'c_nationkey')::int = 10;

select  c.value->'c_name', 
    a->'data'->>'o_clerk' as clerk
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 1000000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
    and (c.value->>'c_nationkey')::int = 10;


select  c.value->'c_name', 
    a->'data'->>'o_clerk' as clerk
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 1000000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
    and (c.value->>'c_nationkey')::int = 10;

\o 

EXPLAIN ANALYSE
select  c.value->'c_name', 
		a->'data'->>'o_clerk' as clerk
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 1000000 
	  and a->'data'->>'o_orderpriority' = '2-HIGH         '
	  and (c.value->>'c_acctbal')::float > 500 
    and (c.value->>'c_nationkey')::int = 10;


--3b
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



select  c.value->'c_name', 
    a->'data'->>'o_clerk' as clerk
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 100000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500
    and (c.value->>'c_nationkey')::int = 10;

select  c.value->'c_name', 
    a->'data'->>'o_clerk' as clerk
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 100000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500
    and (c.value->>'c_nationkey')::int = 10;
select  c.value->'c_name', 
    a->'data'->>'o_clerk' as clerk
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 100000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500
    and (c.value->>'c_nationkey')::int = 10;

select  c.value->'c_name', 
    a->'data'->>'o_clerk' as clerk
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 100000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500
    and (c.value->>'c_nationkey')::int = 10;

select  c.value->'c_name', 
    a->'data'->>'o_clerk' as clerk
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 100000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500
    and (c.value->>'c_nationkey')::int = 10;

\o 


EXPLAIN ANALYSE
select  c.value->'c_name', 
    a->'data'->>'o_clerk' as clerk
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 100000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500
    and (c.value->>'c_nationkey')::int = 10;


--3c

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


select  c.value->'c_name', 
    a->'data'->>'o_clerk' as clerk
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 5000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
    and (c.value->>'c_nationkey')::int = 10;

select  c.value->'c_name', 
    a->'data'->>'o_clerk' as clerk
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 5000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
    and (c.value->>'c_nationkey')::int = 10;

select  c.value->'c_name', 
    a->'data'->>'o_clerk' as clerk
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 5000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
    and (c.value->>'c_nationkey')::int = 10;


select  c.value->'c_name', 
    a->'data'->>'o_clerk' as clerk
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 5000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
    and (c.value->>'c_nationkey')::int = 10;


select  c.value->'c_name', 
    a->'data'->>'o_clerk' as clerk
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 5000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
    and (c.value->>'c_nationkey')::int = 10;


\o 


EXPLAIN ANALYSE
select  c.value->'c_name', 
    a->'data'->>'o_clerk' as clerk
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 5000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
    and (c.value->>'c_nationkey')::int = 10;

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



--qury 4
 
--4-a
select  a->'data'->>'o_clerk' as clerk,count(distinct c.value->'c_name') as count   
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 1000000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500
      and (c.value->>'c_nationkey')::int = 10
group by a->'data'->>'o_clerk';


select  a->'data'->>'o_clerk' as clerk,count(distinct c.value->'c_name') as count   
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 1000000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500
      and (c.value->>'c_nationkey')::int = 10
group by a->'data'->>'o_clerk';

select  a->'data'->>'o_clerk' as clerk,count(distinct c.value->'c_name') as count   
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 1000000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500
      and (c.value->>'c_nationkey')::int = 10
group by a->'data'->>'o_clerk';


select  a->'data'->>'o_clerk' as clerk,count(distinct c.value->'c_name') as count   
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 1000000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500
      and (c.value->>'c_nationkey')::int = 10
group by a->'data'->>'o_clerk';


select  a->'data'->>'o_clerk' as clerk,count(distinct c.value->'c_name') as count   
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 1000000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500
      and (c.value->>'c_nationkey')::int = 10
group by a->'data'->>'o_clerk';


\o 


EXPLAIN ANALYSE
select  a->'data'->>'o_clerk' as clerk,count(distinct c.value->'c_name') as count		
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 1000000 
	  and a->'data'->>'o_orderpriority' = '2-HIGH         '
	  and (c.value->>'c_acctbal')::float > 500
      and (c.value->>'c_nationkey')::int = 10
group by a->'data'->>'o_clerk';

--4-b
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


select  a->'data'->>'o_clerk' as clerk,count(distinct c.value->'c_name') as count   
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 100000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
      and (c.value->>'c_nationkey')::int = 10
group by a->'data'->>'o_clerk';

select  a->'data'->>'o_clerk' as clerk,count(distinct c.value->'c_name') as count   
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 100000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
      and (c.value->>'c_nationkey')::int = 10
group by a->'data'->>'o_clerk';


select  a->'data'->>'o_clerk' as clerk,count(distinct c.value->'c_name') as count   
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 100000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
      and (c.value->>'c_nationkey')::int = 10
group by a->'data'->>'o_clerk';


select  a->'data'->>'o_clerk' as clerk,count(distinct c.value->'c_name') as count   
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 100000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
      and (c.value->>'c_nationkey')::int = 10
group by a->'data'->>'o_clerk';

select  a->'data'->>'o_clerk' as clerk,count(distinct c.value->'c_name') as count   
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 100000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
      and (c.value->>'c_nationkey')::int = 10
group by a->'data'->>'o_clerk';

\o 

EXPLAIN ANALYSE
select  a->'data'->>'o_clerk' as clerk,count(distinct c.value->'c_name') as count   
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 100000 
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
      and (c.value->>'c_nationkey')::int = 10
group by a->'data'->>'o_clerk';



--4-c
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


select  a->'data'->>'o_clerk' as clerk,count(distinct c.value->'c_name') as count   
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 5000
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
      and (c.value->>'c_nationkey')::int = 10
group by a->'data'->>'o_clerk';

select  a->'data'->>'o_clerk' as clerk,count(distinct c.value->'c_name') as count   
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 5000
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
      and (c.value->>'c_nationkey')::int = 10
group by a->'data'->>'o_clerk';

select  a->'data'->>'o_clerk' as clerk,count(distinct c.value->'c_name') as count   
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 5000
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
      and (c.value->>'c_nationkey')::int = 10
group by a->'data'->>'o_clerk';

select  a->'data'->>'o_clerk' as clerk,count(distinct c.value->'c_name') as count   
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 5000
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
      and (c.value->>'c_nationkey')::int = 10
group by a->'data'->>'o_clerk';

select  a->'data'->>'o_clerk' as clerk,count(distinct c.value->'c_name') as count   
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 5000
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
      and (c.value->>'c_nationkey')::int = 10
group by a->'data'->>'o_clerk';

\o

EXPLAIN ANALYSE
select  a->'data'->>'o_clerk' as clerk,count(distinct c.value->'c_name') as count   
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a
where (a->'data'->>'o_totalprice')::float < 5000
    and a->'data'->>'o_orderpriority' = '2-HIGH         '
    and (c.value->>'c_acctbal')::float > 500 
      and (c.value->>'c_nationkey')::int = 10
group by a->'data'->>'o_clerk';

\q
sudo su
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
--5a

select a->'data'->>'o_orderpriority' as orderpriority,
     count(*) as count
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where (a->'data'->>'o_orderdate'):: date >= date '1993-07-01'
    and (a->'data'->>'o_orderdate'):: date < date '1996-07-01'
      and (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
group by a->'data'->>'o_orderpriority'
order by a->'data'->>'o_orderpriority';

select a->'data'->>'o_orderpriority' as orderpriority,
     count(*) as count
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where (a->'data'->>'o_orderdate'):: date >= date '1993-07-01'
    and (a->'data'->>'o_orderdate'):: date < date '1996-07-01'
      and (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
group by a->'data'->>'o_orderpriority'
order by a->'data'->>'o_orderpriority';

select a->'data'->>'o_orderpriority' as orderpriority,
     count(*) as count
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where (a->'data'->>'o_orderdate'):: date >= date '1993-07-01'
    and (a->'data'->>'o_orderdate'):: date < date '1996-07-01'
      and (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
group by a->'data'->>'o_orderpriority'
order by a->'data'->>'o_orderpriority';

select a->'data'->>'o_orderpriority' as orderpriority,
     count(*) as count
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where (a->'data'->>'o_orderdate'):: date >= date '1993-07-01'
    and (a->'data'->>'o_orderdate'):: date < date '1996-07-01'
      and (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
group by a->'data'->>'o_orderpriority'
order by a->'data'->>'o_orderpriority';

select a->'data'->>'o_orderpriority' as orderpriority,
     count(*) as count
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where (a->'data'->>'o_orderdate'):: date >= date '1993-07-01'
    and (a->'data'->>'o_orderdate'):: date < date '1996-07-01'
      and (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
group by a->'data'->>'o_orderpriority'
order by a->'data'->>'o_orderpriority';

\o

EXPLAIN ANALYSE
select a->'data'->>'o_orderpriority' as orderpriority,
     count(*) as count
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where (a->'data'->>'o_orderdate'):: date >= date '1993-07-01'
    and (a->'data'->>'o_orderdate'):: date < date '1996-07-01'
      and (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
group by a->'data'->>'o_orderpriority'
order by a->'data'->>'o_orderpriority';

--5b
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


select a->'data'->>'o_orderpriority' as orderpriority,
     count(*) as count
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where (a->'data'->>'o_orderdate'):: date >= date '1993-07-01'
    and (a->'data'->>'o_orderdate'):: date < date '1993-10-01'
      and (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
group by a->'data'->>'o_orderpriority'
order by a->'data'->>'o_orderpriority';

select a->'data'->>'o_orderpriority' as orderpriority,
     count(*) as count
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where (a->'data'->>'o_orderdate'):: date >= date '1993-07-01'
    and (a->'data'->>'o_orderdate'):: date < date '1993-10-01'
      and (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
group by a->'data'->>'o_orderpriority'
order by a->'data'->>'o_orderpriority';

select a->'data'->>'o_orderpriority' as orderpriority,
     count(*) as count
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where (a->'data'->>'o_orderdate'):: date >= date '1993-07-01'
    and (a->'data'->>'o_orderdate'):: date < date '1993-10-01'
      and (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
group by a->'data'->>'o_orderpriority'
order by a->'data'->>'o_orderpriority';

select a->'data'->>'o_orderpriority' as orderpriority,
     count(*) as count
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where (a->'data'->>'o_orderdate'):: date >= date '1993-07-01'
    and (a->'data'->>'o_orderdate'):: date < date '1993-10-01'
      and (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
group by a->'data'->>'o_orderpriority'
order by a->'data'->>'o_orderpriority';

select a->'data'->>'o_orderpriority' as orderpriority,
     count(*) as count
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where (a->'data'->>'o_orderdate'):: date >= date '1993-07-01'
    and (a->'data'->>'o_orderdate'):: date < date '1993-10-01'
      and (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
group by a->'data'->>'o_orderpriority'
order by a->'data'->>'o_orderpriority';

\o


EXPLAIN ANALYSE
select a->'data'->>'o_orderpriority' as orderpriority,
	   count(*) as count
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
	jsonb_array_elements(a->'data'->'lineitem') as b
where (a->'data'->>'o_orderdate'):: date >= date '1993-07-01'
	  and (a->'data'->>'o_orderdate'):: date < date '1993-10-01'
      and (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
group by a->'data'->>'o_orderpriority'
order by a->'data'->>'o_orderpriority';


--5c

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



select a->'data'->>'o_orderpriority' as orderpriority,
     count(*) as count
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where (a->'data'->>'o_orderdate'):: date >= date '1993-07-01'
    and (a->'data'->>'o_orderdate'):: date < date '1993-08-01'
      and (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
group by a->'data'->>'o_orderpriority'
order by a->'data'->>'o_orderpriority';


select a->'data'->>'o_orderpriority' as orderpriority,
     count(*) as count
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where (a->'data'->>'o_orderdate'):: date >= date '1993-07-01'
    and (a->'data'->>'o_orderdate'):: date < date '1993-08-01'
      and (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
group by a->'data'->>'o_orderpriority'
order by a->'data'->>'o_orderpriority';


select a->'data'->>'o_orderpriority' as orderpriority,
     count(*) as count
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where (a->'data'->>'o_orderdate'):: date >= date '1993-07-01'
    and (a->'data'->>'o_orderdate'):: date < date '1993-08-01'
      and (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
group by a->'data'->>'o_orderpriority'
order by a->'data'->>'o_orderpriority';


select a->'data'->>'o_orderpriority' as orderpriority,
     count(*) as count
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where (a->'data'->>'o_orderdate'):: date >= date '1993-07-01'
    and (a->'data'->>'o_orderdate'):: date < date '1993-08-01'
      and (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
group by a->'data'->>'o_orderpriority'
order by a->'data'->>'o_orderpriority';


select a->'data'->>'o_orderpriority' as orderpriority,
     count(*) as count
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where (a->'data'->>'o_orderdate'):: date >= date '1993-07-01'
    and (a->'data'->>'o_orderdate'):: date < date '1993-08-01'
      and (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
group by a->'data'->>'o_orderpriority'
order by a->'data'->>'o_orderpriority';


\o


EXPLAIN ANALYSE
select a->'data'->>'o_orderpriority' as orderpriority,
     count(*) as count
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where (a->'data'->>'o_orderdate'):: date >= date '1993-07-01'
    and (a->'data'->>'o_orderdate'):: date < date '1993-08-01'
      and (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
group by a->'data'->>'o_orderpriority'
order by a->'data'->>'o_orderpriority';

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
--6a

select b->>'l_orderkey' as orderkey,
     sum(((b->>'l_extendedprice')::float)*(1-((b->>'l_discount')::float))) as revenue, 
     a->'data'->>'o_orderdate' as orderdate, 
       a->'data'->>'o_shippriority' as shippriority
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where c.value->>'c_mktsegment' = 'AUTOMOBILE' 
      and (a->'data'->>'o_orderdate')::date < date '1995-03-15' 
      and (b->>'l_shipdate')::date > date '1995-03-15'
group by b->>'l_orderkey', a->'data'->>'o_orderdate', a->'data'->>'o_shippriority'
order by revenue desc, a->'data'->>'o_orderdate';

select b->>'l_orderkey' as orderkey,
     sum(((b->>'l_extendedprice')::float)*(1-((b->>'l_discount')::float))) as revenue, 
     a->'data'->>'o_orderdate' as orderdate, 
       a->'data'->>'o_shippriority' as shippriority
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where c.value->>'c_mktsegment' = 'AUTOMOBILE' 
      and (a->'data'->>'o_orderdate')::date < date '1995-03-15' 
      and (b->>'l_shipdate')::date > date '1995-03-15'
group by b->>'l_orderkey', a->'data'->>'o_orderdate', a->'data'->>'o_shippriority'
order by revenue desc, a->'data'->>'o_orderdate';

select b->>'l_orderkey' as orderkey,
     sum(((b->>'l_extendedprice')::float)*(1-((b->>'l_discount')::float))) as revenue, 
     a->'data'->>'o_orderdate' as orderdate, 
       a->'data'->>'o_shippriority' as shippriority
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where c.value->>'c_mktsegment' = 'AUTOMOBILE' 
      and (a->'data'->>'o_orderdate')::date < date '1995-03-15' 
      and (b->>'l_shipdate')::date > date '1995-03-15'
group by b->>'l_orderkey', a->'data'->>'o_orderdate', a->'data'->>'o_shippriority'
order by revenue desc, a->'data'->>'o_orderdate';

select b->>'l_orderkey' as orderkey,
     sum(((b->>'l_extendedprice')::float)*(1-((b->>'l_discount')::float))) as revenue, 
     a->'data'->>'o_orderdate' as orderdate, 
       a->'data'->>'o_shippriority' as shippriority
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where c.value->>'c_mktsegment' = 'AUTOMOBILE' 
      and (a->'data'->>'o_orderdate')::date < date '1995-03-15' 
      and (b->>'l_shipdate')::date > date '1995-03-15'
group by b->>'l_orderkey', a->'data'->>'o_orderdate', a->'data'->>'o_shippriority'
order by revenue desc, a->'data'->>'o_orderdate';

select b->>'l_orderkey' as orderkey,
     sum(((b->>'l_extendedprice')::float)*(1-((b->>'l_discount')::float))) as revenue, 
     a->'data'->>'o_orderdate' as orderdate, 
       a->'data'->>'o_shippriority' as shippriority
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where c.value->>'c_mktsegment' = 'AUTOMOBILE' 
      and (a->'data'->>'o_orderdate')::date < date '1995-03-15' 
      and (b->>'l_shipdate')::date > date '1995-03-15'
group by b->>'l_orderkey', a->'data'->>'o_orderdate', a->'data'->>'o_shippriority'
order by revenue desc, a->'data'->>'o_orderdate';

\o

EXPLAIN ANALYSE 
select b->>'l_orderkey' as orderkey,
	   sum(((b->>'l_extendedprice')::float)*(1-((b->>'l_discount')::float))) as revenue, 
	   a->'data'->>'o_orderdate' as orderdate, 
       a->'data'->>'o_shippriority' as shippriority
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
	jsonb_array_elements(a->'data'->'lineitem') as b
where c.value->>'c_mktsegment' = 'AUTOMOBILE' 
      and (a->'data'->>'o_orderdate')::date < date '1995-03-15' 
      and (b->>'l_shipdate')::date > date '1995-03-15'
group by b->>'l_orderkey', a->'data'->>'o_orderdate', a->'data'->>'o_shippriority'
order by revenue desc, a->'data'->>'o_orderdate';

--6b

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


select b->>'l_orderkey' as orderkey,
     sum(((b->>'l_extendedprice')::float)*(1-((b->>'l_discount')::float))) as revenue, 
     a->'data'->>'o_orderdate' as orderdate, 
       a->'data'->>'o_shippriority' as shippriority
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where c.value->>'c_mktsegment' = 'AUTOMOBILE' 
      and (a->'data'->>'o_orderdate')::date < date '1995-03-15' 
      and (b->>'l_shipdate')::date > date '1995-03-15'
      and (a->'data'->>'o_totalprice')::float < 100000
group by b->>'l_orderkey', a->'data'->>'o_orderdate', a->'data'->>'o_shippriority'
order by revenue desc, a->'data'->>'o_orderdate';

select b->>'l_orderkey' as orderkey,
     sum(((b->>'l_extendedprice')::float)*(1-((b->>'l_discount')::float))) as revenue, 
     a->'data'->>'o_orderdate' as orderdate, 
       a->'data'->>'o_shippriority' as shippriority
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where c.value->>'c_mktsegment' = 'AUTOMOBILE' 
      and (a->'data'->>'o_orderdate')::date < date '1995-03-15' 
      and (b->>'l_shipdate')::date > date '1995-03-15'
      and (a->'data'->>'o_totalprice')::float < 100000
group by b->>'l_orderkey', a->'data'->>'o_orderdate', a->'data'->>'o_shippriority'
order by revenue desc, a->'data'->>'o_orderdate';

select b->>'l_orderkey' as orderkey,
     sum(((b->>'l_extendedprice')::float)*(1-((b->>'l_discount')::float))) as revenue, 
     a->'data'->>'o_orderdate' as orderdate, 
       a->'data'->>'o_shippriority' as shippriority
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where c.value->>'c_mktsegment' = 'AUTOMOBILE' 
      and (a->'data'->>'o_orderdate')::date < date '1995-03-15' 
      and (b->>'l_shipdate')::date > date '1995-03-15'
      and (a->'data'->>'o_totalprice')::float < 100000
group by b->>'l_orderkey', a->'data'->>'o_orderdate', a->'data'->>'o_shippriority'
order by revenue desc, a->'data'->>'o_orderdate';

select b->>'l_orderkey' as orderkey,
     sum(((b->>'l_extendedprice')::float)*(1-((b->>'l_discount')::float))) as revenue, 
     a->'data'->>'o_orderdate' as orderdate, 
       a->'data'->>'o_shippriority' as shippriority
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where c.value->>'c_mktsegment' = 'AUTOMOBILE' 
      and (a->'data'->>'o_orderdate')::date < date '1995-03-15' 
      and (b->>'l_shipdate')::date > date '1995-03-15'
      and (a->'data'->>'o_totalprice')::float < 100000
group by b->>'l_orderkey', a->'data'->>'o_orderdate', a->'data'->>'o_shippriority'
order by revenue desc, a->'data'->>'o_orderdate';

select b->>'l_orderkey' as orderkey,
     sum(((b->>'l_extendedprice')::float)*(1-((b->>'l_discount')::float))) as revenue, 
     a->'data'->>'o_orderdate' as orderdate, 
       a->'data'->>'o_shippriority' as shippriority
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where c.value->>'c_mktsegment' = 'AUTOMOBILE' 
      and (a->'data'->>'o_orderdate')::date < date '1995-03-15' 
      and (b->>'l_shipdate')::date > date '1995-03-15'
      and (a->'data'->>'o_totalprice')::float < 100000
group by b->>'l_orderkey', a->'data'->>'o_orderdate', a->'data'->>'o_shippriority'
order by revenue desc, a->'data'->>'o_orderdate';

\o

EXPLAIN ANALYSE
select b->>'l_orderkey' as orderkey,
     sum(((b->>'l_extendedprice')::float)*(1-((b->>'l_discount')::float))) as revenue, 
     a->'data'->>'o_orderdate' as orderdate, 
       a->'data'->>'o_shippriority' as shippriority
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where c.value->>'c_mktsegment' = 'AUTOMOBILE' 
      and (a->'data'->>'o_orderdate')::date < date '1995-03-15' 
      and (b->>'l_shipdate')::date > date '1995-03-15'
      and (a->'data'->>'o_totalprice')::float < 100000
group by b->>'l_orderkey', a->'data'->>'o_orderdate', a->'data'->>'o_shippriority'
order by revenue desc, a->'data'->>'o_orderdate';

--6-c

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



select b->>'l_orderkey' as orderkey,
     sum(((b->>'l_extendedprice')::float)*(1-((b->>'l_discount')::float))) as revenue, 
     a->'data'->>'o_orderdate' as orderdate, 
       a->'data'->>'o_shippriority' as shippriority
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where c.value->>'c_mktsegment' = 'AUTOMOBILE' 
      and (a->'data'->>'o_orderdate')::date < date '1995-03-15' 
      and (b->>'l_shipdate')::date > date '1995-03-15'
      and (a->'data'->>'o_totalprice')::float < 10000
group by b->>'l_orderkey', a->'data'->>'o_orderdate', a->'data'->>'o_shippriority'
order by revenue desc, a->'data'->>'o_orderdate';


select b->>'l_orderkey' as orderkey,
     sum(((b->>'l_extendedprice')::float)*(1-((b->>'l_discount')::float))) as revenue, 
     a->'data'->>'o_orderdate' as orderdate, 
       a->'data'->>'o_shippriority' as shippriority
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where c.value->>'c_mktsegment' = 'AUTOMOBILE' 
      and (a->'data'->>'o_orderdate')::date < date '1995-03-15' 
      and (b->>'l_shipdate')::date > date '1995-03-15'
      and (a->'data'->>'o_totalprice')::float < 10000
group by b->>'l_orderkey', a->'data'->>'o_orderdate', a->'data'->>'o_shippriority'
order by revenue desc, a->'data'->>'o_orderdate';


select b->>'l_orderkey' as orderkey,
     sum(((b->>'l_extendedprice')::float)*(1-((b->>'l_discount')::float))) as revenue, 
     a->'data'->>'o_orderdate' as orderdate, 
       a->'data'->>'o_shippriority' as shippriority
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where c.value->>'c_mktsegment' = 'AUTOMOBILE' 
      and (a->'data'->>'o_orderdate')::date < date '1995-03-15' 
      and (b->>'l_shipdate')::date > date '1995-03-15'
      and (a->'data'->>'o_totalprice')::float < 10000
group by b->>'l_orderkey', a->'data'->>'o_orderdate', a->'data'->>'o_shippriority'
order by revenue desc, a->'data'->>'o_orderdate';


select b->>'l_orderkey' as orderkey,
     sum(((b->>'l_extendedprice')::float)*(1-((b->>'l_discount')::float))) as revenue, 
     a->'data'->>'o_orderdate' as orderdate, 
       a->'data'->>'o_shippriority' as shippriority
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where c.value->>'c_mktsegment' = 'AUTOMOBILE' 
      and (a->'data'->>'o_orderdate')::date < date '1995-03-15' 
      and (b->>'l_shipdate')::date > date '1995-03-15'
      and (a->'data'->>'o_totalprice')::float < 10000
group by b->>'l_orderkey', a->'data'->>'o_orderdate', a->'data'->>'o_shippriority'
order by revenue desc, a->'data'->>'o_orderdate';


select b->>'l_orderkey' as orderkey,
     sum(((b->>'l_extendedprice')::float)*(1-((b->>'l_discount')::float))) as revenue, 
     a->'data'->>'o_orderdate' as orderdate, 
       a->'data'->>'o_shippriority' as shippriority
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where c.value->>'c_mktsegment' = 'AUTOMOBILE' 
      and (a->'data'->>'o_orderdate')::date < date '1995-03-15' 
      and (b->>'l_shipdate')::date > date '1995-03-15'
      and (a->'data'->>'o_totalprice')::float < 10000
group by b->>'l_orderkey', a->'data'->>'o_orderdate', a->'data'->>'o_shippriority'
order by revenue desc, a->'data'->>'o_orderdate';


\o

EXPLAIN ANALYSE
select b->>'l_orderkey' as orderkey,
     sum(((b->>'l_extendedprice')::float)*(1-((b->>'l_discount')::float))) as revenue, 
     a->'data'->>'o_orderdate' as orderdate, 
       a->'data'->>'o_shippriority' as shippriority
from customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
  jsonb_array_elements(a->'data'->'lineitem') as b
where c.value->>'c_mktsegment' = 'AUTOMOBILE' 
      and (a->'data'->>'o_orderdate')::date < date '1995-03-15' 
      and (b->>'l_shipdate')::date > date '1995-03-15'
      and (a->'data'->>'o_totalprice')::float < 10000
group by b->>'l_orderkey', a->'data'->>'o_orderdate', a->'data'->>'o_shippriority'
order by revenue desc, a->'data'->>'o_orderdate';

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



--query 7
--7a
select b->>'l_returnflag' as returnflat, b->>'l_linestatus', 
     sum((b->>'l_quantity')::float)as sum_qty,
       sum((b->>'l_extendedprice')::float) as sum_base_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float)) as sum_disc_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float*(1+(b->>'l_tax')::float))) as sum_charge,
       avg((b->>'l_quantity')::float) as avg_qty, 
       avg((b->>'l_extendedprice')::float) as avg_price,
       avg((b->>'l_discount')::float) as avg_disc, 
       count(*) as count_order
from   customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where  (b->>'l_shipdate')::date <= date '1998-12-01' - interval '90' day 
     and (b->>'l_tax')::float >0.01 and (b->>'l_discount')::float < .5
group by b->>'l_returnflag', b->>'l_linestatus'
order by b->>'l_returnflag', b->>'l_linestatus';

select b->>'l_returnflag' as returnflat, b->>'l_linestatus', 
     sum((b->>'l_quantity')::float)as sum_qty,
       sum((b->>'l_extendedprice')::float) as sum_base_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float)) as sum_disc_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float*(1+(b->>'l_tax')::float))) as sum_charge,
       avg((b->>'l_quantity')::float) as avg_qty, 
       avg((b->>'l_extendedprice')::float) as avg_price,
       avg((b->>'l_discount')::float) as avg_disc, 
       count(*) as count_order
from   customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where  (b->>'l_shipdate')::date <= date '1998-12-01' - interval '90' day 
     and (b->>'l_tax')::float >0.01 and (b->>'l_discount')::float < .5
group by b->>'l_returnflag', b->>'l_linestatus'
order by b->>'l_returnflag', b->>'l_linestatus';

select b->>'l_returnflag' as returnflat, b->>'l_linestatus', 
     sum((b->>'l_quantity')::float)as sum_qty,
       sum((b->>'l_extendedprice')::float) as sum_base_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float)) as sum_disc_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float*(1+(b->>'l_tax')::float))) as sum_charge,
       avg((b->>'l_quantity')::float) as avg_qty, 
       avg((b->>'l_extendedprice')::float) as avg_price,
       avg((b->>'l_discount')::float) as avg_disc, 
       count(*) as count_order
from   customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where  (b->>'l_shipdate')::date <= date '1998-12-01' - interval '90' day 
     and (b->>'l_tax')::float >0.01 and (b->>'l_discount')::float < .5
group by b->>'l_returnflag', b->>'l_linestatus'
order by b->>'l_returnflag', b->>'l_linestatus';

select b->>'l_returnflag' as returnflat, b->>'l_linestatus', 
     sum((b->>'l_quantity')::float)as sum_qty,
       sum((b->>'l_extendedprice')::float) as sum_base_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float)) as sum_disc_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float*(1+(b->>'l_tax')::float))) as sum_charge,
       avg((b->>'l_quantity')::float) as avg_qty, 
       avg((b->>'l_extendedprice')::float) as avg_price,
       avg((b->>'l_discount')::float) as avg_disc, 
       count(*) as count_order
from   customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where  (b->>'l_shipdate')::date <= date '1998-12-01' - interval '90' day 
     and (b->>'l_tax')::float >0.01 and (b->>'l_discount')::float < .5
group by b->>'l_returnflag', b->>'l_linestatus'
order by b->>'l_returnflag', b->>'l_linestatus';

select b->>'l_returnflag' as returnflat, b->>'l_linestatus', 
     sum((b->>'l_quantity')::float)as sum_qty,
       sum((b->>'l_extendedprice')::float) as sum_base_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float)) as sum_disc_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float*(1+(b->>'l_tax')::float))) as sum_charge,
       avg((b->>'l_quantity')::float) as avg_qty, 
       avg((b->>'l_extendedprice')::float) as avg_price,
       avg((b->>'l_discount')::float) as avg_disc, 
       count(*) as count_order
from   customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where  (b->>'l_shipdate')::date <= date '1998-12-01' - interval '90' day 
     and (b->>'l_tax')::float >0.01 and (b->>'l_discount')::float < .5
group by b->>'l_returnflag', b->>'l_linestatus'
order by b->>'l_returnflag', b->>'l_linestatus';

\o

EXPLAIN ANALYSE
select b->>'l_returnflag' as returnflat, b->>'l_linestatus', 
	   sum((b->>'l_quantity')::float)as sum_qty,
       sum((b->>'l_extendedprice')::float) as sum_base_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float)) as sum_disc_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float*(1+(b->>'l_tax')::float))) as sum_charge,
       avg((b->>'l_quantity')::float) as avg_qty, 
       avg((b->>'l_extendedprice')::float) as avg_price,
       avg((b->>'l_discount')::float) as avg_disc, 
       count(*) as count_order
from   customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
	   jsonb_array_elements(a->'data'->'lineitem') as b
where  (b->>'l_shipdate')::date <= date '1998-12-01' - interval '90' day 
     and (b->>'l_tax')::float >0.01 and (b->>'l_discount')::float < .5
group by b->>'l_returnflag', b->>'l_linestatus'
order by b->>'l_returnflag', b->>'l_linestatus';

--7-b

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


select b->>'l_returnflag' as returnflat, b->>'l_linestatus', 
     sum((b->>'l_quantity')::float)as sum_qty,
       sum((b->>'l_extendedprice')::float) as sum_base_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float)) as sum_disc_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float*(1+(b->>'l_tax')::float))) as sum_charge,
       avg((b->>'l_quantity')::float) as avg_qty, 
       avg((b->>'l_extendedprice')::float) as avg_price,
       avg((b->>'l_discount')::float) as avg_disc, 
       count(*) as count_order
from   customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where  (b->>'l_shipdate')::date <= date '1998-12-01' - interval '90' day 
     and (b->>'l_tax')::float >0.05 and (b->>'l_discount')::float < .5
group by b->>'l_returnflag', b->>'l_linestatus'
order by b->>'l_returnflag', b->>'l_linestatus';


select b->>'l_returnflag' as returnflat, b->>'l_linestatus', 
     sum((b->>'l_quantity')::float)as sum_qty,
       sum((b->>'l_extendedprice')::float) as sum_base_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float)) as sum_disc_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float*(1+(b->>'l_tax')::float))) as sum_charge,
       avg((b->>'l_quantity')::float) as avg_qty, 
       avg((b->>'l_extendedprice')::float) as avg_price,
       avg((b->>'l_discount')::float) as avg_disc, 
       count(*) as count_order
from   customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where  (b->>'l_shipdate')::date <= date '1998-12-01' - interval '90' day 
     and (b->>'l_tax')::float >0.05 and (b->>'l_discount')::float < .5
group by b->>'l_returnflag', b->>'l_linestatus'
order by b->>'l_returnflag', b->>'l_linestatus';


select b->>'l_returnflag' as returnflat, b->>'l_linestatus', 
     sum((b->>'l_quantity')::float)as sum_qty,
       sum((b->>'l_extendedprice')::float) as sum_base_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float)) as sum_disc_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float*(1+(b->>'l_tax')::float))) as sum_charge,
       avg((b->>'l_quantity')::float) as avg_qty, 
       avg((b->>'l_extendedprice')::float) as avg_price,
       avg((b->>'l_discount')::float) as avg_disc, 
       count(*) as count_order
from   customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where  (b->>'l_shipdate')::date <= date '1998-12-01' - interval '90' day 
     and (b->>'l_tax')::float >0.05 and (b->>'l_discount')::float < .5
group by b->>'l_returnflag', b->>'l_linestatus'
order by b->>'l_returnflag', b->>'l_linestatus';


select b->>'l_returnflag' as returnflat, b->>'l_linestatus', 
     sum((b->>'l_quantity')::float)as sum_qty,
       sum((b->>'l_extendedprice')::float) as sum_base_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float)) as sum_disc_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float*(1+(b->>'l_tax')::float))) as sum_charge,
       avg((b->>'l_quantity')::float) as avg_qty, 
       avg((b->>'l_extendedprice')::float) as avg_price,
       avg((b->>'l_discount')::float) as avg_disc, 
       count(*) as count_order
from   customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where  (b->>'l_shipdate')::date <= date '1998-12-01' - interval '90' day 
     and (b->>'l_tax')::float >0.05 and (b->>'l_discount')::float < .5
group by b->>'l_returnflag', b->>'l_linestatus'
order by b->>'l_returnflag', b->>'l_linestatus';

select b->>'l_returnflag' as returnflat, b->>'l_linestatus', 
     sum((b->>'l_quantity')::float)as sum_qty,
       sum((b->>'l_extendedprice')::float) as sum_base_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float)) as sum_disc_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float*(1+(b->>'l_tax')::float))) as sum_charge,
       avg((b->>'l_quantity')::float) as avg_qty, 
       avg((b->>'l_extendedprice')::float) as avg_price,
       avg((b->>'l_discount')::float) as avg_disc, 
       count(*) as count_order
from   customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where  (b->>'l_shipdate')::date <= date '1998-12-01' - interval '90' day 
     and (b->>'l_tax')::float >0.05 and (b->>'l_discount')::float < .5
group by b->>'l_returnflag', b->>'l_linestatus'
order by b->>'l_returnflag', b->>'l_linestatus';

\o



EXPLAIN ANALYSE
select b->>'l_returnflag' as returnflat, b->>'l_linestatus', 
     sum((b->>'l_quantity')::float)as sum_qty,
       sum((b->>'l_extendedprice')::float) as sum_base_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float)) as sum_disc_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float*(1+(b->>'l_tax')::float))) as sum_charge,
       avg((b->>'l_quantity')::float) as avg_qty, 
       avg((b->>'l_extendedprice')::float) as avg_price,
       avg((b->>'l_discount')::float) as avg_disc, 
       count(*) as count_order
from   customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where  (b->>'l_shipdate')::date <= date '1998-12-01' - interval '90' day 
     and (b->>'l_tax')::float >0.05 and (b->>'l_discount')::float < .5
group by b->>'l_returnflag', b->>'l_linestatus'
order by b->>'l_returnflag', b->>'l_linestatus';

--7c

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



select b->>'l_returnflag' as returnflat, b->>'l_linestatus', 
     sum((b->>'l_quantity')::float)as sum_qty,
       sum((b->>'l_extendedprice')::float) as sum_base_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float)) as sum_disc_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float*(1+(b->>'l_tax')::float))) as sum_charge,
       avg((b->>'l_quantity')::float) as avg_qty, 
       avg((b->>'l_extendedprice')::float) as avg_price,
       avg((b->>'l_discount')::float) as avg_disc, 
       count(*) as count_order
from   customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where  (b->>'l_shipdate')::date <= date '1998-12-01' - interval '90' day 
     and (b->>'l_tax')::float >0.07 and (b->>'l_discount')::float < .1
group by b->>'l_returnflag', b->>'l_linestatus'
order by b->>'l_returnflag', b->>'l_linestatus';



select b->>'l_returnflag' as returnflat, b->>'l_linestatus', 
     sum((b->>'l_quantity')::float)as sum_qty,
       sum((b->>'l_extendedprice')::float) as sum_base_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float)) as sum_disc_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float*(1+(b->>'l_tax')::float))) as sum_charge,
       avg((b->>'l_quantity')::float) as avg_qty, 
       avg((b->>'l_extendedprice')::float) as avg_price,
       avg((b->>'l_discount')::float) as avg_disc, 
       count(*) as count_order
from   customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where  (b->>'l_shipdate')::date <= date '1998-12-01' - interval '90' day 
     and (b->>'l_tax')::float >0.07 and (b->>'l_discount')::float < .1
group by b->>'l_returnflag', b->>'l_linestatus'
order by b->>'l_returnflag', b->>'l_linestatus';


select b->>'l_returnflag' as returnflat, b->>'l_linestatus', 
     sum((b->>'l_quantity')::float)as sum_qty,
       sum((b->>'l_extendedprice')::float) as sum_base_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float)) as sum_disc_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float*(1+(b->>'l_tax')::float))) as sum_charge,
       avg((b->>'l_quantity')::float) as avg_qty, 
       avg((b->>'l_extendedprice')::float) as avg_price,
       avg((b->>'l_discount')::float) as avg_disc, 
       count(*) as count_order
from   customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where  (b->>'l_shipdate')::date <= date '1998-12-01' - interval '90' day 
     and (b->>'l_tax')::float >0.07 and (b->>'l_discount')::float < .1
group by b->>'l_returnflag', b->>'l_linestatus'
order by b->>'l_returnflag', b->>'l_linestatus';


select b->>'l_returnflag' as returnflat, b->>'l_linestatus', 
     sum((b->>'l_quantity')::float)as sum_qty,
       sum((b->>'l_extendedprice')::float) as sum_base_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float)) as sum_disc_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float*(1+(b->>'l_tax')::float))) as sum_charge,
       avg((b->>'l_quantity')::float) as avg_qty, 
       avg((b->>'l_extendedprice')::float) as avg_price,
       avg((b->>'l_discount')::float) as avg_disc, 
       count(*) as count_order
from   customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where  (b->>'l_shipdate')::date <= date '1998-12-01' - interval '90' day 
     and (b->>'l_tax')::float >0.07 and (b->>'l_discount')::float < .1
group by b->>'l_returnflag', b->>'l_linestatus'
order by b->>'l_returnflag', b->>'l_linestatus';


select b->>'l_returnflag' as returnflat, b->>'l_linestatus', 
     sum((b->>'l_quantity')::float)as sum_qty,
       sum((b->>'l_extendedprice')::float) as sum_base_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float)) as sum_disc_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float*(1+(b->>'l_tax')::float))) as sum_charge,
       avg((b->>'l_quantity')::float) as avg_qty, 
       avg((b->>'l_extendedprice')::float) as avg_price,
       avg((b->>'l_discount')::float) as avg_disc, 
       count(*) as count_order
from   customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where  (b->>'l_shipdate')::date <= date '1998-12-01' - interval '90' day 
     and (b->>'l_tax')::float >0.07 and (b->>'l_discount')::float < .1
group by b->>'l_returnflag', b->>'l_linestatus'
order by b->>'l_returnflag', b->>'l_linestatus';


\o

EXPLAIN ANALYSE
select b->>'l_returnflag' as returnflat, b->>'l_linestatus', 
     sum((b->>'l_quantity')::float)as sum_qty,
       sum((b->>'l_extendedprice')::float) as sum_base_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float)) as sum_disc_price,
       sum((b->>'l_extendedprice')::float*(1-(b->>'l_discount')::float*(1+(b->>'l_tax')::float))) as sum_charge,
       avg((b->>'l_quantity')::float) as avg_qty, 
       avg((b->>'l_extendedprice')::float) as avg_price,
       avg((b->>'l_discount')::float) as avg_disc, 
       count(*) as count_order
from   customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where  (b->>'l_shipdate')::date <= date '1998-12-01' - interval '90' day 
     and (b->>'l_tax')::float >0.07 and (b->>'l_discount')::float < .1
group by b->>'l_returnflag', b->>'l_linestatus'
order by b->>'l_returnflag', b->>'l_linestatus';

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
--8a
select b->>'l_shipmode',
sum(case
    when a->'data'->>'o_orderpriority' ='1-URGENT       ' or a->'data'->>'o_orderpriority' ='2-HIGH         '
    then 1 else 0 end) as high_line_count,
sum(case
    when a->'data'->>'o_orderpriority' <> '1-URGENT       ' and a->'data'->>'o_orderpriority' <> '2-HIGH         ' 
    then 1 else 0 end) as low_line_count
from  customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where b->>'l_shipmode' in ('MAIL      ', 'SHIP      ') and
      (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
      and (b->>'l_shipdate')::date < (b->>'l_commitdate')::date
      and (b->>'l_receiptdate')::date >= date '1994-01-01'
      and (b->>'l_receiptdate')::date < date '1994-01-01' + interval '5' year
group by b->>'l_shipmode'
order by b->>'l_shipmode';

select b->>'l_shipmode',
sum(case
    when a->'data'->>'o_orderpriority' ='1-URGENT       ' or a->'data'->>'o_orderpriority' ='2-HIGH         '
    then 1 else 0 end) as high_line_count,
sum(case
    when a->'data'->>'o_orderpriority' <> '1-URGENT       ' and a->'data'->>'o_orderpriority' <> '2-HIGH         ' 
    then 1 else 0 end) as low_line_count
from  customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where b->>'l_shipmode' in ('MAIL      ', 'SHIP      ') and
      (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
      and (b->>'l_shipdate')::date < (b->>'l_commitdate')::date
      and (b->>'l_receiptdate')::date >= date '1994-01-01'
      and (b->>'l_receiptdate')::date < date '1994-01-01' + interval '5' year
group by b->>'l_shipmode'
order by b->>'l_shipmode';

select b->>'l_shipmode',
sum(case
    when a->'data'->>'o_orderpriority' ='1-URGENT       ' or a->'data'->>'o_orderpriority' ='2-HIGH         '
    then 1 else 0 end) as high_line_count,
sum(case
    when a->'data'->>'o_orderpriority' <> '1-URGENT       ' and a->'data'->>'o_orderpriority' <> '2-HIGH         ' 
    then 1 else 0 end) as low_line_count
from  customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where b->>'l_shipmode' in ('MAIL      ', 'SHIP      ') and
      (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
      and (b->>'l_shipdate')::date < (b->>'l_commitdate')::date
      and (b->>'l_receiptdate')::date >= date '1994-01-01'
      and (b->>'l_receiptdate')::date < date '1994-01-01' + interval '5' year
group by b->>'l_shipmode'
order by b->>'l_shipmode';

select b->>'l_shipmode',
sum(case
    when a->'data'->>'o_orderpriority' ='1-URGENT       ' or a->'data'->>'o_orderpriority' ='2-HIGH         '
    then 1 else 0 end) as high_line_count,
sum(case
    when a->'data'->>'o_orderpriority' <> '1-URGENT       ' and a->'data'->>'o_orderpriority' <> '2-HIGH         ' 
    then 1 else 0 end) as low_line_count
from  customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where b->>'l_shipmode' in ('MAIL      ', 'SHIP      ') and
      (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
      and (b->>'l_shipdate')::date < (b->>'l_commitdate')::date
      and (b->>'l_receiptdate')::date >= date '1994-01-01'
      and (b->>'l_receiptdate')::date < date '1994-01-01' + interval '5' year
group by b->>'l_shipmode'
order by b->>'l_shipmode';

select b->>'l_shipmode',
sum(case
    when a->'data'->>'o_orderpriority' ='1-URGENT       ' or a->'data'->>'o_orderpriority' ='2-HIGH         '
    then 1 else 0 end) as high_line_count,
sum(case
    when a->'data'->>'o_orderpriority' <> '1-URGENT       ' and a->'data'->>'o_orderpriority' <> '2-HIGH         ' 
    then 1 else 0 end) as low_line_count
from  customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where b->>'l_shipmode' in ('MAIL      ', 'SHIP      ') and
      (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
      and (b->>'l_shipdate')::date < (b->>'l_commitdate')::date
      and (b->>'l_receiptdate')::date >= date '1994-01-01'
      and (b->>'l_receiptdate')::date < date '1994-01-01' + interval '5' year
group by b->>'l_shipmode'
order by b->>'l_shipmode';

\o

EXPLAIN ANALYSE
select b->>'l_shipmode',
sum(case
    when a->'data'->>'o_orderpriority' ='1-URGENT       ' or a->'data'->>'o_orderpriority' ='2-HIGH         '
    then 1 else 0 end) as high_line_count,
sum(case
    when a->'data'->>'o_orderpriority' <> '1-URGENT       ' and a->'data'->>'o_orderpriority' <> '2-HIGH         ' 
    then 1 else 0 end) as low_line_count
from  customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
	   jsonb_array_elements(a->'data'->'lineitem') as b
where b->>'l_shipmode' in ('MAIL      ', 'SHIP      ') and
      (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
      and (b->>'l_shipdate')::date < (b->>'l_commitdate')::date
      and (b->>'l_receiptdate')::date >= date '1994-01-01'
      and (b->>'l_receiptdate')::date < date '1994-01-01' + interval '5' year
group by b->>'l_shipmode'
order by b->>'l_shipmode';


--8b
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

select b->>'l_shipmode',
sum(case
    when a->'data'->>'o_orderpriority' ='1-URGENT       ' or a->'data'->>'o_orderpriority' ='2-HIGH         '
    then 1 else 0 end) as high_line_count,
sum(case
    when a->'data'->>'o_orderpriority' <> '1-URGENT       ' and a->'data'->>'o_orderpriority' <> '2-HIGH         ' 
    then 1 else 0 end) as low_line_count
from  customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where b->>'l_shipmode' in ('MAIL      ', 'SHIP      ') and
      (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
      and (b->>'l_shipdate')::date < (b->>'l_commitdate')::date
      and (b->>'l_receiptdate')::date >= date '1994-01-01'
      and (b->>'l_receiptdate')::date < date '1994-01-01' + interval '1' year
group by b->>'l_shipmode'
order by b->>'l_shipmode';


select b->>'l_shipmode',
sum(case
    when a->'data'->>'o_orderpriority' ='1-URGENT       ' or a->'data'->>'o_orderpriority' ='2-HIGH         '
    then 1 else 0 end) as high_line_count,
sum(case
    when a->'data'->>'o_orderpriority' <> '1-URGENT       ' and a->'data'->>'o_orderpriority' <> '2-HIGH         ' 
    then 1 else 0 end) as low_line_count
from  customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where b->>'l_shipmode' in ('MAIL      ', 'SHIP      ') and
      (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
      and (b->>'l_shipdate')::date < (b->>'l_commitdate')::date
      and (b->>'l_receiptdate')::date >= date '1994-01-01'
      and (b->>'l_receiptdate')::date < date '1994-01-01' + interval '1' year
group by b->>'l_shipmode'
order by b->>'l_shipmode';


select b->>'l_shipmode',
sum(case
    when a->'data'->>'o_orderpriority' ='1-URGENT       ' or a->'data'->>'o_orderpriority' ='2-HIGH         '
    then 1 else 0 end) as high_line_count,
sum(case
    when a->'data'->>'o_orderpriority' <> '1-URGENT       ' and a->'data'->>'o_orderpriority' <> '2-HIGH         ' 
    then 1 else 0 end) as low_line_count
from  customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where b->>'l_shipmode' in ('MAIL      ', 'SHIP      ') and
      (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
      and (b->>'l_shipdate')::date < (b->>'l_commitdate')::date
      and (b->>'l_receiptdate')::date >= date '1994-01-01'
      and (b->>'l_receiptdate')::date < date '1994-01-01' + interval '1' year
group by b->>'l_shipmode'
order by b->>'l_shipmode';


select b->>'l_shipmode',
sum(case
    when a->'data'->>'o_orderpriority' ='1-URGENT       ' or a->'data'->>'o_orderpriority' ='2-HIGH         '
    then 1 else 0 end) as high_line_count,
sum(case
    when a->'data'->>'o_orderpriority' <> '1-URGENT       ' and a->'data'->>'o_orderpriority' <> '2-HIGH         ' 
    then 1 else 0 end) as low_line_count
from  customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where b->>'l_shipmode' in ('MAIL      ', 'SHIP      ') and
      (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
      and (b->>'l_shipdate')::date < (b->>'l_commitdate')::date
      and (b->>'l_receiptdate')::date >= date '1994-01-01'
      and (b->>'l_receiptdate')::date < date '1994-01-01' + interval '1' year
group by b->>'l_shipmode'
order by b->>'l_shipmode';


select b->>'l_shipmode',
sum(case
    when a->'data'->>'o_orderpriority' ='1-URGENT       ' or a->'data'->>'o_orderpriority' ='2-HIGH         '
    then 1 else 0 end) as high_line_count,
sum(case
    when a->'data'->>'o_orderpriority' <> '1-URGENT       ' and a->'data'->>'o_orderpriority' <> '2-HIGH         ' 
    then 1 else 0 end) as low_line_count
from  customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where b->>'l_shipmode' in ('MAIL      ', 'SHIP      ') and
      (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
      and (b->>'l_shipdate')::date < (b->>'l_commitdate')::date
      and (b->>'l_receiptdate')::date >= date '1994-01-01'
      and (b->>'l_receiptdate')::date < date '1994-01-01' + interval '1' year
group by b->>'l_shipmode'
order by b->>'l_shipmode';


\o


EXPLAIN ANALYSE
select b->>'l_shipmode',
sum(case
    when a->'data'->>'o_orderpriority' ='1-URGENT       ' or a->'data'->>'o_orderpriority' ='2-HIGH         '
    then 1 else 0 end) as high_line_count,
sum(case
    when a->'data'->>'o_orderpriority' <> '1-URGENT       ' and a->'data'->>'o_orderpriority' <> '2-HIGH         ' 
    then 1 else 0 end) as low_line_count
from  customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where b->>'l_shipmode' in ('MAIL      ', 'SHIP      ') and
      (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
      and (b->>'l_shipdate')::date < (b->>'l_commitdate')::date
      and (b->>'l_receiptdate')::date >= date '1994-01-01'
      and (b->>'l_receiptdate')::date < date '1994-01-01' + interval '1' year
group by b->>'l_shipmode'
order by b->>'l_shipmode';



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

--8c

select b->>'l_shipmode',
sum(case
    when a->'data'->>'o_orderpriority' ='1-URGENT       ' or a->'data'->>'o_orderpriority' ='2-HIGH         '
    then 1 else 0 end) as high_line_count,
sum(case
    when a->'data'->>'o_orderpriority' <> '1-URGENT       ' and a->'data'->>'o_orderpriority' <> '2-HIGH         ' 
    then 1 else 0 end) as low_line_count
from  customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where b->>'l_shipmode' in ('MAIL      ', 'SHIP      ') and
      (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
      and (b->>'l_shipdate')::date < (b->>'l_commitdate')::date
      and (b->>'l_receiptdate')::date >= date '1994-01-01'
      and (b->>'l_receiptdate')::date < date '1994-01-01' + interval '30' day
group by b->>'l_shipmode'
order by b->>'l_shipmode';

select b->>'l_shipmode',
sum(case
    when a->'data'->>'o_orderpriority' ='1-URGENT       ' or a->'data'->>'o_orderpriority' ='2-HIGH         '
    then 1 else 0 end) as high_line_count,
sum(case
    when a->'data'->>'o_orderpriority' <> '1-URGENT       ' and a->'data'->>'o_orderpriority' <> '2-HIGH         ' 
    then 1 else 0 end) as low_line_count
from  customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where b->>'l_shipmode' in ('MAIL      ', 'SHIP      ') and
      (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
      and (b->>'l_shipdate')::date < (b->>'l_commitdate')::date
      and (b->>'l_receiptdate')::date >= date '1994-01-01'
      and (b->>'l_receiptdate')::date < date '1994-01-01' + interval '30' day
group by b->>'l_shipmode'
order by b->>'l_shipmode';

select b->>'l_shipmode',
sum(case
    when a->'data'->>'o_orderpriority' ='1-URGENT       ' or a->'data'->>'o_orderpriority' ='2-HIGH         '
    then 1 else 0 end) as high_line_count,
sum(case
    when a->'data'->>'o_orderpriority' <> '1-URGENT       ' and a->'data'->>'o_orderpriority' <> '2-HIGH         ' 
    then 1 else 0 end) as low_line_count
from  customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where b->>'l_shipmode' in ('MAIL      ', 'SHIP      ') and
      (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
      and (b->>'l_shipdate')::date < (b->>'l_commitdate')::date
      and (b->>'l_receiptdate')::date >= date '1994-01-01'
      and (b->>'l_receiptdate')::date < date '1994-01-01' + interval '30' day
group by b->>'l_shipmode'
order by b->>'l_shipmode';

select b->>'l_shipmode',
sum(case
    when a->'data'->>'o_orderpriority' ='1-URGENT       ' or a->'data'->>'o_orderpriority' ='2-HIGH         '
    then 1 else 0 end) as high_line_count,
sum(case
    when a->'data'->>'o_orderpriority' <> '1-URGENT       ' and a->'data'->>'o_orderpriority' <> '2-HIGH         ' 
    then 1 else 0 end) as low_line_count
from  customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where b->>'l_shipmode' in ('MAIL      ', 'SHIP      ') and
      (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
      and (b->>'l_shipdate')::date < (b->>'l_commitdate')::date
      and (b->>'l_receiptdate')::date >= date '1994-01-01'
      and (b->>'l_receiptdate')::date < date '1994-01-01' + interval '30' day
group by b->>'l_shipmode'
order by b->>'l_shipmode';

select b->>'l_shipmode',
sum(case
    when a->'data'->>'o_orderpriority' ='1-URGENT       ' or a->'data'->>'o_orderpriority' ='2-HIGH         '
    then 1 else 0 end) as high_line_count,
sum(case
    when a->'data'->>'o_orderpriority' <> '1-URGENT       ' and a->'data'->>'o_orderpriority' <> '2-HIGH         ' 
    then 1 else 0 end) as low_line_count
from  customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where b->>'l_shipmode' in ('MAIL      ', 'SHIP      ') and
      (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
      and (b->>'l_shipdate')::date < (b->>'l_commitdate')::date
      and (b->>'l_receiptdate')::date >= date '1994-01-01'
      and (b->>'l_receiptdate')::date < date '1994-01-01' + interval '30' day
group by b->>'l_shipmode'
order by b->>'l_shipmode';

\o


EXPLAIN ANALYSE
select b->>'l_shipmode',
sum(case
    when a->'data'->>'o_orderpriority' ='1-URGENT       ' or a->'data'->>'o_orderpriority' ='2-HIGH         '
    then 1 else 0 end) as high_line_count,
sum(case
    when a->'data'->>'o_orderpriority' <> '1-URGENT       ' and a->'data'->>'o_orderpriority' <> '2-HIGH         ' 
    then 1 else 0 end) as low_line_count
from  customer_or_lm as c,jsonb_array_elements(c.value->'orders') as a,
     jsonb_array_elements(a->'data'->'lineitem') as b
where b->>'l_shipmode' in ('MAIL      ', 'SHIP      ') and
      (b->>'l_commitdate')::date < (b->>'l_receiptdate')::date
      and (b->>'l_shipdate')::date < (b->>'l_commitdate')::date
      and (b->>'l_receiptdate')::date >= date '1994-01-01'
      and (b->>'l_receiptdate')::date < date '1994-01-01' + interval '30' day
group by b->>'l_shipmode'
order by b->>'l_shipmode';


	