package com.techelevator.model;

import java.util.List;
import java.util.Objects;

public class MovieComment {
    int movieId;
    List<String> movieComments;

    public MovieComment() {
    }

    public MovieComment(int movieId, List<String> movieComments) {
        this.movieId = movieId;
        this.movieComments = movieComments;
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public List<String> getMovieComments() {
        return movieComments;
    }

    public void setMovieComments(List<String> movieComments) {
        this.movieComments = movieComments;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        MovieComment that = (MovieComment) o;
        return movieId == that.movieId && Objects.equals(movieComments, that.movieComments);
    }

    @Override
    public int hashCode() {
        return Objects.hash(movieId, movieComments);
    }

    @Override
    public String toString() {
        return "MovieComment{" +
                "movieId=" + movieId +
                ", movieComments=" + movieComments +
                '}';
    }
}
