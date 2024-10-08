package com.techelevator.dao;

import com.techelevator.model.Movie;

import java.util.List;

public interface MovieDao {
    List<Movie> getTenRecentMovies();
    Movie getMovieByMovieId(int movieId);
}
