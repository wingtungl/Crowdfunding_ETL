-- Create contacts table
CREATE TABLE contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50)NOT NULL,
	email VARCHAR(50)NOT NULL,
    PRIMARY KEY (contact_id)
);

--Create category table
CREATE TABLE category (
    category_id VARCHAR(4) NOT NULL,
    category VARCHAR(30) NOT NULL,
    PRIMARY KEY (category_id)
);

--Create subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(8) NOT NULL,
    subcategory VARCHAR(50) NOT NULL,
    PRIMARY KEY (subcategory_id)
);

--Create compaign table
CREATE TABLE compaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
	company_name VARCHAR(50)NOT NULL,
	description VARCHAR(100)NOT NULL,
	goal DECIMAL(10,2)NOT NULL,
	pledged DECIMAL(10,2)NOT NULL,
	outcome VARCHAR(50)NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(2)NOT NULL,
	currency VARCHAR(3)NOT NULL,
	launched_date DATENOT NULL,
	end_date DATENOT NULL,
	category_id VARCHAR(4) NOT NULL,
	subcategory_id VARCHAR(8)NOT NULL,
    PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

--Display data from the tables
SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM contacts
SELECT * FROM compaign