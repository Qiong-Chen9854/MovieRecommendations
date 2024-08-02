package com.techelevator.dao;

import com.techelevator.model.Person;

import java.util.List;

public interface PersonDao {
    Person getDirectorByMovieIDAndRole(int movieId, String role);
    List<Person> getActorsByMovieIdAndRole(int movieId, String role);
}
