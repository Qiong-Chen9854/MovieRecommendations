package com.techelevator.model;

import java.util.List;
import java.util.Objects;

public class FavouriteMovie {
    int userId;
    List<Movie> favouriteMovies;


    public FavouriteMovie() {
    }

    public FavouriteMovie(int userId, List<Movie> favouriteMovies) {
        this.userId = userId;
        this.favouriteMovies = favouriteMovies;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public List<Movie> getFavouriteMovies() {
        return favouriteMovies;
    }

    public void setFavouriteMovies(List<Movie> favouriteMovies) {
        this.favouriteMovies = favouriteMovies;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        FavouriteMovie that = (FavouriteMovie) o;
        return userId == that.userId && Objects.equals(favouriteMovies, that.favouriteMovies);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userId, favouriteMovies);
    }

    @Override
    public String toString() {
        return "FavouriteMovie{" +
                "userId=" + userId +
                ", favouriteMovies=" + favouriteMovies +
                '}';
    }
}
