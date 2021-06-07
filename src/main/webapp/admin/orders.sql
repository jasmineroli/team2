create table items(
    item_number number(10),
    item_name varchar2(100),
    item_type1 varchar2(100),
    item_type2 varchar2(100),
    item_option varchar2(100),
    item_price number(10),
    item_discount_rate number(10),
    item_sells number(10),
    item_remains number(10),
    item_register_date varchar2(100),
    item_memo varchar2(1000)
);
select max(item_number) from items;
select * from items;
drop table items;
commit;