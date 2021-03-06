DROP TABLE IF EXISTS orders;
CREATE TABLE orders
(
    id            INT PRIMARY KEY AUTO_INCREMENT,
    userid        INT NOT NULL,
    paydate       TIMESTAMP NOT NULL,
    paid          BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (userid) REFERENCES users(id)
);

ALTER TABLE orders ADD delivered BOOLEAN DEFAULT FALSE;

ALTER TABLE cupcake ADD CONSTRAINT FOREIGN KEY (orderid) REFERENCES orders(id);

UPDATE properties
SET value = '5'
WHERE name = "version";