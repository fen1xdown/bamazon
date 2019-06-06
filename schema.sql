DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products(
  item_id INT AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(45) NOT NULL,
  product_sales DECIMAL(10,2) DEFAULT 0,
  department_name VARCHAR(45) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  stock_quantity INT(10) NOT NULL,
  primary key(item_id)
);

SELECT * FROM products;

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Squad", "Video Games", 39.99, 150),
  ("ARMA 3", "Video Games", 29.99, 200),
  ("Crate of Cherry Bawls", "Food and Drink", 29.99, 50),
  ("Aviator Sunglasses", "Apparel", 250.00, 5),
  ("Ripped Jeans", "Apparel", 99.99, 35),
  ("Bath Towel", "Household Items", 24.99, 42),
  ("Black Hawk Down", "Movies", 9.00, 25),
  ("Mad Max: Fury Road", "Movies", 25.50, 57),
  ("Dungeons and Dragons Fifth Edition Complete Set", "Tabletop Games", 199.99, 35),
  ("Secret Hitler", "Tabletop Games", 24.99, 23);

  CREATE TABLE departments(
  department_id INT AUTO_INCREMENT NOT NULL,
  department_name VARCHAR(45) NOT NULL,
  over_head_costs DECIMAL(10,2) NOT NULL,
  primary key(department_id)
);

SELECT * FROM departments;

INSERT INTO departments (department_name, over_head_costs)
VALUES ("Video Games", 150),
  ("Food and Drink", 500),
  ("Apparel", 175),
  ("Household Items", 350),
  ("Movies", 55),
  ("Tabletop Games", 25);
