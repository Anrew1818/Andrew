CREATE TABLE classes (
	id int NOT NULL,
	class char(20) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE clients (
	id bigint NOT NULL,
	name int NOT NULL,
	repo int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE orders (
	id int NOT NULL,
	id_client int NOT NULL,
	mk_date DATETIME NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE oders_lists (
	id_order int NOT NULL,
	id_item int NOT NULL
);

commit;

alter table catalog ALTER COLUMN id_class int;

ALTER TABLE catalog ADD CONSTRAINT catalog_fk0 FOREIGN KEY (id_class) REFERENCES classes(id);

ALTER TABLE orders ADD CONSTRAINT orders_fk0 FOREIGN KEY (id_client) REFERENCES clients(id);

ALTER TABLE oders_lists ADD CONSTRAINT oders_lists_fk0 FOREIGN KEY (id_order) REFERENCES orders(id);

ALTER TABLE oders_lists ADD CONSTRAINT oders_lists_fk1 FOREIGN KEY (id_item) REFERENCES items(id);

commit;
