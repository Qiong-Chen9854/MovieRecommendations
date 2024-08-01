BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

-- Insert movies
INSERT INTO movie (title, release_date, description) VALUES 
('Dune', '2021-10-22', 'Paul Atreides leads nomadic tribes in a battle to control the desert planet Arrakis.'),
('Avatar: The Way of Water', '2022-12-16', 'Jake Sully lives with his newfound family formed on the extrasolar moon Pandora.'),
('Spider-Man: No Way Home', '2021-12-17', 'Peter Parker seeks Doctor Strange’s help to make people forget he’s Spider-Man.'),
('The Batman', '2022-03-04', 'Batman uncovers corruption in Gotham City that connects to his own family.'),
('Top Gun: Maverick', '2022-05-27', 'Pete Mitchell confronts ghosts of his past while training a new squad of Top Gun graduates.'),
('Black Panther: Wakanda Forever', '2022-11-11', 'The people of Wakanda fight to protect their home from intervening world powers.'),
('No Time to Die', '2021-10-08', 'James Bond has left active service. His peace is short-lived when Felix Leiter enlists his help.'),
('Jurassic World: Dominion', '2022-06-10', 'Dinosaurs now live—and hunt—alongside humans all over the world.'),
('Doctor Strange in the Multiverse of Madness', '2022-05-06', 'Doctor Strange, with the help of allies, traverses the mind-bending and dangerous alternate realities of the Multiverse to confront a mysterious new adversary.'),
('Thor: Love and Thunder', '2022-07-08', 'Thor enlists the help of Valkyrie, Korg, and Jane Foster to fight Gorr the God Butcher.'),
('Guardians of the Galaxy Vol. 3', '2023-05-05', 'The Guardians of the Galaxy try to make the universe a better place.'),
('The Flash', '2023-06-16', 'Barry Allen travels back in time to prevent his mother’s murder, which traps him in an alternate reality without metahumans.'),
('Oppenheimer', '2023-07-21', 'The story of American scientist J. Robert Oppenheimer and his role in the development of the atomic bomb.'),
('Mission: Impossible – Dead Reckoning Part One', '2023-07-14', 'Ethan Hunt and his IMF team must track down a terrifying new weapon that threatens all of humanity.'),
('Fast X', '2023-05-19', 'Dom Toretto and his family must face the most lethal opponent they’ve ever encountered.'),
('Indiana Jones and the Dial of Destiny', '2023-06-30', 'Daredevil archaeologist Indiana Jones races against time to retrieve a legendary artifact.'),
('The Marvels', '2023-11-10', 'Captain Marvel, Monica Rambeau, and Ms. Marvel team up in an adventure.'),
('Dungeons & Dragons: Honor Among Thieves', '2023-03-31', 'A charming thief and a band of unlikely adventurers embark on an epic quest to retrieve a lost relic.'),
('The Matrix Resurrections', '2021-12-22', 'Return to a world of two realities: one, everyday life; the other, what lies behind it.'),
('Tenet', '2020-08-26', 'A secret agent embarks on a dangerous, time-bending mission to prevent the start of World War III.');

-- Insert genres
INSERT INTO genre (genre_name) VALUES 
('Science Fiction'),
('Action'),
('Adventure'),
('Thriller'),
('Fantasy');

-- Insert people
INSERT INTO person (first_name, last_name, role) VALUES 
('Denis', 'Villeneuve', 'Director'),
('Chloe', 'Zhao', 'Director'),
('Tom', 'Holland', 'Actor'),
('Matt', 'Reeves', 'Director'),
('Tom', 'Cruise', 'Actor'),
('Letitia', 'Wright', 'Actor'),
('Daniel', 'Craig', 'Actor'),
('Colin', 'Trevorrow', 'Director'),
('Benedict', 'Cumberbatch', 'Actor'),
('Chris', 'Hemsworth', 'Actor'),
('James', 'Gunn', 'Director'),
('Ezra', 'Miller', 'Actor'),
('Christopher', 'Nolan', 'Director'),
('Hayley', 'Atwell', 'Actor'),
('Vin', 'Diesel', 'Actor'),
('Harrison', 'Ford', 'Actor'),
('Brie', 'Larson', 'Actor'),
('Chris', 'Pine', 'Actor'),
('Keanu', 'Reeves', 'Actor'),
('John', 'David', 'Actor');

-- Associate movies with people
INSERT INTO movie_person (movie_id, person_id) VALUES 
(1, 1),  -- Denis Villeneuve directed Dune
(2, 3),  -- Tom Holland starred in Avatar: The Way of Water
(3, 3),  -- Tom Holland starred in Spider-Man: No Way Home
(4, 4),  -- Matt Reeves directed The Batman
(5, 5),  -- Tom Cruise starred in Top Gun: Maverick
(6, 6),  -- Letitia Wright starred in Black Panther: Wakanda Forever
(7, 7),  -- Daniel Craig starred in No Time to Die
(8, 8),  -- Colin Trevorrow directed Jurassic World: Dominion
(9, 9),  -- Benedict Cumberbatch starred in Doctor Strange in the Multiverse of Madness
(10, 10),  -- Chris Hemsworth starred in Thor: Love and Thunder
(11, 11),  -- James Gunn directed Guardians of the Galaxy Vol. 3
(12, 12),  -- Ezra Miller starred in The Flash
(13, 13),  -- Christopher Nolan directed Oppenheimer
(14, 14),  -- Hayley Atwell starred in Mission: Impossible – Dead Reckoning Part One
(15, 15),  -- Vin Diesel starred in Fast X
(16, 16),  -- Harrison Ford starred in Indiana Jones and the Dial of Destiny
(17, 17),  -- Brie Larson starred in The Marvels
(18, 18),  -- Chris Pine starred in Dungeons & Dragons: Honor Among Thieves
(19, 19),  -- Keanu Reeves starred in The Matrix Resurrections
(20, 20);  -- John David starred in Tenet

-- Associate movies with genres
INSERT INTO movie_genre (movie_id, genre_id) VALUES 
(1, 1),  -- Dune is Science Fiction
(2, 1),  -- Avatar: The Way of Water is Science Fiction
(3, 2),  -- Spider-Man: No Way Home is Action
(4, 2),  -- The Batman is Action
(5, 3),  -- Top Gun: Maverick is Adventure
(6, 3),  -- Black Panther: Wakanda Forever is Adventure
(7, 2),  -- No Time to Die is Action
(8, 1),  -- Jurassic World: Dominion is Science Fiction
(9, 1),  -- Doctor Strange in the Multiverse of Madness is Science Fiction
(10, 3), -- Thor: Love and Thunder is Adventure
(11, 3), -- Guardians of the Galaxy Vol. 3 is Adventure
(12, 2), -- The Flash is Action
(13, 4), -- Oppenheimer is Thriller
(14, 3), -- Mission: Impossible – Dead Reckoning Part One is Adventure
(15, 2), -- Fast X is Action
(16, 3), -- Indiana Jones and the Dial of Destiny is Adventure
(17, 1), -- The Marvels is Science Fiction
(18, 1), -- Dungeons & Dragons: Honor Among Thieves is Fantasy
(19, 1), -- The Matrix Resurrections is Science Fiction
(20, 4); -- Tenet is Thriller

-- Associate user favorite movies
INSERT INTO user_favourite_movie (user_id, movie_id) VALUES 
(1, 1),  -- User 1 likes Dune
(1, 5),  -- User 1 likes Top Gun: Maverick
(1, 9),  -- User 1 likes Doctor Strange in the Multiverse of Madness
(1, 11), -- User 1 likes Guardians of the Galaxy Vol. 3
(1, 15), -- User 1 likes Fast X
(2, 2),  -- User 2 likes Avatar: The Way of Water
(2, 6),  -- User 2 likes Black Panther: Wakanda Forever
(2, 12), -- User 2 likes The Flash
(2, 18), -- User 2 likes Dungeons & Dragons: Honor Among Thieves
(2, 20); -- User 2 likes Tenet

-- Insert movie comments
INSERT INTO movie_comment (movie_id, comment_to_movie, user_id) VALUES 
(1, 'An epic sci-fi masterpiece!', 1),
(2, 'Visually stunning and emotionally resonant.', 2),
(3, 'A thrilling and emotional ride.', 1),
(4, 'A dark and gripping take on Batman.', 1),
(5, 'Amazing aerial sequences!', 2),
(6, 'A worthy sequel with powerful performances.', 1),
(7, 'A fitting end to Daniel Craig''s Bond.', 1),
(8, 'Dinosaurs like never before!', 2),
(9, 'Mind-bending and visually spectacular.', 1),
(10, 'Funny and action-packed.', 2),
(11, 'A fantastic addition to the series.', 1),
(12, 'A fresh and exciting take on The Flash.', 2),
(13, 'Gripping and thought-provoking.', 1),
(14, 'Non-stop action and intrigue.', 2),
(15, 'Explosive and thrilling.', 1),
(16, 'A nostalgic and exciting adventure.', 2),
(17, 'A cosmic adventure with heart.', 1),
(18, 'A fun and fantastical ride.', 2),
(19, 'A mind-bending return to the Matrix.', 1),
(20, 'Incredible action and storytelling.', 2);



COMMIT TRANSACTION;