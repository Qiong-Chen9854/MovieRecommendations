<template>
  <h1>Hot Movie Pick: </h1>
  <div id="movieList">
    <Movie v-for="currentMovie in movies" v-bind:key="currentMovie.movieId" v-bind:movie="currentMovie" />
  </div>
  
</template>
<script>
import Movie from './Movie.vue';

export default{
  components:{
    Movie,
  },

  computed:{
    movies(){
      return this.$store.state.moviesTopPick;
    }
  },
  created(){
    this.$store.dispatch('getMovieTopPick');
  }
}
</script>

<style>
#movieList{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-evenly;
  margin-top: 12px;
  gap:12px;
}
</style>