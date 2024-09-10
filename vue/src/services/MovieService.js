import axios from 'axios';

export default{
  getTopPickMovies(){
    return axios.get('/movies');
  },
  getSingleMovieById(id){
    return axios.get(`/movies/${id}`);
  }
}