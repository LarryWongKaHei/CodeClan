DROP TABLE IF EXISTS users;

DROP TABLE IF EXISTS tasks;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);


CREATE TABLE tasks (
  id SERIAL PRIMARY KEY,
  description VARCHAR(255),
  duration INT,
  completed BOOLEAN DEFAULT FALSE,
  user_id INT NOT NULL REFERENCES users(id)
);

INSERT INTO tasks (description, duration) 
VALUES ('Walk Dog', 60);

INSERT INTO tasks (description, duration) 
VALUES ('Feed Cat', 5);

