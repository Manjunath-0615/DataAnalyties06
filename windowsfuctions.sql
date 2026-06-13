create database windoe_1;
use windoe_1;
CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    quantity INT
);
INSERT INTO product
VALUES
(1, 'Laptop', 55000.00, 10),
(2, 'Mouse', 500.00, 50),
(3, 'Keyboard', 1200.00, 30);
SELECT * FROM product;
SELECT product_name,
       price,
       ROW_NUMBER() OVER(ORDER BY price DESC) AS row_num
FROM product;
SELECT product_name,
       price,
       RANK() OVER(ORDER BY price DESC) AS rank_no
FROM product;
SELECT product_name,
       price,
       DENSE_RANK() OVER(ORDER BY price DESC) AS dense_rank_no
FROM product;
SELECT product_id,
       product_name,
       price,
       quantity,
       ROW_NUMBER() OVER (
           PARTITION BY quantity
           ORDER BY price DESC
       ) AS row_num
FROM product;
PARTITION BY quantity = creates separate groups.
ORDER BY price DESC = sorts rows inside each group.
ROW_NUMBER() = assigns numbers starting from 1 for every group separately.
SELECT product_name,
       quantity,
       price,
       RANK() OVER (
           PARTITION BY quantity
           ORDER BY price DESC
       ) AS rank_no
FROM product;
SELECT product_name,
       quantity,
       price,
       DENSE_RANK() OVER (
           PARTITION BY quantity
           ORDER BY price DESC
       ) AS dense_rank_no
FROM product;