package com.techelevator.controller;

import com.techelevator.dao.MovieDao;
import com.techelevator.dao.PersonDao;
import com.techelevator.model.Movie;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin
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

    @RequestMapping(path="/movies/id", method=RequestMethod.GET)
    public Movie getMovieById(@PathVariable int id){
        return movieDao.getMovieByMovieId(id);
    }
}
