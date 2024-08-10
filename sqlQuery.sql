SELECT *
FROM movie m
JOIN movie_genre mg ON mg.movie_id = m.movie_id
JOIN genre g ON g.genre_id = mg.genre_id
ORDER BY release_date DESC
LIMIT 10

SELECT m.movie_id,m.title,m.release_date,m.description,g.genre_name
FROM movie m
JOIN movie_genre mg ON mg.movie_id = m.movie_id
JOIN genre g ON g.genre_id = mg.genre_id
ORDER BY release_date DESC
LIMIT 10

SELECT p.person_id,mp.movie_id,p.first_name,p.last_name,p.role
FROM person p
JOIN movie_person mp ON mp.person_id = p.person_id
WHERE mp.movie_id = 14 AND p.role = 'Actor';