 CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    registration_date DATE
);
 
 
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);
 
 
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(30),
    total DECIMAL(10,2),
 
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);
 
 
 
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
 
    FOREIGN KEY (order_id)
        REFERENCES orders(order_id),
 
    FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);
 
 
 
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    performance_score INT,
    manager_id INT,
    joining_date DATE,
 
    FOREIGN KEY (manager_id)
        REFERENCES employees(employee_id)
);
 
 
CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(30),
    balance DECIMAL(12,2),
    opened_date DATE,
 
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);
 
 
 
