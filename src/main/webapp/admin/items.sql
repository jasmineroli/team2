create table items(
    item_number number(10),
    item_name varchar2(100),
    item_type1 varchar2(100),
    item_type2 varchar2(100),
    item_option varchar2(100),
    item_cost number(10),
    item_discount_rate number(10),
    item_sells number(10),
    item_remains number(10),
    item_reigist_date varchar2(100),
    item_memo varchar2(1000)
);
insert into items values(1,'물건','종류1','종류2','옵션',10000,1000,10,100,200,'6/10','메모 없음');
select * from items;
drop table items;
commit;