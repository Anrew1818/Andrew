create or alter procedure stat_cl
returns (
    ID_CL integer,
    CL_PR integer)
as
begin
  FOR select first 3 id_class, SUM(price) as cl_pr from catalog, (select id_cat
  from items, (select id_items as id_item from orders_lists, (select id as order_id from         orders) where orders_lists.id_order = order_id) where items.id = id_item) where         catalog.id=id_cat group by id_class order by cl_pr DESC into :id_cl, :cl_pr do
    begin
        suspend;
    END
end