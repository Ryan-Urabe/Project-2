CREATE TABLE category (
    category_id VARCHAR PRIMARY KEY,
    category VARCHAR
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR PRIMARY KEY,
    subcategory VARCHAR
);

CREATE TABLE contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR
);

CREATE TABLE campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT REFERENCES contacts(contact_id),
    company_name VARCHAR,
    description VARCHAR,
    goal INT,
    pledged INT,
    outcome VARCHAR,
    backers_count INT,
    country VARCHAR,
    currency VARCHAR,
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR REFERENCES category (category_id),
    subcategory_id VARCHAR REFERENCES subcategory(subcategory_id)
);

