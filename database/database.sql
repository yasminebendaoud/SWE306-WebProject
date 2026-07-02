
-- FOOD ORDERING & RESTAURANT MANAGEMENT SYSTEM
CREATE DATABASE IF NOT EXISTS food_ordering_db;
USE food_ordering_db;


-- USERS TABLE
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    role ENUM('customer','admin') DEFAULT 'customer'
);


-- CATEGORIES TABLE
CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);


-- MENU TABLE
CREATE TABLE menu (
    menu_id INT AUTO_INCREMENT PRIMARY KEY,
    food_name VARCHAR(100) NOT NULL,
    description TEXT,
    ingredients TEXT,
    nutrition_info VARCHAR(255),
    price DECIMAL(10,2) NOT NULL,
    image VARCHAR(255),
    rating DECIMAL(2,1),
    category_id INT,

    FOREIGN KEY (category_id)
    REFERENCES categories(category_id)
);


-- ORDERS TABLE
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_price DECIMAL(10,2),
    status VARCHAR(30) DEFAULT 'Pending',

    FOREIGN KEY (user_id)
    REFERENCES users(user_id)
);


-- ORDER ITEMS TABLE

CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    menu_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2),

    FOREIGN KEY (order_id)
    REFERENCES orders(order_id),

    FOREIGN KEY (menu_id)
    REFERENCES menu(menu_id)
);