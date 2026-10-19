-- Khởi tạo Database
CREATE DATABASE IF NOT EXISTS product_management CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE product_management;

-- Tạo bảng products
DROP TABLE IF EXISTS products;
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL
);

-- Thêm dữ liệu mẫu
INSERT INTO products (name, price, quantity) VALUES
('Bàn phím cơ AKKO 3087', 1250000.00, 15),
('Chuột không dây Logitech G304', 450000.00, 30),
('Màn hình Dell UltraSharp 24"', 5200000.00, 8),
('Tai nghe Sony WH-1000XM4', 4990000.00, 12);
