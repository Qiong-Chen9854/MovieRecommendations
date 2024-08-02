package com.techelevator.model;

import java.time.LocalDate;
import java.util.List;
import java.util.Objects;

public class Movie {
    int movieId;
    String movieName;
    LocalDate publishDate;
    String description;
    String category;

    Person director;
    List<Person> actors;

    public Movie() {
    }

    public Movie(int movieId, String movieName, LocalDate publishDate, String description, String category, Person director, List<Person> actors) {
        this.movieId = movieId;
        this.movieName = movieName;
        this.publishDate = publishDate;
        this.description = description;
        this.category = category;
        this.director = director;
        this.actors = actors;
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public LocalDate getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(LocalDate publishDate) {
        this.publishDate = publishDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Person getDirector() {
        return director;
    }

    public void setDirector(Person director) {
        this.director = director;
    }

    public List<Person> getActors() {
        return actors;
    }

    public void setActors(List<Person> actors) {
        this.actors = actors;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Movie movie = (Movie) o;
        return movieId == movie.movieId && Objects.equals(movieName, movie.movieName) && Objects.equals(publishDate, movie.publishDate) && Objects.equals(description, movie.description) && Objects.equals(category, movie.category) && Objects.equals(director, movie.director) && Objects.equals(actors, movie.actors);
    }

    @Override
    public int hashCode() {
        return Objects.hash(movieId, movieName, publishDate, description, category, director, actors);
    }

    @Override
    public String toString() {
        return "Movie{" +
                "movieId=" + movieId +
                ", movieName='" + movieName + '\'' +
                ", publishDate=" + publishDate +
                ", description='" + description + '\'' +
                ", category='" + category + '\'' +
                ", director=" + director +
                ", actors=" + actors +
                '}';
    }
}
