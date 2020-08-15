-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;
USE ecommerce_db;

CREATE TABLE Category (
  id INT NOT NULL  AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(45) NOT NULL
  );

CREATE TABLE Product (
  id INT NOT NULL  AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(45) NOT NULL,
  price DECIMAL(10,2)  NOT NULL, 
  stock  INT UNSIGNED NOT NULL DEFAULT 10, 
  category_id INT NOT NULL,
 INDEX cat_id (category_id),
 CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES category(id) ON DELETE CASCADE
); 
  

CREATE TABLE Tag (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  tag_name VARCHAR(30) NOT NULL  
);

CREATE TABLE ProductTag (
  id INT NOT NULL  AUTO_INCREMENT PRIMARY KEY,
  product_id INT  NOT NULL, 
  tag_id INT  NOT NULL,
  INDEX prod_id (product_id),
  CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE,
  INDEX tag_id (tag_id),
  CONSTRAINT fk_tag FOREIGN KEY (tag_id) REFERENCES tag(id) ON DELETE CASCADE 
);

