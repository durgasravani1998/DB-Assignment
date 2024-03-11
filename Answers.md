1.Explain the relationship between the "Product" and "Product_Category" entities from the above diagram?
A.The relationship between "Product" and "Product_Category" is likely a one-to-many relationship, where one category can have multiple products associated with it.
This relationship is established through the category_id attribute in the "Product" entity, which serves as a foreign key referencing the id attribute in the "Product_Category" entity.
Each product is linked to a specific category through this foreign key relationship.
This structure allows for efficient organization and management of products into different categories, facilitating better cataloging and searching for products within specific categories.

2.How Could you ensure that each product in the "Product" table has a valid category assignbed to it?
A.In the "Product" table, you already have a category_id column that references the id column in the "Product_Category" table. You need to ensure that this column always contains valid values.
Declare Foreign Key Constraint:

When creating or modifying the schema, declare a foreign key constraint on the category_id column of the "Product" table, referencing the id column of the "Product_Category" table. This ensures that every value in the category_id column exists in the id column of the "Product_Category" table.
Set Foreign Key Constraint Actions:

Define the desired actions to be taken when a referenced row in the "Product_Category" table is updated or deleted. Options typically include:
CASCADE: Automatically update or delete related rows in the "Product" table.
RESTRICT: Prevent updates or deletions that would cause violation of the foreign key constraint.
SET NULL: Set the value of the foreign key column to NULL if the referenced row is deleted.
SET DEFAULT: Set the value of the foreign key column to its default value if the referenced row is deleted.

