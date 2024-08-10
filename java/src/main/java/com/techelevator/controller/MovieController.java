package com.techelevator.controller;

import com.techelevator.dao.MovieDao;
import com.techelevator.dao.PersonDao;
import com.techelevator.model.Movie;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class MovieController {
    private MovieDao movieDao;
    private PersonDao personDao;
    public MovieController(MovieDao movieDao,PersonDao personDao){
        this.movieDao = movieDao;
        this.personDao = personDao;
    }

    @RequestMapping(path="/movies", method= RequestMethod.GET)
    public List<Movie> getTopPickMovie(){
        return movieDao.getTenRecentMovies();
    }
}
