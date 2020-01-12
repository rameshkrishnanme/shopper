
DROP TABLE IF EXISTS Product ;

CREATE TABLE IF NOT EXISTS Product (
  ID_PRODUCT INT NOT NULL,
  PRODUCT_NAME VARCHAR(45) NULL,
  PRODUCT_PRICE VARCHAR(45) NULL,
  PRODUCT_IMAGE VARCHAR(45) NULL,
  DISCOUNT VARCHAR(45) NULL,
  RATING FLOAT NULL,
  HIGHEST_CATEGORY_DISCOUNT VARCHAR(45) NULL,
  PRODUCT_CATEGORY_NAME VARCHAR(45) NULL,
  PRIMARY KEY (ID_PRODUCT)
);


INSERT INTO Product (ID_PRODUCT,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_IMAGE,DISCOUNT,RATING,HIGHEST_CATEGORY_DISCOUNT,PRODUCT_CATEGORY_NAME) 
VALUES (1,'Samsung 1100','1200','Samsung1100.jpg','10',4.2,'40','Mobiles,Electronics');
INSERT INTO Product (ID_PRODUCT,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_IMAGE,DISCOUNT,RATING,HIGHEST_CATEGORY_DISCOUNT,PRODUCT_CATEGORY_NAME) 
VALUES (2,'Sony XA','2000','SonyXA.jpg','15',4.4,'40','Mobiles,Electronics');
INSERT INTO Product (ID_PRODUCT,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_IMAGE,DISCOUNT,RATING,HIGHEST_CATEGORY_DISCOUNT,PRODUCT_CATEGORY_NAME) 
VALUES (3,'Apple7','20000','Apple7.jpg','10',5,'40','Mobiles,Electronics');
INSERT INTO Product (ID_PRODUCT,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_IMAGE,DISCOUNT,RATING,HIGHEST_CATEGORY_DISCOUNT,PRODUCT_CATEGORY_NAME) 
VALUES (4,'Dell XP 3100','60000','DellXP3100.jpg','7',3,'40','Laptop,Electronics');
INSERT INTO Product (ID_PRODUCT,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_IMAGE,DISCOUNT,RATING,HIGHEST_CATEGORY_DISCOUNT,PRODUCT_CATEGORY_NAME) 
VALUES (5,'VIAO Sony 5100','56000','VIAOSony5100.jpg','9',5,'30','Laptop,Electronics');
INSERT INTO Product (ID_PRODUCT,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_IMAGE,DISCOUNT,RATING,HIGHEST_CATEGORY_DISCOUNT,PRODUCT_CATEGORY_NAME) 
VALUES (6,'Samsung Gear 3','12000','SamsungGear3.jpg','15',4.9,'30','Laptop,Electronics');
INSERT INTO Product (ID_PRODUCT,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_IMAGE,DISCOUNT,RATING,HIGHEST_CATEGORY_DISCOUNT,PRODUCT_CATEGORY_NAME) 
VALUES (7,'Levis 501','2000','Levis500.jpg','12',5,'10','Jeans,Fashion');

INSERT INTO Product (ID_PRODUCT,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_IMAGE,DISCOUNT,RATING,HIGHEST_CATEGORY_DISCOUNT,PRODUCT_CATEGORY_NAME) 
VALUES (11,'Tops','1200','Top120.jpg','10',3.9,'40','Men Fashion');
INSERT INTO Product (ID_PRODUCT,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_IMAGE,DISCOUNT,RATING,HIGHEST_CATEGORY_DISCOUNT,PRODUCT_CATEGORY_NAME) 
VALUES (12,'Polo','1999','Polo123.jpg','15',4.2,'40','Men Fashion');
INSERT INTO Product (ID_PRODUCT,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_IMAGE,DISCOUNT,RATING,HIGHEST_CATEGORY_DISCOUNT,PRODUCT_CATEGORY_NAME) 
VALUES (13,'Shirts','1289','Shirts788.jpg','10',5,'40','Women Fashion');
INSERT INTO Product (ID_PRODUCT,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_IMAGE,DISCOUNT,RATING,HIGHEST_CATEGORY_DISCOUNT,PRODUCT_CATEGORY_NAME) 
VALUES (14,'Dresses','8900','Dress900.jpg','7',3,'40','Women Fashion');
INSERT INTO Product (ID_PRODUCT,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_IMAGE,DISCOUNT,RATING,HIGHEST_CATEGORY_DISCOUNT,PRODUCT_CATEGORY_NAME) 
VALUES (15,'Kids','890','Kids877.jpg','9',5,'30','Kids Fashion');
INSERT INTO Product (ID_PRODUCT,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_IMAGE,DISCOUNT,RATING,HIGHEST_CATEGORY_DISCOUNT,PRODUCT_CATEGORY_NAME) 
VALUES (16,'Football Shoes','12000','Football123.jpg','15',4.9,'30','Football, Sports');
INSERT INTO Product (ID_PRODUCT,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_IMAGE,DISCOUNT,RATING,HIGHEST_CATEGORY_DISCOUNT,PRODUCT_CATEGORY_NAME) 
VALUES (17,'Cricket Kits','2000','Cricketskits.jpg','12',5,'10','Cricket, Sports');
INSERT INTO Product (ID_PRODUCT,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_IMAGE,DISCOUNT,RATING,HIGHEST_CATEGORY_DISCOUNT,PRODUCT_CATEGORY_NAME) 
VALUES (18,'Basket Balls','700','BasketBalls.jpg','12',5,'10','BasketBall, Sports');

INSERT INTO Product (ID_PRODUCT,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_IMAGE,DISCOUNT,RATING,HIGHEST_CATEGORY_DISCOUNT,PRODUCT_CATEGORY_NAME) 
VALUES (21,'Tables','1200','TablesApple.jpg','10',3.9,'40','Tablets,Electronics');
INSERT INTO Product (ID_PRODUCT,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_IMAGE,DISCOUNT,RATING,HIGHEST_CATEGORY_DISCOUNT,PRODUCT_CATEGORY_NAME) 
VALUES (22,'Fitbit','1999','Fitbit233.jpg','15',4.2,'40','Fitbit,Electronics');
INSERT INTO Product (ID_PRODUCT,PRODUCT_NAME,PRODUCT_PRICE,PRODUCT_IMAGE,DISCOUNT,RATING,HIGHEST_CATEGORY_DISCOUNT,PRODUCT_CATEGORY_NAME) 
VALUES (23,'Twitch','1289','Twitch234.jpg','10',5,'40','Twitch,Electronics');
