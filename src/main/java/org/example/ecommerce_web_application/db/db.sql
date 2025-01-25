CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE categories (
                            category_id INT AUTO_INCREMENT PRIMARY KEY,
                            name VARCHAR(255) NOT NULL,
                            description VARCHAR(255)
);
CREATE TABLE products (
                          product_id INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(255) NOT NULL,
                          description VARCHAR(255),
                          price DECIMAL(10, 2) NOT NULL,
                          stock INT NOT NULL,
                          category_id INT,
                          image_url VARCHAR(255),
                          FOREIGN KEY (category_id) REFERENCES categories(category_id)
);
CREATE TABLE users (
                       user_id INT AUTO_INCREMENT PRIMARY KEY,
                       name VARCHAR(255) NOT NULL,
                       email VARCHAR(255) NOT NULL UNIQUE,
                       password VARCHAR(255) NOT NULL,
                       phone VARCHAR(15),
                       address VARCHAR(255),
                       role ENUM('admin', 'customer') DEFAULT 'customer',
                       active BOOLEAN DEFAULT TRUE
);
CREATE TABLE orders (
                        order_id INT AUTO_INCREMENT PRIMARY KEY,
                        user_id INT,
                        order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
                        status ENUM('pending', 'shipped', 'delivered', 'canceled') DEFAULT 'pending',
                        total DECIMAL(10, 2) NOT NULL,
                        FOREIGN KEY (user_id) REFERENCES users(user_id)
);
CREATE TABLE order_details (
                               detail_id INT AUTO_INCREMENT PRIMARY KEY,
                               order_id INT,
                               product_id INT,
                               quantity INT NOT NULL,
                               price DECIMAL(10, 2) NOT NULL,
                               FOREIGN KEY (order_id) REFERENCES orders(order_id),
                               FOREIGN KEY (product_id) REFERENCES products(product_id)
);
CREATE TABLE cart (
                      cart_id INT AUTO_INCREMENT PRIMARY KEY,
                      user_id INT,
                      product_id INT,
                      quantity INT NOT NULL,
                      FOREIGN KEY (user_id) REFERENCES users(user_id),
                      FOREIGN KEY (product_id) REFERENCES products(product_id)
);