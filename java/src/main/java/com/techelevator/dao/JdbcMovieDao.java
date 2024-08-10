package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.model.Movie;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcMovieDao implements MovieDao{
    private JdbcTemplate jdbcTemplate;
    private PersonDao personDao;

    public JdbcMovieDao(DataSource dataSource,PersonDao personDao){
        this.jdbcTemplate = new JdbcTemplate(dataSource);
        this.personDao = personDao;
    }

    @Override
    public List<Movie> getTenRecentMovies() {
        List<Movie> movies = new ArrayList<>();
        String sql = "SELECT m.movie_id,m.title,m.release_date,m.description,g.genre_name\n" +
                "FROM movie m\n" +
                "JOIN movie_genre mg ON mg.movie_id = m.movie_id\n" +
                "JOIN genre g ON g.genre_id = mg.genre_id\n" +
                "ORDER BY release_date DESC\n" +
                "LIMIT 10";

        try{
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
            while(results.next()){
                movies.add(mapRowToMovie(results));

            }
        }catch(CannotGetJdbcConnectionException e){
            throw new DaoException("Unable to connect to server or database",e);
        }

        return movies;
    }

    private Movie mapRowToMovie(SqlRowSet row){
        Movie movie = new Movie();
        movie.setMovieId(row.getInt("movie_id"));
        movie.setMovieName(row.getString("title"));
        movie.setPublishDate(row.getDate("release_date").toLocalDate());
        movie.setDescription(row.getString("description"));
        movie.setCategory(row.getString("genre_name"));
        movie.setDirector(personDao.getDirectorByMovieIDAndRole(movie.getMovieId(),"Director" ));
        movie.setActors(personDao.getActorsByMovieIdAndRole(movie.getMovieId(), "Actor"));
        return movie;
    }


}
