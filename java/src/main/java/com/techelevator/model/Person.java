package com.techelevator.model;

import java.util.Objects;

public class Person {
    int personId;
    int movieId;
    String personName;
    String role;

    public Person(){};
    public Person(int personId, int movieId,String personName,String role){
        this.personId = personId;
        this.movieId = movieId;
        this.personName = personName;
        this.role = role;
    }


    public int getPersonId() {
        return personId;
    }

    public void setPersonId(int personId) {
        this.personId = personId;
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public String getPersonName() {
        return personName;
    }

    public void setPersonName(String personName) {
        this.personName = personName;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Person person = (Person) o;
        return personId == person.personId && movieId == person.movieId && Objects.equals(personName, person.personName) && Objects.equals(role, person.role);
    }

    @Override
    public int hashCode() {
        return Objects.hash(personId, movieId, personName, role);
    }

    @Override
    public String toString() {
        return "Person{" +
                "personId=" + personId +
                ", movieId=" + movieId +
                ", personName='" + personName + '\'' +
                ", role='" + role + '\'' +
                '}';
    }
}
