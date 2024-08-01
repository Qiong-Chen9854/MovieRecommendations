BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);


-- create tables

DROP TABLE IF EXISTS movie_person, person, movie ;

CREATE TABLE movie(
	movie_id serial PRIMARY KEY,
	title varchar(225) NOT NULL,
	release_date date,
	description text
);

CREATE TABLE person(
	person_id serial PRIMARY KEY,
	first_name varchar(80),
	last_name varchar(80),
	role varchar(50)
);

CREATE TABLE movie_person(
	movie_id int,
	person_id int,
	PRIMARY KEY (movie_id,person_id),
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
	FOREIGN KEY (person_id) REFERENCES person(person_id)
)

COMMIT TRANSACTION;
