SELECT first 10 id, SUM(price) as total_price FROM catalog,
(select id_cat from items,


(select id_items from orders_lists,
(select id as order_id from orders where orders.mk_date between date '01.01.2010'
and date '01.01.2015')
where orders_lists.id_order = order_id)

where items.id = id_items)
where catalog.id = id_cat GROUP BY id ORDER BY total_price DESC
