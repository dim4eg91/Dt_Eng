CREATE TABLE public.customer (
    c_custkey    integer,
    c_name         character varying(25),
    c_address     character varying(40),
    c_nationkey   integer,
    c_phone       character(15),
    c_acctbal     numeric(15,2)   ,       
    c_mktsegment  character(10)    ,      
    c_comment     character varying(117), 
    n_emp         character(2)           
);




CREATE TABLE public.nation (
n_nationkey  integer                ,
n_name       character(25)          ,
n_regionkey  integer                ,
n_comment    character varying(152) ,
n_emp        character(2)           
);


CREATE TABLE public.region (
r_regionkey  integer,
r_name       character(25),
r_comment    character varying(152),
n_emp        character(2)           
);



CREATE TABLE public.part (
p_partkey      integer       ,        
p_name         character varying(55) ,
p_mfgr         character(25)         ,
p_brand        character(10)         ,
p_type         character varying(25) ,
p_size         integer               ,
p_container    character(10)         ,
p_retailprice  numeric(15,2)         ,
p_comment      character varying(23) ,
n_emp          character(2)          
);


CREATE TABLE public.partsupp (
ps_partkey     integer                ,
ps_suppkey     integer                ,
ps_availqty    integer                ,
ps_supplycost  numeric(15,2)          ,
ps_comment     character varying(199) ,
n_emp          character(2)           
);




CREATE TABLE public.supplier (
s_suppkey    integer                ,
s_name       character(25)          ,
s_address    character varying(40)  ,
s_nationkey  integer                ,
s_phone      character(15)          ,
s_acctbal    numeric(15,2)          ,
s_comment    character varying(101) ,
n_emp        character(2)           
);