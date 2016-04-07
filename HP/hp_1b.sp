create or alter procedure STAT_CO
returns (
    ID_CO integer,
    CO_SELL_AMOUNT integer)
as
begin
  FOR select FIRST 3 id, COUNT(id) as ids from catalog, (select id_cat from items,
  (select id_items as id_item from orders_lists, (select id as order_id from        orders) where orders_lists.id_order = order_id) where items.id = id_item) 
  where catalog.id = id_cat GROUP BY id ORDER BY ids DESC into :id_co, :co_sell_amount do
    begin
        suspend;
    END
end