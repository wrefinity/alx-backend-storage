-- A script that trigger on an event and decrease item quanities
CREATE TRIGGER decrement_qty AFTER INSERT ON orders FOR EACH ROW
UPDATE items SET quantity = quantity - NEW.number WHERE name=NEW.item_name;
