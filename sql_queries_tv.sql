CREATE TABLE brands (
	brand_id	INTEGER NOT NULL UNIQUE,
	brand_name	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("brand_id" AUTOINCREMENT)
);

CREATE TABLE resolutions (
	resolution_id	INTEGER NOT NULL UNIQUE,
	resolution_name	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("resolution_id" AUTOINCREMENT)
);

CREATE TABLE panel_types (
	panel_type_id	INTEGER NOT NULL UNIQUE,
	panel_type_name	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("panel_type_id" AUTOINCREMENT)
);

CREATE TABLE Televisions (
	id	INTEGER NOT NULL UNIQUE,
	catalog_number	TEXT NOT NULL UNIQUE,
	brand_id	INTEGER NOT NULL,
	model	TEXT NOT NULL,
	screen_size	REAL NOT NULL,
	resolution_id	INTEGER NOT NULL,
	price	REAL NOT NULL DEFAULT 0 CHECK(price>=0),
	stock_quantity	INTEGER NOT NULL DEFAULT 0 CHECK(quantity_stock>=0),
	release_year	INTEGER NOT NULL CHECK(year_release>0),
	smart_tv	Boolean NOT NULL DEFAULT 0,
	os	TEXT,
	panel_type_id	INTEGER NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY (brand_id) REFERENCES brands(brand_id) ON DELETE CASCADE ,
	FOREIGN KEY (resolution_id) REFERENCES resolutions(resolution_id) ON DELETE CASCADE,
	FOREIGN KEY (panel_type_id) REFERENCES panel_types(panel_type_id) ON DELETE CASCADE
)

INSERT INTO brands (brand_name) VALUES
('Samsung'),
('LG'),
('Sony');

INSERT INTO resolutions (resolution_name) VALUES
('4K'),
('8K'),
('Full HD');

INSERT INTO panel_types (panel_type_name) VALUES
('OLED'),
('QLED'),
('LED');

INSERT INTO Televisions (
	
	catalog_number,	brand_id,	model,	screen_size,	resolution_id,	price,	stock_quantity,
	release_year,	smart_tv,	os,	panel_type_id) VALUES 
	('323605',1,'75QM8B',75 ,1,5799.99,207,2023,True,'Google-tv',2),
	('B0CVS1XHJL',2,'UN65DU7200FXZA',65.5,2,6497.99,100,2024,True,'WebOS-LG-77',3)

INSERT INTO Televisions (catalog_number,	brand_id,	model,	screen_size,	resolution_id,	price,	stock_quantity,
	release_year,	smart_tv,	os,	panel_type_id)
	
	VALUES ('B0CXG3HMX1',3,'‎VFD40M-08',40,3,6399.99,2986,2020,False,Null,3)
	
