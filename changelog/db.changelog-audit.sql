--liquibase formatted sql

--changeset akno:1
CREATE TABLE user_audit (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    action VARCHAR(255),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

--changeset akno:2
CREATE TABLE product_audit (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    action VARCHAR(255),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products(id)
);
