--Используя таблицы customer, nation, region необходимо понять, сколько клиентов в базе из Азии?

select r_name, n_name, c_custkey  from region r 
join nation n
on n.n_regionkey = r.r_regionkey 
join customer c 
on n.n_nationkey = c.c_nationkey 
where r.r_name = 'ASIA';


--Необходимо создать вью v1 в которой будут отображаться схемы и имена всех вью в текущей базе данных. Для получения этой информации нужно использовать pg_class и pg_namespace.

--Сколько всего строк будет выдавать эта вью?

--pg_class и pg_namespace


select * from pg_class;
select relname, relkind
from pg_class
where relkind='v';

select * from pg_namespace;


select distinct relnamespace from pg_class; --уникальные id схем БД

select pn.nspname, pc.relname  from pg_namespace pn
join pg_class pc
on pn."oid" = pc.relnamespace
where pc.relkind like 'v';


create view v1 as (
	select pn.nspname, pc.relname  from pg_namespace pn
    join pg_class pc
    on pn."oid" = pc.relnamespace
    where pc.relkind like 'v');


   
drop view v1;   
   
select count(*) from v1 v;
select * from v1;



SELECT 
    table_schema AS schema,
    table_name AS view
FROM 
    information_schema.views

ORDER BY 
    schema ASC, 
    view ASC;


select * from public.partsupp;
   


select avg(ps_supplycost)
from public.partsupp;

drop table public.partsupp;


CREATE TABLE public.partsupp (
	ps_partkey int4 NULL,
	ps_suppkey int4 NULL,
	ps_availqty int4 NULL,
	ps_supplycost numeric(15, 2) NULL,
	ps_comment text NULL,
	n_emp bpchar(2) NULL
);