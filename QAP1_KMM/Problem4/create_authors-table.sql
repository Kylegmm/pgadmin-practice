CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birthdate DATE,
    nationality VARCHAR(50)
);
