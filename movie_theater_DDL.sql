CREATE TABLE customers(
    customer_id  SERIAL PRIMARY KEY,
    full_name VARCHAR(50),
    email_addresse  VARCHAR(60),
    movie_id  INT,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)

)

CREATE TABLE tickets(
    ticket_id SERIAL  PRIMARY KEY,
    full_name VARCHAR(50),
    movie_id  INT,
    ticket_date DATE,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
)

CREATE TABLE concessions(
   concession_id  SERIAL PRIMARY KEY,
   customer_id  INT,
   item_id INT,
   FOREIGN  KEY (customer_id) REFERENCES customers(customer_id),
   FOREIGN KEY(item_id) REFERENCES items(item_id)
  
)



-- ALTER TABLE items
-- ADD CONSTRAINT item_id
-- FOREIGN KEY(item_id) REFERENCES items(item_id);

CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    full_name VARCHAR(50),
    title VARCHAR(100),
    movie_date DATE
)

CREATE TABLE items(
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(200),
    price INT
)