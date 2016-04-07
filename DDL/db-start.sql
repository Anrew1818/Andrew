CREATE TABLE countries (
	id int NOT NULL,
	country char(100) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE catalog (
	id int NOT NULL,
	title int NOT NULL,
	id_class char(20) NOT NULL,
	id_country int NOT NULL,
	id_def int NOT NULL,
	id_caliber int NOT NULL,
	price int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE definition (
	id int NOT NULL,
	application_area char(50) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE caliber (
	id int NOT NULL,
	caliber int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE items (
	id int NOT NULL,
	id_cat int NOT NULL,
	unique_number int NOT NULL,
	is_sold int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE ttc (
	id int NOT NULL,
	cat_id int NOT NULL,
	mass int NOT NULL,
	bullet_mass int NOT NULL,
	bullet_type int NOT NULL,
	barrel_type int NOT NULL,
	start_speed int NOT NULL,
	range int NOT NULL,
	length int NOT NULL,
	width int NOT NULL,
	capacity int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE stock (
	id int NOT NULL,
	id_cat int NOT NULL,
	quantity int NOT NULL,
	PRIMARY KEY (id)
);

commit;

ALTER TABLE catalog ADD CONSTRAINT catalog_fk0 FOREIGN KEY (id_country) REFERENCES countries(id);

ALTER TABLE catalog ADD CONSTRAINT catalog_fk1 FOREIGN KEY (id_def) REFERENCES definition(id);

ALTER TABLE catalog ADD CONSTRAINT catalog_fk2 FOREIGN KEY (id_caliber) REFERENCES caliber(id);

ALTER TABLE items ADD CONSTRAINT items_fk0 FOREIGN KEY (id_cat) REFERENCES catalog(id);

ALTER TABLE ttc ADD CONSTRAINT ttc_fk0 FOREIGN KEY (cat_id) REFERENCES catalog(id);

ALTER TABLE stock ADD CONSTRAINT stock_fk0 FOREIGN KEY (id_cat) REFERENCES catalog(id);

commit;