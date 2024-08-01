BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO movie (title, release_date, description) VALUES 
('The Shawshank Redemption', '1994-09-23', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.'),
('The Godfather', '1972-03-24', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.'),
('The Dark Knight', '2008-07-18', 'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.'),
('Pulp Fiction', '1994-10-14', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.'),
('Forrest Gump', '1994-07-06', 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal, and other historical events unfold from the perspective of an Alabama man with an IQ of 75.'),
('Inception', '2010-07-16', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO.'),
('The Matrix', '1999-03-31', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.'),
('Fight Club', '1999-10-15', 'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.'),
('Goodfellas', '1990-09-21', 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito.'),
('The Lord of the Rings: The Return of the King', '2003-12-17', 'Gandalf and Aragorn lead the World of Men against Sauron''s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.'),
('The Silence of the Lambs', '1991-02-14', 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to catch another serial killer, a madman who skins his victims.'),
('Schindler''s List', '1993-12-15', 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.'),
('The Lion King', '1994-06-15', 'Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.'),
('Gladiator', '2000-05-05', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.'),
('The Usual Suspects', '1995-08-16', 'A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which begin when five criminals meet at a random police lineup.'),
('Se7en', '1995-09-22', 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.'),
('Interstellar', '2014-11-07', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity''s survival.'),
('The Green Mile', '1999-12-10', 'The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.'),
('Braveheart', '1995-05-24', 'Scottish warrior William Wallace leads his countrymen in a rebellion to free his homeland from the tyranny of King Edward I of England.'),
('The Departed', '2006-10-06', 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.');

INSERT INTO genre (genre_name) VALUES 
('Drama'),
('Crime'),
('Action'),
('Adventure'),
('Thriller');


INSERT INTO person (first_name, last_name, role) VALUES 
('Morgan', 'Freeman', 'Actor'),
('Tim', 'Robbins', 'Actor'),
('Marlon', 'Brando', 'Actor'),
('Christian', 'Bale', 'Actor'),
('Robert', 'De Niro', 'Actor'),
('Leonardo', 'DiCaprio', 'Actor'),
('Matt', 'Damon', 'Actor'),
('Quentin', 'Tarantino', 'Director'),
('Christopher', 'Nolan', 'Director'),
('Steven', 'Spielberg', 'Director');

INSERT INTO movie_person (movie_id, person_id) VALUES 
(1, 1),  -- Morgan Freeman in The Shawshank Redemption
(1, 2),  -- Tim Robbins in The Shawshank Redemption
(2, 3),  -- Marlon Brando in The Godfather
(3, 4),  -- Christian Bale in The Dark Knight
(4, 8),  -- Quentin Tarantino directing Pulp Fiction
(5, 1),  -- Morgan Freeman in Forrest Gump
(6, 9),  -- Christopher Nolan directing Inception
(7, 6),  -- Leonardo DiCaprio in The Matrix
(8, 5),  -- Robert De Niro in Fight Club
(9, 5),  -- Robert De Niro in Goodfellas
(10, 10), -- Steven Spielberg directing The Lord of the Rings: The Return of the King
(11, 1), -- Morgan Freeman in The Silence of the Lambs
(12, 9), -- Christopher Nolan directing Schindler's List
(13, 6), -- Leonardo DiCaprio in The Lion King
(14, 5), -- Robert De Niro in Gladiator
(15, 8), -- Quentin Tarantino directing The Usual Suspects
(16, 6), -- Leonardo DiCaprio in Se7en
(17, 7), -- Matt Damon in Interstellar
(18, 1), -- Morgan Freeman in The Green Mile
(19, 4), -- Christian Bale in Braveheart
(20, 7); -- Matt Damon in The Departed
 
 
 INSERT INTO movie_genre (movie_id, genre_id) VALUES 
(1, 1),  -- The Shawshank Redemption is a Drama
(2, 2),  -- The Godfather is a Crime film
(3, 3),  -- The Dark Knight is an Action film
(4, 1),  -- Pulp Fiction is a Drama
(5, 1),  -- Forrest Gump is a Drama
(6, 3),  -- Inception is an Action film
(7, 4),  -- The Matrix is an Adventure film
(8, 2),  -- Fight Club is a Crime film
(9, 2),  -- Goodfellas is a Crime film
(10, 4), -- The Lord of the Rings: The Return of the King is an Adventure film
(11, 5), -- The Silence of the Lambs is a Thriller
(12, 1), -- Schindler's List is a Drama
(13, 4), -- The Lion King is an Adventure film
(14, 3), -- Gladiator is an Action film
(15, 5), -- The Usual Suspects is a Thriller
(16, 5), -- Se7en is a Thriller
(17, 4), -- Interstellar is an Adventure film
(18, 1), -- The Green Mile is a Drama
(19, 4), -- Braveheart is an Adventure film
(20, 5); -- The Departed is a Thriller
 
INSERT INTO user_favourite_movie (user_id, movie_id) VALUES 
(1, 1),  -- User 1 likes The Shawshank Redemption
(1, 3),  -- User 1 likes The Dark Knight
(1, 6),  -- User 1 likes Inception
(1, 7),  -- User 1 likes The Matrix
(1, 10), -- User 1 likes The Lord of the Rings: The Return of the King
(1, 18), -- User 1 likes The Green Mile
(2, 2),  -- User 2 likes The Godfather
(2, 9),  -- User 2 likes Goodfellas
(2, 14), -- User 2 likes Gladiator
(2, 20); -- User 2 likes The Departed
 
 
 INSERT INTO movie_comment (movie_id, comment_to_movie, user_id) VALUES 
(1, 'A masterpiece of storytelling.', 1),
(2, 'An iconic classic!', 2),
(3, 'An incredible movie with a great plot.', 1),
(4, 'Tarantino at his best.', 2),
(5, 'A heartwarming story.', 1),
(6, 'Mind-bending and thought-provoking.', 2),
(7, 'A revolutionary film in sci-fi.', 1),
(8, 'An intriguing story about the human psyche.', 2),
(9, 'Great portrayal of mob life.', 1),
(10, 'Epic in every sense of the word.', 2),
(11, 'Chilling and captivating.', 1),
(12, 'A poignant film on humanity.', 2),
(13, 'A beautiful animated classic.', 1),
(14, 'An epic historical drama.', 2),
(15, 'Keeps you guessing till the end.', 1),
(16, 'Dark and gripping.', 2),
(17, 'A visually stunning space journey.', 1),
(18, 'Emotionally powerful and moving.', 2),
(19, 'An inspiring story of bravery.', 1),
(20, 'A masterclass in storytelling and suspense.', 2);
 
COMMIT TRANSACTION;