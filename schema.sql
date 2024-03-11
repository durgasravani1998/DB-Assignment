3.Create schema in any Database script or any ORM(OBJECT RELATIONAL MAPPING).
A.CREATE TABLE Product_Category (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255),
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create Product table
CREATE TABLE Product (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    product_inventory VARCHAR(255),
    description VARCHAR(255),
    SKU VARCHAR(50),
    quantity INT,
    category_id INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES Product_Category(id)
);

-- Create Discount table
CREATE TABLE Discount (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255),
    discount_percent DECIMAL(5,2),
    active BOOLEAN,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);
