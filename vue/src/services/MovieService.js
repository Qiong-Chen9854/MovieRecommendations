import axios from 'axios';

export default{
  getTopPickMovies(){
    return axios.get('/movies');
  }
}