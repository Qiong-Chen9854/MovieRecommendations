package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.model.Person;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

public class JdbcPersonDao implements PersonDao{
    private JdbcTemplate jdbcTemplate;

    public JdbcPersonDao(DataSource dataSource){
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }
    @Override
    public Person getDirectorByMovieIDAndRole(int movieId, String role) {
        Person director = null;
        String sql = "SELECT p.person_id,mp.movie_id,p.first_name,p.last_name,p.role\n" +
                "FROM person p\n" +
                "JOIN movie_person mp ON mp.person_id = p.person_id\n" +
                "WHERE mp.movie_id = ? AND p.role = ?";

        try{
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql,movieId,role);
            while(results.next()){
                director = mapRowToPerson(results);
            }
        } catch(CannotGetJdbcConnectionException e){
            throw new DaoException("Unable to connect to server or database",e);
        }
        return director;
    }

    @Override
    public List<Person> getActorsByMovieIdAndRole(int movieId, String role) {
        List<Person> actors = new ArrayList<>();
        String sql = "SELECT p.person_id,mp.movie_id,p.first_name,p.last_name,p.role\n" +
                "FROM person p\n" +
                "JOIN movie_person mp ON mp.person_id = p.person_id\n" +
                "WHERE mp.movie_id = ? AND p.role = ?";

        try{
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql,movieId,role);
            while(results.next()){
                actors.add(mapRowToPerson(results);
            }
        } catch(CannotGetJdbcConnectionException e){
            throw new DaoException("Unable to connect to server or database",e);
        }
        return actors;
    }


    private Person mapRowToPerson(SqlRowSet row){
        Person person = new Person();
        person.setPersonId(row.getInt("person_id"));
        person.setMovieId(row.getInt("movie_id"));
        person.setPersonName(row.getString("first_name") + " " + row.getString("last_name"));
        person.setRole(row.getString("role"));

        return person;
    }
}
