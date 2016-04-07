create or alter procedure SELLING_STATS (
    st_date date)
returns (
    tmpx0 date,
    tmpx1 date,
    tl_amount integer)
as
declare variable TMP2 integer = 0;
declare variable TMP0 date;
declare variable TMP1 date;
BEGIN
  tmp0 = st_date;
  tmp1 = tmp0;
  while (tmp2 < 8) do
  begin
    tmp0 = tmp1;
    tmp1 = dateadd(month, 3, tmp0);
    tmpx0 = tmp0;
    tmpx1 = tmp1;
    FOR select SUM(price) from catalog, (select id_cat from items, (select id_items as         id_item from orders_lists, (select id as order_id from orders where orders.mk_date         between :tmp0 and :tmp1) where orders_lists.id_order = order_id) where items.id =         id_item) where catalog.id = id_cat into :tl_amount do
      BEGIN
        SUSPEND;
      END
    tmp2 = tmp2 + 1;
  end
END