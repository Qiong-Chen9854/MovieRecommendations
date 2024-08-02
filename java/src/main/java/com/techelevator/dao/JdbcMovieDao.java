package com.techelevator.dao;

import com.techelevator.model.Movie;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.List;

public class JdbcMovieDao implements MovieDao{
    private JdbcTemplate jdbcTemplate;

    public JdbcMovieDao(DataSource dataSource){
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public List<Movie> getTenRecentMovies() {
        String sql = "SELECT m.movie_id,m.title,m.release_date,m.description,g.genre_name\n" +
                "FROM movie m\n" +
                "JOIN movie_genre mg ON mg.movie_id = m.movie_id\n" +
                "JOIN genre g ON g.genre_id = mg.genre_id\n" +
                "ORDER BY release_date DESC\n" +
                "LIMIT 10";
        return null;
    }
}
