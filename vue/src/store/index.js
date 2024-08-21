import { createStore as _createStore } from 'vuex';
import axios from 'axios';
import MovieService from '../services/MovieService';

export function createStore(currentToken, currentUser) {
  let store = _createStore({
    state: {
      token: currentToken || '',
      user: currentUser || {},
      moviesTopPick:{},
      singleMovie:{},
    },
    actions:{
      getMovieTopPick(context){
        MovieService.getTopPickMovies().then(response => {
          context.commit('SET_MOVIES_TOP_PICK', response.data);
        })
        .catch(err => console.error(err));
      }
    },
    mutations: {
      SET_MOVIES_TOP_PICK(state,movies){
        state.moviesTopPick = movies;
      },
      SET_AUTH_TOKEN(state, token) {
        state.token = token;
        localStorage.setItem('token', token);
        axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
      },
      SET_USER(state, user) {
        state.user = user;
        localStorage.setItem('user', JSON.stringify(user));
      },
      LOGOUT(state) {
        localStorage.removeItem('token');
        localStorage.removeItem('user');
        state.token = '';
        state.user = {};
        axios.defaults.headers.common = {};
      }
    },
  });
  return store;
}
