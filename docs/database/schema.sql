CREATE DATABASE HawkLedger;
USE HawkLedger;

CREATE TABLE users (
   id INT AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(100),
   email VARCHAR(100)
);

CREATE TABLE categories (
   id INT AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(100)
);

CREATE TABLE transactions (
   id INT AUTO_INCREMENT PRIMARY KEY,
   transaction_date DATE NOT NULL,
   amount DECIMAL(10,2) NOT NULL,
   type ENUM('income', 'expense') NOT NULL,
   description VARCHAR(255),
   category_id INT,
   user_id INT,
   CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES categories(id),
   CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)
);
