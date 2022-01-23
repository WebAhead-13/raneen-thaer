BEGIN;

DROP TABLE IF EXISTS users, books, post_comments CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  age INTEGER,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  location VARCHAR(255)
);

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  text_content TEXT
);

CREATE TABLE post_comments (
  id SERIAL PRIMARY KEY,
  post_id INTEGER REFERENCES books(id),
  user_id INTEGER REFERENCES users(id),
  text_content TEXT
);

INSERT INTO users (username, age, first_name, last_name, location) VALUES
  ('mario1976', 44, 'Alisha', 'Clayton', 'Middlehill, UK'),
  ('Notne1991', 36, 'Chelsea', 'Cross', 'Sunipol, UK'),
  ('Moull1990', 41, 'Skye', 'Hobbs', 'Wanlip, UK'),
  ('Spont1935', 72, 'Matthew', 'Griffin', 'Saxilby, UK')
;

INSERT INTO books (text_content, user_id) VALUES
  ('Harry potter.', 1),
  ('Game Of Thrones.', 2),
  ('Im malala.', 3)
;



COMMIT;