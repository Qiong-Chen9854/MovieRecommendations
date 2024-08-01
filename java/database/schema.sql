BEGIN TRANSACTION;

DROP TABLE IF EXISTS movie_person, movie_genre,genre, person, user_favourite_movie,movie_comment,movie,users;

CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);


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
);

CREATE TABLE genre(
	genre_id serial PRIMARY KEY,
	genre_name varchar(50)
);

CREATE TABLE movie_genre(
	movie_id int,
	genre_id int,
	PRIMARY KEY (movie_id, genre_id),
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
	FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);

CREATE TABLE user_favourite_movie(
	user_id int,
	movie_id int,
	PRIMARY KEY (user_id,movie_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE movie_comment(
	comment_id serial PRIMARY KEY,
	movie_id int,
	comment_to_movie text,
	user_id int,
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);


COMMIT TRANSACTION;