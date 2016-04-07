CREATE OR ALTER TRIGGER ORDERS_LISTS_BI0 FOR ORDERS_LISTS
ACTIVE BEFORE INSERT POSITION 0
AS
declare variable amnt int = 0;
begin
  select COUNT(*) from orders_lists where id_order = NEW.id_order
  AND id_items = NEW.id_items into :amnt;
  if (amnt != 0) then
    exception;
end