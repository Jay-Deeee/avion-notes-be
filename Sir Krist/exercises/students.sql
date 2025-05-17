DROP DATABASE avionschool_development;
CREATE DATABASE avionschool_development;

\connect avionschool_development;

CREATE TABLE lessons (
  id integer PRIMARY KEY,
  name character varying(255) NOT NULL,
  description text,
  front_end boolean DEFAULT false,
  back_end boolean DEFAULT false,
  price numeric(8, 2) DEFAULT 0.0,
  created_at timestamp without time zone NOT NULL,
  updated_at timestamp without time zone NOT NULL
);

INSERT INTO lessons (id, name, description, price, created_at, updated_at, back_end)
VALUES (1, 'Ruby', 'Ruby is an interpreted, high-level, general purpose programming language', 199.99, current_timestamp, current_timestamp, true);
INSERT INTO lessons (id, name, description, front_end, back_end, price, created_at, updated_at) 
VALUES ( 2, 'Python', 'Python is an interpreted, high-level and general purpose programming language', false, true, 199.99, current_timestamp, current_timestamp );
INSERT INTO lessons (id, name, description, front_end, back_end, price, created_at, updated_at) 
VALUES ( 3, 'Javascript', 'Javascript is a programming language...', true, true, 99.99, current_timestamp, current_timestamp );
INSERT INTO lessons (id, name, description, front_end, back_end, price, created_at, updated_at) 
VALUES ( 4, 'Rust', 'Rust is a multi-paradigm programming language designed for systems programming', false, true, 499.99, current_timestamp, current_timestamp );
INSERT INTO lessons (id, name, description, front_end, back_end, price, created_at, updated_at) 
VALUES ( 5,'Golang', 'Go is a statically typed compiled programming language', false, true, 499.99, current_timestamp, current_timestamp );

CREATE TABLE students (
  id integer PRIMARY KEY,
  first_name character varying(255) NOT NULL,
  middle_name character varying(255),
  last_name character varying(255),
  age integer,
  location character varying(100)
);

INSERT INTO students (id, first_name, last_name, age, location) VALUES (1, 'Juan', 'Cruz', 18, 'Manila');
INSERT INTO students (id, first_name, last_name, age, location) VALUES (2, 'Anne', 'Wall', 20, 'Manila');
INSERT INTO students (id, first_name, last_name, age, location) VALUES (3, 'Theresa', 'Joseph', 21, 'Manila');
INSERT INTO students (id, first_name, last_name, age, location) VALUES (4, 'Isaac', 'Gray', 19, 'Laguna');
INSERT INTO students (id, first_name, last_name, age, location) VALUES (5, 'Zack', 'Matthews', 22, 'Marikina');

UPDATE students SET first_name = 'Ivan', last_name = 'Howard', age = 25, location = 'Bulacan' WHERE id = 1;
